//
//  ViewController.m
//  DoraemonKit Developer
//
//  Created by Chunhui Sun on 2020/7/11.
//  Copyright © 2020 YunXIao. All rights reserved.
//

#import "ViewController.h"
#import "YXNavigationViewController.h"
@import DoraemonKit;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [DoraemonManager.shareInstance install];
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return self.navigationController.supportedInterfaceOrientations;
}

- (IBAction)switchOnChanged:(UISwitch *)sender {
    NSInteger tag = sender.tag - 500;
    if (tag == 0) {
        // app
        UIInterfaceOrientationMask mask = UIInterfaceOrientationMaskPortrait;
        if (sender.isOn) {
            mask = UIInterfaceOrientationMaskAllButUpsideDown;
        } else {
            mask = UIInterfaceOrientationMaskPortrait;
        }
        YXNavigationViewController *navigationViewController = self.navigationController;
        [navigationViewController changeSupportedInterfaceOrientations:mask];
        
    } else {
        // DoKit
        UIInterfaceOrientationMask mask = UIInterfaceOrientationMaskPortrait;
        if (sender.isOn) {
            mask = UIInterfaceOrientationMaskAllButUpsideDown;
        } else {
            mask = UIInterfaceOrientationMaskPortrait;
        }
        DoraemonManager.shareInstance.supportedInterfaceOrientations = mask;
    }
}


@end
