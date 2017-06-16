//
//  JKRAlertController.h
//  BaoJiDianJing
//
//  Created by Lucky on 2017/5/17.
//  Copyright © 2017年 KaiHei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JKRAlertAction.h"

NS_ASSUME_NONNULL_BEGIN

@interface JKRAlertController : UIViewController

@property (nonatomic, copy) NSString *title;
@property (nonatomic, strong) UIImage *titleImage;
@property (nonatomic, strong) NSArray<JKRAlertAction *> *actions;
@property (nonatomic, strong) UIView *contentView;
@property (nonatomic, strong) NSArray<NSString *> *selectedItems;

@property (nonatomic, strong) UIImageView *topImageView;    ///< 顶部圆
@property (nonatomic, strong) UILabel *titleLabel;          ///< title

+ (instancetype)alertControllerWithTitle:(NSString *)title titleImage:(UIImage *)titleImage;
//+ (instancetype)alertControllerWithTitle:(NSString *)title titleImage:(UIImage *)titleImage selectedItems:(nullable NSArray<NSString *> *)selectedItems;
- (void)addAction:(JKRAlertAction *)action;

@end

NS_ASSUME_NONNULL_END
