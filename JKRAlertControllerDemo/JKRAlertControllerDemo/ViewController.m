//
//  ViewController.m
//  JKRAlertControllerDemo
//
//  Created by Lucky on 2017/6/16.
//  Copyright © 2017年 Lucky. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)button1:(id)sender {
    JKRCircleTopAlertController *alertController = [JKRCircleTopAlertController alertControllerWithTitle:@"Alert Controller" titleImage:[UIImage jkr_imageWithColor:[UIColor redColor]]];
    [alertController addAction:[JKRAlertAction actionWithTitle:@"Yes" style:JKRActionStyleDefault handler:^{
        
    }]];
    [alertController addAction:[JKRAlertAction actionWithTitle:@"Cancel" style:JKRActionStyleCancel handler:^{
        
    }]];
    [self presentViewController:alertController animated:YES completion:nil];
}

- (IBAction)button2:(id)sender {
    JKRNormalTopAlertController *alertController = [JKRNormalTopAlertController alertControllerWithTitle:@"Alert Controller" titleImage:[UIImage jkr_imageWithColor:[UIColor redColor]]];
    [alertController addAction:[JKRAlertAction actionWithTitle:@"Yes" style:JKRActionStyleDefault handler:^{
        
    }]];
    [alertController addAction:[JKRAlertAction actionWithTitle:@"Cancel" style:JKRActionStyleCancel handler:^{
        
    }]];
    [self presentViewController:alertController animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
