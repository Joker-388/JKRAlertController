//
//  JKRAlertController.m
//  BaoJiDianJing
//
//  Created by Lucky on 2017/5/17.
//  Copyright © 2017年 KaiHei. All rights reserved.
//

#import "JKRAlertController.h"
#import "JKRAlertPresentDelegate.h"

@interface JKRAlertController ()

@property (nonatomic, strong) JKRAlertPresentDelegate *presentDelegate;

@end

@implementation JKRAlertController

@synthesize title;

+ (instancetype)alertControllerWithTitle:(NSString *)title titleImage:(UIImage *)titleImage {
    return [self alertControllerWithTitle:title titleImage:titleImage selectedItems:nil];
}

+ (instancetype)alertControllerWithTitle:(NSString *)title titleImage:(UIImage *)titleImage selectedItems:(NSArray<NSString *> *)selectedItems {
    JKRAlertController *alertController = [[self alloc] init];
    alertController.title = title;
    alertController.titleImage = titleImage;
    alertController.selectedItems = selectedItems;
    return alertController;
}

- (void)addAction:(JKRAlertAction *)action {
    NSMutableArray *acs = [NSMutableArray arrayWithArray:self.actions];
    [acs addObject:action];
    self.actions = acs;
}

- (instancetype)init {
    self = [super init];
    self.transitioningDelegate = self.presentDelegate;
    self.modalPresentationStyle = UIModalPresentationCustom;
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithWhite:0.0 alpha:0.3];
    [self.view addSubview:self.contentView];
    [self.contentView addSubview:self.topImageView];
    [self.contentView addSubview:self.titleLabel];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (JKRAlertPresentDelegate *)presentDelegate {
    if (!_presentDelegate) {
        _presentDelegate = [[JKRAlertPresentDelegate alloc] init];
    }
    return _presentDelegate;
}

- (UIView *)contentView {
    if (!_contentView) {
        _contentView = [[UIView alloc] init];
    }
    return _contentView;
}

- (NSArray<JKRAlertAction *> *)actions {
    if (!_actions) {
        _actions = [NSArray array];
    }
    return _actions;
}

- (UIImageView *)topImageView {
    if (!_topImageView) {
        _topImageView = [[UIImageView alloc] init];
    }
    return _topImageView;
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.font = [UIFont systemFontOfSize:14];
        _titleLabel.textColor = JKRColorHex(030303);
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.numberOfLines = 0;
    }
    return _titleLabel;
}

@end
