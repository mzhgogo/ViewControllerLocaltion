//
//  fiveViewController.m
//  ViewControllerLocaltion
//
//  Created by EDZ on 2017/11/9.
//  Copyright © 2017年 picc. All rights reserved.
//

#import "fiveViewController.h"

@interface fiveViewController ()

@end

@implementation fiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *nextBtn =[[UIButton alloc]initWithFrame:CGRectMake(40, 40, 70, 40)];
    [nextBtn setTitle:@"Back -- Five" forState:UIControlStateNormal];
    [nextBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [nextBtn addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:nextBtn];
}
- (void)goBack{
    [self dismissViewControllerAnimated:YES completion:nil];
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
