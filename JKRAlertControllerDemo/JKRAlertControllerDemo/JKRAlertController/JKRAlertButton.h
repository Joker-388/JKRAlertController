//
//  JKRAlertButton.h
//  BaoJiDianJing
//
//  Created by Lucky on 2017/5/17.
//  Copyright © 2017年 KaiHei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JKRAlertAction.h"

@interface JKRAlertButton : UIButton

@property (nonatomic, strong) JKRAlertAction *action;
+ (instancetype)alertButtonWithAction:(JKRAlertAction *)action;

@end
