//
//  YXDPresentViewController.m
//  DoraemonKit Developer iOS9
//
//  Created by Chunhui Sun on 2020/7/15.
//  Copyright © 2020 YunXIao. All rights reserved.
//

#import "YXDPresentViewController.h"

@interface YXDPresentViewController ()
@property (nonatomic, strong) NSTimer *timer;
@end

@implementation YXDPresentViewController

- (instancetype)initWithCoder:(NSCoder *)coder {
    if (self = [super initWithCoder:coder]) {
        self.modalPresentationStyle = UIModalPresentationFullScreen;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self delayAction];
    });
    
//    [self timer];
//    [self.timer fire];
    self.timer.fireDate = NSDate.distantPast;
}

- (void)delayAction {
//    [self.navigationController pushViewController:<#(nonnull UIViewController *)#> animated:<#(BOOL)#>]
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskLandscape;
}

- (IBAction)dismissOnTouch:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)timerAction {
    NSLog(@"*** timer action");
}

- (NSTimer *)timer {
    if (!_timer) {
        _timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerAction) userInfo:nil repeats:YES];
    }
    return _timer;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
