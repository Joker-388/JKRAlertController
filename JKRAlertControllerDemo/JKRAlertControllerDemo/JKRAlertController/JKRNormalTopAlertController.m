//
//  JKRNormalTopAlertController.m
//  BaoJiDianJing
//
//  Created by Lucky on 2017/5/17.
//  Copyright © 2017年 KaiHei. All rights reserved.
//

#import "JKRNormalTopAlertController.h"
#import "JKRNormalAlertStore.h"
#import "JKRAlertButton.h"

@interface JKRNormalTopAlertController ()

@property (nonatomic, assign) CGFloat selectedBottom;
@property (nonatomic, assign) CGFloat actionBottom;

@end

@implementation JKRNormalTopAlertController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self _setValue];
    [self _setFrame];
}

- (void)_setValue {
    self.topImageView.image = self.titleImage;
    self.titleLabel.text = self.title;
}

- (void)_setFrame {
    [self _setCircleTopImage];
    [self _setTitle];
    [self _setSelects];
    [self _setActions];
    [self _setConent];
    self.contentView.backgroundColor = JKRColorHex(ffffff);
    self.contentView.layer.masksToBounds = YES;
    self.contentView.layer.cornerRadius = 12;
}

- (void)_setCircleTopImage {
    self.topImageView.frame = TopFrame;
}

- (void)_setTitle {
    self.titleLabel.frame = TitleFrame(self.title);
}

- (void)_setSelects {
    if (self.selectedItems) {
        
    } else {
        self.selectedBottom = CGRectGetMaxY(self.titleLabel.frame) + 5;
    }
}

- (void)_setActions {
    if (self.actions.count) {
        CGFloat W = AlertW / self.actions.count;
        CGFloat H = 47;
        CGFloat Y = self.selectedBottom;
        CGFloat X;
        for (NSUInteger i = 0; i < self.actions.count; i++) {
            X = i * W;
            JKRAlertButton *alertButton = [JKRAlertButton alertButtonWithAction:self.actions[i]];
            alertButton.frame = CGRectMake(X, Y, W, H);
            [self.contentView addSubview:alertButton];
            if (i < self.actions.count - 1) {
                CALayer *marginLine = [[CALayer alloc] init];
                marginLine.backgroundColor = JKRColorHex(E1E1E1).CGColor;
                marginLine.frame = CGRectMake(X + W, Y, 1, H);
                [self.contentView.layer addSublayer:marginLine];
            }
        }
        CALayer *topLine = [[CALayer alloc] init];
        topLine.backgroundColor = JKRColorHex(E1E1E1).CGColor;
        topLine.frame = CGRectMake(0, Y, AlertW, 1);
        [self.contentView.layer addSublayer:topLine];
        self.actionBottom = self.selectedBottom + H;
    } else {
        self.actionBottom = self.selectedBottom;
    }
}

- (void)_setConent {
    self.contentView.frame = CGRectMake((kScreenWidth - AlertW) * 0.5, (kScreenHeight - self.actionBottom) * 0.5, AlertW, self.actionBottom);
}

- (void)dealloc {
    
}

@end
