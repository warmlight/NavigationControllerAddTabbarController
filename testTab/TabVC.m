//
//  TabVC.m
//  testTab
//
//  Created by yiban on 15/8/13.
//  Copyright (c) 2015年 yiban. All rights reserved.
//

#import "TabVC.h"
#import "ViewController.h"
#import "ViewController2.h"

@implementation TabVC
- (void)viewDidLoad {
    [super viewDidLoad];
    
    ViewController *vc1 = [[ViewController alloc] init];
    ViewController2 *vc2 = [[ViewController2 alloc] init];
    
    vc1.tabBarItem.title = @"1";
    vc2.tabBarItem.title = @"2";
    
    [self addChildViewController:vc1];
    [self addChildViewController:vc2];
    self.navigationItem.title  = @"1";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"information_nick"] style:UIBarButtonItemStyleDone target:self action:@selector(rightButtonClick:)];
    self.delegate = self;
    
}

- (void)rightButtonClick:(UIBarButtonItem *)rightButton {
    NSLog(@"right click");
}

-(void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
    self.navigationItem.title = viewController.tabBarItem.title;
}
@end
