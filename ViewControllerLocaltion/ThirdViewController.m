//
//  ThirdViewController.m
//  ViewControllerLocaltion
//
//  Created by EDZ on 2017/11/9.
//  Copyright © 2017年 picc. All rights reserved.
//

#import "ThirdViewController.h"
#import "FourViewController.h"


@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"Back -- Third" style:UIBarButtonItemStylePlain target:self action:@selector(goBack)];
    
    UIButton *nextBtn =[[UIButton alloc]initWithFrame:CGRectMake(40, 160, 70, 40)];
    [nextBtn setTitle:@"go" forState:UIControlStateNormal];
    [nextBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [nextBtn addTarget:self action:@selector(goNext) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:nextBtn];
}

- (void)goBack{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)goNext{
    FourViewController *nextView =[[FourViewController alloc]init];
    [self presentViewController:nextView animated:YES completion:nil];
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
