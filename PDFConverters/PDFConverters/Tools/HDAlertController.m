//
//  HDAlertController.m
//  BabyName
//
//  Created by hudun on 2018/4/8.
//  Copyright © 2018年 hdgame. All rights reserved.
//

#import "HDAlertController.h"

@implementation HDAlertController

+ (UIAlertController *)createAlertViewWithTitle:(NSString *)title message:(NSString *)message firstTitle:(NSString *)firstTitle firstAction:(void(^)(UIAlertAction *action1))firstAction secondTitle:(NSString *)secondTitle secondAction:(void(^)(UIAlertAction *action2))secoendAction {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *actionOne = [UIAlertAction actionWithTitle:firstTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        if (firstAction) {
            firstAction(action);
        }
    }];
    UIAlertAction *actionTwo = [UIAlertAction actionWithTitle:secondTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (secoendAction) {
            secoendAction(action);
        }
    }];
    [alertController addAction:actionOne];
    [alertController addAction:actionTwo];
    
    return alertController;
}

+ (UIAlertController *)createOneButtonAlertViewWithTitle:(NSString *)title message:(NSString *)message buttonTitle:(NSString *)buttonTitle buttonAction:(void(^)(UIAlertAction *action))buttonAction {
    UIAlertController *controller = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *onlyAction = [UIAlertAction actionWithTitle:buttonTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (buttonAction) {
            buttonAction(action);
        }
    }];

    [controller addAction:onlyAction];
    return controller;
}

@end
