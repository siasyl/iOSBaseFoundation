//
//  HDBaseApi.h
//  BabyName
//
//  Created by hudun on 2018/5/16.
//  Copyright © 2018年 hdgame. All rights reserved.
//

#import "YTKBaseRequest.h"

@interface HDBaseApi : YTKBaseRequest

- (instancetype)initWithUrlStirng:(NSString *)urlString parameters:(id)parameters;

@end
