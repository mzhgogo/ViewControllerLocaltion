//
//  SectionViewController.m
//  ViewControllerLocaltion
//
//  Created by EDZ on 2017/11/9.
//  Copyright © 2017年 picc. All rights reserved.
//

#import "SectionViewController.h"
#import "ThirdViewController.h"
#import "NavigationController.h"

@interface SectionViewController ()

@end

@implementation SectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton *nextBtn =[[UIButton alloc]initWithFrame:CGRectMake(40, 160, 130, 40)];
    [nextBtn setTitle:@"presentView跳转Navi" forState:UIControlStateNormal];
    [nextBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [nextBtn addTarget:self action:@selector(goNext) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:nextBtn];
}

- (void)goNext{
    ThirdViewController *nextView =[[ThirdViewController alloc]init];
    NavigationController *navi = [[NavigationController alloc]initWithRootViewController:nextView];
    [self presentViewController:navi animated:YES completion:nil];
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
