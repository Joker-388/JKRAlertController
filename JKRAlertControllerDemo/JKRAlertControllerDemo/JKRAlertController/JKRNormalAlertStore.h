//
//  JKRNormalAlertStore.h
//  BaoJiDianJing
//
//  Created by Lucky on 2017/5/17.
//  Copyright © 2017年 KaiHei. All rights reserved.
//

#import <Foundation/Foundation.h>

#define TopX [JKRNormalAlertStore shareStore].topX
#define TopY [JKRNormalAlertStore shareStore].topY
#define TopW [JKRNormalAlertStore shareStore].topWdith
#define TopH [JKRNormalAlertStore shareStore].topHeight
#define TopFrame CGRectMake(TopX, TopY, TopW, TopH)
#define TitleFrame(title) [[JKRNormalAlertStore shareStore] titleFrameWithTitle:title]
#define AlertW [JKRNormalAlertStore shareStore].alertWidth

@interface JKRNormalAlertStore : NSObject

@property (nonatomic, assign) CGFloat topWdith;
@property (nonatomic, assign) CGFloat topHeight;
@property (nonatomic, assign) CGFloat topX;
@property (nonatomic, assign) CGFloat topY;
@property (nonatomic, assign) CGFloat alertWidth;
@property (nonatomic, assign) CGFloat titleWidht;
@property (nonatomic, assign) CGFloat titleX;
@property (nonatomic, assign) CGFloat titleY;

+ (instancetype)shareStore;
- (CGRect)titleFrameWithTitle:(NSString *)title;

@end
