//
//  WJWDrawRectVC1.m
//  JWNavBarNestTabBar
//
//  Created by jiangwei.wang on 2017/10/19.
//  Copyright © 2017年 wjwdive. All rights reserved.
//

#import "WJWDrawRectVC1.h"

@interface WJWDrawRectVC1 ()
//@property  (nonatomic,strong) UIView *view;
@end

@implementation WJWDrawRectVC1

- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect rect =  CGRectMake(0, 0, 100, 100);
    [self.view drawRect:rect];
    
}

- (void)drawRect:(CGRect)rect {
    UIBezierPath *p = [UIBezierPath bezierPathWithOvalInRect:rect];
    [[UIColor blueColor] setFill];
    [p fill];
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
