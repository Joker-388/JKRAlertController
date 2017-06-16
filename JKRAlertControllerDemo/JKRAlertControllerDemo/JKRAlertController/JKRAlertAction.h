//
//  JKRAlertAction.h
//  BaoJiDianJing
//
//  Created by Lucky on 2017/5/17.
//  Copyright © 2017年 KaiHei. All rights reserved.
//

#import <Foundation/Foundation.h>
@class JKRAlertAction;

typedef NS_ENUM(NSUInteger, JKRActionStyle) {
    JKRActionStyleDefault = 0,
    JKRActionStyleCancel
};

typedef void(^JKRAlertActionHander)();

@interface JKRAlertAction : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, assign) JKRActionStyle style;
@property (nonatomic, strong) JKRAlertActionHander hander;

+ (instancetype)actionWithTitle:(NSString *)title style:(JKRActionStyle)style handler:(JKRAlertActionHander)handler;

@end
