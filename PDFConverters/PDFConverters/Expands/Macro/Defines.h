//
//  Defines.h
//  PDFConverters
//
//  Created by 互盾 on 2018/7/27.
//  Copyright © 2018年 互盾. All rights reserved.
//

#ifndef Defines_h
#define Defines_h


#endif /* Defines_h */


//常用的正则表达式

//手机号
static NSString *const REX_Tel = @"^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\\d{8}$";
//邮箱
static NSString *const REX_Email = @"^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$";


//NSUserDefault中的字段
static NSString *const UD_myCookie = @"my_cookie";

//获取myCookie
NS_INLINE NSString * GetMyCookie() {
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    return [ud valueForKey:UD_myCookie];
}

//根据error信息，获得网络请求的错误信息
NS_INLINE NSString * GetHttpErrorInfoWithError (NSError *error) {
    NSLog(@"code = %ld,error info = %@",error.code,[error localizedDescription]);
    NSString *tips;
    switch (error.code) {
        case -1001:
            //超时
            tips = @"请求超时，请检查您的网络状态";
            break;
        case -1005:
            //网络错误
            tips = @"网络失去连接，请检查您的网络连接";
            break;
        case -1009:
            //脱机
            tips = @"数据请求失败，请检查您的网络设置";
            break;
        default:
            tips = @"数据请求失败，请重新尝试请求数据";
            break;
    }
    return tips;
}


//判断是否是iPhone X
#define IS_IPHONEX (([[UIScreen mainScreen] bounds].size.height-812) ? NO : YES)
//状态栏的高度
#define kStatusBarHeight (IS_IPHONEX ? 44.f : 20.f)
//导航条的高度
#define kNavigationBarHeight 44.f
//tabbar的高度
#define kTabbarHeight (IS_IPHONEX ? (49.f+34.f) : 49.f)
//tabbar距离底部的高度
#define kTabbarSafeBottomMargin (IS_IPHONEX ? 34.f : 0.f)
//导航条加状态栏的高度
#define kStatusBarAndNavigationBarHeight (IS_IPHONEX ? 88.f : 64.f)

//计算当前设备的屏幕宽度基于设计图的屏幕宽度的比例
#define kAutoScaleX kScreenWidth/375.f

//计算当前设备的屏幕高度基于设计图的屏幕高度的比例
#define kAutoScaleY kScreenHeight/667.f
