//
//  HDBaseTableViewController.h
//  PDFConverters
//
//  Created by 互盾 on 2018/7/27.
//  Copyright © 2018年 互盾. All rights reserved.
//

#import "HDBaseViewController.h"


@interface HDBaseTableViewController : HDBaseViewController <UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, assign) UITableViewStyle tableViewStyle;

/**设置不让自动调整safeArea*/
- (void)setSafeAreaModeNever;



@end
