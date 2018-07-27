//
//  UIColor+HDUtil.h
//  PDFConverters
//
//  Created by 互盾 on 2018/7/27.
//  Copyright © 2018年 互盾. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (HDUtil)


/**常用占位符灰色*/
+ (UIColor *)HDPlaceholderColor;
/**分割线颜色*/
+ (UIColor *)HDSeparatorLineColor;
/**常用的背景颜色*/
+ (UIColor *)HDBackGroudColor;
/**阴影颜色*/
+ (UIColor *)HDShadowColor;
/**不可点击的按钮的颜色*/
+ (UIColor *)HDDisabledButtonColor;


/**
 根据整数的rgb值生成一个颜色
 
 @param r 红
 @param g 绿
 @param b 蓝
 @return 色值
 */
+ (UIColor *)HDRGBColorWithR:(int)r G:(int)g B:(int)b;


/**
 根据整数的rgb值加透明度生成一个颜色
 
 @param r 红
 @param g 绿
 @param b 蓝
 @param alpha 透明度
 @return 色值
 */
+ (UIColor *)HDRGBColorWithR:(int)r G:(int)g B:(int)b alpha:(float)alpha;


/**
 *  16进制设置颜色（可以设置透明度）
 *
 *  @param hexValue 16进制色值
 *  @param alpha    透明度
 *
 *  @return 具体颜色
 */
+ (UIColor *)colorWithHex:(int)hexValue alpha:(CGFloat)alpha;

/**
 *  16进制设置颜色(透明度为1)
 *
 *  @param hexValue 16进制色值
 *
 *  @return 具体颜色
 */
+ (UIColor *)colorWithHex:(int)hexValue;

@end
