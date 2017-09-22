//
//  ThirdViewController.m
//  JWNavBarNestTabBar
//
//  Created by infosys on 2017/9/22.
//  Copyright © 2017年 wjwdive. All rights reserved.
//

#import "ThirdViewController.h"
#import "SearchViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"Search";
    
    UIBarButtonItem *searchBarBtnItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:@selector(gotoSearchView)];
    self.navigationItem.rightBarButtonItem = searchBarBtnItem;
    
}

//跳转到搜索界面
- (void)gotoSearchView{
    NSLog(@"点击了right bar btn item");
    SearchViewController *searchVC = [[SearchViewController alloc] init];
    self.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:searchVC animated:YES];
    self.hidesBottomBarWhenPushed=NO;
    
}

- (void)viewWillAppear:(BOOL)animated {
//    在这里设置无效 需要在跳转之后设置 不隐藏 tabBar
//    self.hidesBottomBarWhenPushed = NO;
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
