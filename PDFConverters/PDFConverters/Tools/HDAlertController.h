//
//  HDAlertController.h
//  BabyName
//
//  Created by hudun on 2018/4/8.
//  Copyright © 2018年 hdgame. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HDAlertController : NSObject

/**
 创建alertController
 
 @param title 大标题
 @param message 描述
 @param firstTitle 按钮一的标题
 @param firstAction 按钮一的事件
 @param secondTitle 按钮二的标题
 @param secoendAction 按钮二的事件
 @return UIAlertController 对象
 */
+ (UIAlertController *)createAlertViewWithTitle:(NSString *)title message:(NSString *)message firstTitle:(NSString *)firstTitle firstAction:(void(^)(UIAlertAction *action1))firstAction secondTitle:(NSString *)secondTitle secondAction:(void(^)(UIAlertAction *action2))secoendAction;


/**
 创建只有一个button的AlertController
 
 @param title 标题
 @param message 描述
 @param buttonTitle 按钮标题
 @param action 按钮事件
 @return UIAlertController 对象
 */
+ (UIAlertController *)createOneButtonAlertViewWithTitle:(NSString *)title message:(NSString *)message buttonTitle:(NSString *)buttonTitle buttonAction:(void(^)(UIAlertAction *action))action;

@end
