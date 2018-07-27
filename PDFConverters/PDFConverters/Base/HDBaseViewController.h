//
//  HDBaseViewController.h
//  PDFConverters
//
//  Created by 互盾 on 2018/7/27.
//  Copyright © 2018年 互盾. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MBProgressHUD.h"


@interface HDBaseViewController : UIViewController

/**展示加载框*/
- (void)hudShowLoading;
/**隐藏提示框*/
- (void)hudHideAction;
/**提示文字一定时间*/
- (void)hudShowTextOnlyWithString:(NSString *)string TimeInterval:(NSTimeInterval)timeInterval;
/**提示文字(1s)*/
- (void)hudShowTextOnly:(NSString *)string;
/**根据网络请求的 error code 提示对应的文字*/
- (void)hudShowHttpErrorInfoWithError:(NSError *)error;
/**提示网络请求返回的msg*/
- (void)hudShowRequestMsg:(YTKRequest *)request;
//设置导航条
- (void)setNavigationBar;
//点击返回按钮
- (void)leftNavigationItemAction;

@end
