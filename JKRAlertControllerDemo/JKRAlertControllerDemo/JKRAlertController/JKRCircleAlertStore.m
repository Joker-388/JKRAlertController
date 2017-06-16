//
//  JKRAlertStore.m
//  BaoJiDianJing
//
//  Created by Lucky on 2017/5/17.
//  Copyright © 2017年 KaiHei. All rights reserved.
//

#import "JKRCircleAlertStore.h"

@implementation JKRCircleAlertStore

+ (instancetype)shareStore {
    static JKRCircleAlertStore *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[JKRCircleAlertStore alloc] init];
    });
    return instance;
}

- (instancetype)init {
    self = [super init];
    self.alertWidth = kScreenWidth * 0.8;
    self.circleWdith = self.alertWidth * 0.307;
    self.circleHeight = self.circleWdith;
    self.circleX = (self.alertWidth - self.circleWdith) * 0.5;
    self.circleY = 0;
    self.titleWidht = self.alertWidth * 0.8;
    self.titleX = self.alertWidth * 0.1;
    self.titleY = self.circleHeight + 5;
    return self;
}

- (CGRect)titleFrameWithTitle:(NSString *)title {
    CGSize titleSize = [title boundingRectWithSize:CGSizeMake(self.titleWidht, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14]} context:nil].size;
    return CGRectMake(self.titleX, self.titleY, self.titleWidht, titleSize.height < 40 ? 40 : titleSize.height + 8);
}

@end
