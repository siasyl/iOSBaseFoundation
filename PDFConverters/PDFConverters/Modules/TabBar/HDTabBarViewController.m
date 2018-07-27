//
//  HDTabBarViewController.m
//  PDFConverters
//
//  Created by 互盾 on 2018/7/27.
//  Copyright © 2018年 互盾. All rights reserved.
//

#import "HDTabBarViewController.h"

@interface HDTabBarViewController ()

@end

@implementation HDTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self addChildControllers];
}

- (void)addChildControllers {
    NSArray *namesArray = @[@"Convert",@"Files",@"Mine"];
    NSArray *imagesArray = @[@"",@"",@""];
    NSArray *selectedImagesArray = @[@"",@"",@""];
    NSArray *titlesArray = @[@"转换",@"文件",@"我的"];
    NSMutableArray *controllersArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < namesArray.count; i++) {
        UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:titlesArray[i] image:[[UIImage imageNamed:imagesArray[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:selectedImagesArray[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
//        [item setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blackColor]} forState:UIControlStateNormal];
        NSString *controllerName = [NSString stringWithFormat:@"HD%@ViewController",namesArray[i]];
        Class cls = NSClassFromString(controllerName);
        UIViewController *controller = [[cls alloc] init];
        UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:controller];
        navi.tabBarItem = item;
        [controllersArray addObject:navi];
    }
    self.viewControllers = controllersArray;
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
