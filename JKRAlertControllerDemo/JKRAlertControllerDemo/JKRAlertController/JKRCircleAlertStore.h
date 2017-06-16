//
//  JKRAlertStore.h
//  BaoJiDianJing
//
//  Created by Lucky on 2017/5/17.
//  Copyright © 2017年 KaiHei. All rights reserved.
//

#import <Foundation/Foundation.h>

#define CircleX [JKRCircleAlertStore shareStore].circleX
#define CircleY [JKRCircleAlertStore shareStore].circleY
#define CircleW [JKRCircleAlertStore shareStore].circleWdith
#define CircleH [JKRCircleAlertStore shareStore].circleHeight
#define CircleFrame CGRectMake(CircleX, CircleY, CircleW, CircleH)
#define TitleFrame(title) [[JKRCircleAlertStore shareStore] titleFrameWithTitle:title]
#define AlertW [JKRCircleAlertStore shareStore].alertWidth

@interface JKRCircleAlertStore : NSObject

@property (nonatomic, assign) CGFloat circleWdith;
@property (nonatomic, assign) CGFloat circleHeight;
@property (nonatomic, assign) CGFloat circleX;
@property (nonatomic, assign) CGFloat circleY;
@property (nonatomic, assign) CGFloat alertWidth;
@property (nonatomic, assign) CGFloat titleWidht;
@property (nonatomic, assign) CGFloat titleX;
@property (nonatomic, assign) CGFloat titleY;

+ (instancetype)shareStore;
- (CGRect)titleFrameWithTitle:(NSString *)title;

@end
