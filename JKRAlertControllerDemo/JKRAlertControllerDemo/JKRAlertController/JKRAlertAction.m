//
//  JKRAlertAction.m
//  BaoJiDianJing
//
//  Created by Lucky on 2017/5/17.
//  Copyright © 2017年 KaiHei. All rights reserved.
//

#import "JKRAlertAction.h"

@implementation JKRAlertAction

+ (instancetype)actionWithTitle:(NSString *)title style:(JKRActionStyle)style handler:(JKRAlertActionHander)handler {
    JKRAlertAction *alertAction = [[JKRAlertAction alloc] init];
    alertAction.title = title;
    alertAction.style = style;
    alertAction.hander = handler;
    return alertAction;
}

@end
