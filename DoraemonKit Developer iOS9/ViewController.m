//
//  ViewController.m
//  DoraemonKit Developer iOS9
//
//  Created by Chunhui Sun on 2020/7/14.
//  Copyright © 2020 YunXIao. All rights reserved.
//

#import "ViewController.h"
@import DoraemonKit;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [DoraemonManager.shareInstance install];
}

- (BOOL)shouldAutorotate {
    return NO;
}

- (IBAction)buttonOnTouch:(UIButton *)sender {
    
}





@end
