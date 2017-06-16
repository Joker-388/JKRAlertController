//
//  JKRCircleTopAlertController.m
//  BaoJiDianJing
//
//  Created by Lucky on 2017/5/17.
//  Copyright © 2017年 KaiHei. All rights reserved.
//

#import "JKRCircleTopAlertController.h"
#import "JKRCircleAlertStore.h"
#import "JKRAlertButton.h"

@interface JKRCircleTopAlertController ()

@property (nonatomic, assign) CGFloat selectedBottom;
@property (nonatomic, assign) CGFloat actionBottom;
@property (nonatomic, strong) CALayer *backgroundLayer;

@end

@implementation JKRCircleTopAlertController

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
    [self.contentView.layer insertSublayer:self.backgroundLayer atIndex:0];
}

- (void)_setCircleTopImage {
    self.topImageView.frame = CircleFrame;
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    UIBezierPath *circlePath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(CircleFrame.size.width * 0.5, CircleFrame.size.height * 0.5) radius:CircleFrame.size.width * 0.5 startAngle:0 endAngle:M_PI * 2 clockwise:YES];
    shapeLayer.path = circlePath.CGPath;
    self.topImageView.layer.mask = shapeLayer;
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

- (CALayer *)backgroundLayer {
    if (!_backgroundLayer) {
        _backgroundLayer = [CAShapeLayer layer];
        _backgroundLayer.frame = CGRectMake(0, CircleH * 0.5, AlertW, self.contentView.height - CircleH * 0.5);
        _backgroundLayer.backgroundColor = JKRColorHex(ffffff).CGColor;
        _backgroundLayer.cornerRadius = 12;
    }
    return _backgroundLayer;
}

- (void)dealloc {
    
}

@end
