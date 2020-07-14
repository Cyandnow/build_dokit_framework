//
//  YXNavigationViewController.m
//  DoraemonKit Developer
//
//  Created by Chunhui Sun on 2020/7/14.
//  Copyright © 2020 YunXIao. All rights reserved.
//

#import "YXNavigationViewController.h"

@interface YXNavigationViewController ()

@property (assign, nonatomic) UIInterfaceOrientationMask mask;

@end

@implementation YXNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return self.mask;
}

- (void)changeSupportedInterfaceOrientations:(UIInterfaceOrientationMask)mask {
    self.mask = mask;
}

@end
