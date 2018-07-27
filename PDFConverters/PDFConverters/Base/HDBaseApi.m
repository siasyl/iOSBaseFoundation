//
//  HDBaseApi.m
//  BabyName
//
//  Created by hudun on 2018/5/16.
//  Copyright © 2018年 hdgame. All rights reserved.
//

#import "HDBaseApi.h"

@interface HDBaseApi() {
    id _parameters;
    NSString *_urlString;
}

@end

@implementation HDBaseApi

- (instancetype)initWithUrlStirng:(NSString *)urlString parameters:(id)parameters {
    if (self = [super init]) {
        _parameters = parameters;
        _urlString = urlString;
    }
    return self;
}

- (NSString *)requestUrl {
    return _urlString;
}

- (id)requestArgument {
    return _parameters;
}

- (NSTimeInterval)requestTimeoutInterval {
    return HD_NetworkTimeoutInterval;
}

- (YTKRequestMethod)requestMethod {
    return YTKRequestMethodGET;
}


@end
