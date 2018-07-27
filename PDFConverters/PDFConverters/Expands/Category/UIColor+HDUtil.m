//
//  UIColor+HDUtil.m
//  PDFConverters
//
//  Created by 互盾 on 2018/7/27.
//  Copyright © 2018年 互盾. All rights reserved.
//

#import "UIColor+HDUtil.h"

@implementation UIColor (HDUtil)


#pragma mark 十六进制数值设置颜色
+ (UIColor *)colorWithHex:(int)hexValue alpha:(CGFloat)alpha {
    return [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0
                           green:((float)((hexValue & 0xFF00) >> 8))/255.0
                            blue:((float)(hexValue & 0xFF))/255.0
                           alpha:alpha];
}

#pragma mark 十六进制数值设置颜色
+ (UIColor *)colorWithHex:(int)hexValue {
    return [UIColor colorWithHex:hexValue alpha:1.0];
}


#pragma mark 常用占位符灰色
+ (UIColor *)HDPlaceholderColor {
    return [UIColor HDRGBColorWithR:79 G:72 B:72 alpha:0.5];
}

#pragma mark 常用的背景颜色
+ (UIColor *)HDBackGroudColor {
    return [UIColor HDRGBColorWithR:241 G:241 B:241];
}

#pragma mark 分割线颜色
+ (UIColor *)HDSeparatorLineColor {
    return [UIColor colorWithHexString:@"#c8c8c8"];
}

#pragma mark 阴影颜色
+ (UIColor *)HDShadowColor {
    return [UIColor colorWithHexString:@"#747474"];
}

#pragma mark 不可点击按钮的颜色
+ (UIColor *)HDDisabledButtonColor {
    return [UIColor HDRGBColorWithR:161 G:161 B:161];
}

+ (UIColor *)HDRGBColorWithR:(int)r G:(int)g B:(int)b {
    return [UIColor HDRGBColorWithR:r G:g B:b alpha:1];
}

+ (UIColor *)HDRGBColorWithR:(int)r G:(int)g B:(int)b alpha:(float)alpha {
    return [UIColor colorWithRed:r/255.f green:g/255.f blue:b/255.f alpha:alpha];
}

@end
