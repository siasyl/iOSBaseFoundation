//
//  NSString+HDUtil.h
//  PDFConverters
//
//  Created by 互盾 on 2018/7/27.
//  Copyright © 2018年 互盾. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (HDUtil)

///删除htlm字符串中的标题，换行换成br,BR等换成\n
- (NSString *)filterHTMLString;

///转utf-8字符串
- (NSString *)utf8String;


@end
