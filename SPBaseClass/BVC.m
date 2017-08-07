//
//  BVC.m
//  SPBaseClass
//
//  Created by uxin-lishiping on 2017/8/7.
//  Copyright © 2017年 lishiping. All rights reserved.
//

#import "BVC.h"
#import "CVC.h"

@interface BVC ()

@end

@implementation BVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor =[UIColor greenColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"push" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(pushnext) forControlEvents:UIControlEventTouchUpInside];
    [button sizeToFit];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    
    button.frame = CGRectMake(150, 150, 100, 50);
    [self.view addSubview:button];
}

-(void)pushnext
{
    CVC *cvc = [[CVC alloc] init];
    [self.navigationController pushViewController:cvc animated:YES];
}

-(BOOL)gestureRecognizerShouldBegin
{
    return YES;
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
