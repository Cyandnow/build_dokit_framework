//
//  ViewController.m
//  DoraemonKit Developer iOS9
//
//  Created by Chunhui Sun on 2020/7/14.
//  Copyright © 2020 YunXIao. All rights reserved.
//

#import "ViewController.h"
#import "YXDPresentViewController.h"
#import <DoraemonKit/DoraemonKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [DoraemonManager.shareInstance install];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self delayAction];
    });
}

- (void)delayAction {
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
}

- (IBAction)buttonOnTouch:(UIButton *)sender {
//    self.presentedViewController
//    self.presentingViewController
//    self.presentationController
    
    YXDPresentViewController *present = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"YXDPresentViewController"];
    [self presentViewController:present animated:YES completion:nil];
    
}

//- (BOOL)shouldAutorotate {
//    return NO;
//}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait;
}

//- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
//    return UIInterfaceOrientationMaskPortrait;
//}



@end
