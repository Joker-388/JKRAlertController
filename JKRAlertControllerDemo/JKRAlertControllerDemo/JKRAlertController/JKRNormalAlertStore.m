//
//  JKRNormalAlertStore.m
//  BaoJiDianJing
//
//  Created by Lucky on 2017/5/17.
//  Copyright © 2017年 KaiHei. All rights reserved.
//

#import "JKRNormalAlertStore.h"

@implementation JKRNormalAlertStore

+ (instancetype)shareStore {
    static JKRNormalAlertStore *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[JKRNormalAlertStore alloc] init];
    });
    return instance;
}

- (instancetype)init {
    self = [super init];
    self.alertWidth = kScreenWidth * 0.8;
    self.topWdith = self.alertWidth;
    self.topHeight = self.topWdith * 0.243;
    self.topX = 0;
    self.topY = 0;
    self.titleWidht = self.alertWidth * 0.8;
    self.titleX = self.alertWidth * 0.1;
    self.titleY = self.topHeight + 5;
    return self;
}

- (CGRect)titleFrameWithTitle:(NSString *)title {
    CGSize titleSize = [title boundingRectWithSize:CGSizeMake(self.titleWidht, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14]} context:nil].size;
    CGFloat titleHeight = titleSize.height < 40 ? 40 : titleSize.height + 8;
    return CGRectMake(self.titleX, self.titleY, self.titleWidht, titleHeight);
}

@end
