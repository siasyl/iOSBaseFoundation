//
//  NSString+HDUtil.m
//  PDFConverters
//
//  Created by 互盾 on 2018/7/27.
//  Copyright © 2018年 互盾. All rights reserved.
//

#import "NSString+HDUtil.h"

@implementation NSString (HDUtil)


#pragma mark 删除htlm字符串中的标题，换行换成br,BR等换成\n
- (NSString *)filterHTMLString {
    //过滤标签
    NSString *resultString = self;
    NSScanner *scanner = [NSScanner scannerWithString:self];
    NSString *text = nil;
    while([scanner isAtEnd] == NO) {
        [scanner scanUpToString:@"<" intoString:nil];
        [scanner scanUpToString:@">" intoString:&text];
        if ([text containsString:@"br"] || [text containsString:@"BR"]) {
            resultString = [resultString stringByReplacingOccurrencesOfString:[NSString stringWithFormat:@"%@>",text] withString:@"\n"];
        } else {
            resultString = [resultString stringByReplacingOccurrencesOfString:[NSString stringWithFormat:@"%@>",text] withString:@""];
        }
    }
    resultString = [resultString filterHTMLTag];
    return resultString;
}

- (NSString *)filterHTMLTag {
    //替换字符
    NSString *str = self;
    str  =  [str  stringByReplacingOccurrencesOfString:@"&mdash;" withString:@"-"];
    str  =  [str  stringByReplacingOccurrencesOfString:@"&ldquo;" withString:@"\""];
    str  =  [str  stringByReplacingOccurrencesOfString:@"&rdquo;" withString:@"\""];
    str  =  [str  stringByReplacingOccurrencesOfString:@"&nbsp;" withString:@"\n"];
    str  =  [str  stringByReplacingOccurrencesOfString:@"&rsquo;" withString:@"’"];
    str  =  [str  stringByReplacingOccurrencesOfString:@"&lsquo;" withString:@"‘"];
    str  =  [str  stringByReplacingOccurrencesOfString:@"&middot;" withString:@"·"];
    str  =  [str  stringByReplacingOccurrencesOfString:@"&quot;" withString:@"\""];
    str  =  [str  stringByReplacingOccurrencesOfString:@"&amp;" withString:@"&"];
    str  =  [str  stringByReplacingOccurrencesOfString:@"<strong>" withString:@""];
    str  =  [str  stringByReplacingOccurrencesOfString:@"</strong>" withString:@""];
    return str;
}

- (NSString *)utf8String {
    return [self stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    
}


@end
