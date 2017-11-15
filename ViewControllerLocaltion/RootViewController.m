//
//  RootViewController.m
//  ViewControllerLocaltion
//
//  Created by EDZ on 2017/11/9.
//  Copyright © 2017年 picc. All rights reserved.
//

#import "RootViewController.h"

#import "NavigationController.h"
#import "HomeViewController.h"
#import "UserViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    HomeViewController *homeView =[[HomeViewController alloc]init];
    homeView.title =@"主页";
    NavigationController *hNavi =[[NavigationController alloc]initWithRootViewController:homeView];
    
    UserViewController *userView =[[UserViewController alloc]init];
    userView.title =@"个人中心";
    NavigationController *uNavi =[[NavigationController alloc]initWithRootViewController:userView];
    
    [self setViewControllers:[NSArray arrayWithObjects:hNavi,uNavi, nil]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
