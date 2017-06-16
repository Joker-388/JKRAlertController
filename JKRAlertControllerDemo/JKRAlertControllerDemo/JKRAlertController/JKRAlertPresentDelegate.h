//
//  JKRAlertPresentDelegate.h
//  BaoJiDianJing
//
//  Created by Lucky on 2017/5/17.
//  Copyright © 2017年 KaiHei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JKRAlertPresentationController.h"

@interface JKRAlertPresentDelegate : NSObject<UIViewControllerTransitioningDelegate, UIViewControllerAnimatedTransitioning>

@property (nonatomic, assign) BOOL isPresent;

@end
