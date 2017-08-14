//
//  CVC.m
//  SPBaseClass
//
//  Created by uxin-lishiping on 2017/8/7.
//  Copyright © 2017年 lishiping. All rights reserved.
//

#import "CVC.h"

@interface CVC ()

@end

@implementation CVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

//不想让当前VC使用右滑返回手势，所以重写了下面的方法
-(BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    return NO;
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
