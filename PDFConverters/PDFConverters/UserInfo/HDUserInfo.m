//
//  HDUserInfo.m
//  PDFConverters
//
//  Created by 互盾 on 2018/7/27.
//  Copyright © 2018年 互盾. All rights reserved.
//

#import "HDUserInfo.h"

#import "NSObject+YYModel.h"

#define kEncodedObjectPath_User ([[NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES) firstObject] stringByAppendingPathComponent:@"user"])  //将用户的信息，存储到Library文件中

@implementation HDUserInfo

+ (HDUserInfo *)sharedUserInfo {
    static HDUserInfo *userInfo = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if ([HDUserInfo isLogIn]) {
            userInfo = [NSKeyedUnarchiver unarchiveObjectWithFile:kEncodedObjectPath_User];
        } else {
            userInfo = [[HDUserInfo alloc] init];
        }
    });
    return userInfo;
}

+ (BOOL)synchronize {
    return [NSKeyedArchiver archiveRootObject:[HDUserInfo sharedUserInfo] toFile:kEncodedObjectPath_User];
}

+ (BOOL)isLogIn {
    NSFileManager *fileManager = [NSFileManager defaultManager];
    return [fileManager fileExistsAtPath:kEncodedObjectPath_User];
}

+ (BOOL)logout {
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSError *error;
    BOOL result = [fileManager removeItemAtPath:kEncodedObjectPath_User error:&error];
    if(!result){
        
    }
    [[NSUserDefaults standardUserDefaults] setValue:@"" forKey:UD_myCookie];
    return result;
}

//把一个对象从解码器中取出
- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self) {
        [self yy_modelInitWithCoder:aDecoder];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [self yy_modelEncodeWithCoder:aCoder];
}

@end
