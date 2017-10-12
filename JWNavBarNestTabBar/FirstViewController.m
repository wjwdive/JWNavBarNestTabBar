//
//  FirstViewController.m
//  JWNavBarNestTabBar
//
//  Created by infosys on 2017/9/21.
//  Copyright © 2017年 wjwdive. All rights reserved.
//

#import "FirstViewController.h"
#import "FirstDetailViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UIBarButtonItem *searchBarBtnItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:@selector(gotoSearchView)];
    self.navigationItem.rightBarButtonItem = searchBarBtnItem;
    self.title = @"main";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)goToFirstDetail:(id)sender {
    FirstDetailViewController *firstDetailVC = [[FirstDetailViewController alloc] init];
    firstDetailVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:firstDetailVC animated:YES];
}

//跳转到搜索界面
- (void)gotoSearchView{
    NSLog(@"点击了right bar btn item");
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
