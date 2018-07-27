//
//  HDBaseViewController.m
//  PDFConverters
//
//  Created by 互盾 on 2018/7/27.
//  Copyright © 2018年 互盾. All rights reserved.
//

#import "HDBaseViewController.h"

@interface HDBaseViewController () <UIGestureRecognizerDelegate>

@end

@implementation HDBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBar.translucent = NO;
    [self setNavigationBar];
}

#pragma mark 设置返回按钮
- (void)setNavigationBar {
    self.navigationController.interactivePopGestureRecognizer.delegate = self;
    //如果是第一级控制器，隐藏返回按钮
    if (self.navigationController.childViewControllers.count == 1) return;
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"icon_BACK"] style:UIBarButtonItemStylePlain target:self action:@selector(leftNavigationItemAction)];
    self.navigationItem.leftBarButtonItem = backItem;
}

#pragma mark 点击返回按钮
- (void)leftNavigationItemAction {
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark 获取展示hud的view，如果有self.navigationController.view就展示，否则展示self.view
- (UIView *)getHudShowView {
    UIView *view = self.navigationController.view ? self.navigationController.view : self.view;
    return view;
}

#pragma mark 展示加载框
- (void)hudShowLoading {
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    hud.mode = MBProgressHUDModeIndeterminate;
    [hud showAnimated:YES];
}

#pragma mark 隐藏提示框
- (void)hudHideAction {
    //    [MBProgressHUD hideHUDForView:self.navigationController.view animated:YES];
    [MBProgressHUD hideHUDForView:self.view animated:YES];
}

#pragma mark 提示文字一定时间
- (void)hudShowTextOnlyWithString:(NSString *)string TimeInterval:(NSTimeInterval)timeInterval {
    [self hudHideAction];
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    hud.mode = MBProgressHUDModeText;
    [hud showAnimated:YES];
    hud.label.text = string;
    [hud hideAnimated:YES afterDelay:timeInterval];
}

#pragma mark 提示文字
- (void)hudShowTextOnly:(NSString *)string {
    [self hudShowTextOnlyWithString:string TimeInterval:HD_TextHUDshowTimeInterval];
}

#pragma mark 提示请求返回的msg
- (void)hudShowRequestMsg:(YTKRequest *)request {
    if ([request.responseObject[@"msg"] length]) {
        [self hudShowTextOnly:request.responseObject[@"msg"]];
    }
}

#pragma mark 根据网络请求的error code 提示对应的文字
- (void)hudShowHttpErrorInfoWithError:(NSError *)error {
    [self hudShowTextOnlyWithString:GetHttpErrorInfoWithError(error) TimeInterval:HD_TextHUDshowTimeInterval];
}

- (void)dealloc {
    NSLog(@"%@(%@)页面执行dealloc方法",self.navigationItem.title,NSStringFromClass([self class]));
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
