//
//  JKRAlertButton.m
//  BaoJiDianJing
//
//  Created by Lucky on 2017/5/17.
//  Copyright © 2017年 KaiHei. All rights reserved.
//

#import "JKRAlertButton.h"

@implementation JKRAlertButton

+ (instancetype)alertButtonWithAction:(JKRAlertAction *)action {
    JKRAlertButton *button = [[JKRAlertButton alloc] init];
    button.action = action;
    [button setTitle:action.title forState:UIControlStateNormal];
    [button setTitleColor:(action.style ? JKRColorHex(494949) : JKRColorHex(CE0008)) forState:UIControlStateNormal];
    [button addTarget:button action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    return button;
}

- (void)buttonClick {
    self.action.hander();
    [self.jkr_viewController dismissViewControllerAnimated:YES completion:nil];
}

@end
