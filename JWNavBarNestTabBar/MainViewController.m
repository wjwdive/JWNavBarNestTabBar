//
//  MainViewController.m
//  JWNavBarNestTabBar
//
//  Created by infosys on 2017/9/21.
//  Copyright © 2017年 wjwdive. All rights reserved.
//

#import "MainViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"


@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    加载控制器
    [self loadViewControllers];
    
//    设置底部标签栏背景
    [self.tabBar setBackgroundImage:[UIImage imageNamed:@"bg"]];
    // Do any additional setup after loading the view.
}


- (void)loadViewControllers {
//    1、新建第一页视图控制器实例
    FirstViewController *firstVC = [[FirstViewController alloc] init];
//    2、新建第一页导航控制器实例，把firstVC加进去
    UINavigationController *firstNC = [[UINavigationController  alloc] initWithRootViewController:firstVC];
//    3、新建第一页的标签栏图标
    UITabBarItem *firstTabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:0];
//    4、将图标加入到第一页的导航控制器上
    firstNC.tabBarItem = firstTabBarItem;
    
//    可选，定义nav的背景图片
    [firstNC.navigationBar setBackgroundImage:[UIImage imageNamed:@""] forBarMetrics:UIBarMetricsDefault];
//    设置导航栏样式
    [firstNC.navigationBar setBarStyle:UIBarStyleBlackTranslucent];
//    设置返回按钮文字和图标颜色
    [firstNC.navigationBar setTintColor:[UIColor grayColor]];
    
//    第二页
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    UINavigationController *secondNC = [[UINavigationController alloc]initWithRootViewController:secondVC];
    UITabBarItem *secondTabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemRecents tag:1];
    secondNC.tabBarItem = secondTabBarItem;
    [secondNC.navigationBar setBackgroundImage:[UIImage imageNamed:@""] forBarMetrics:UIBarMetricsDefault];
    [secondNC.navigationBar setBarStyle:UIBarStyleBlackTranslucent];
    [secondNC.navigationBar setTintColor:[UIColor grayColor]];
    
    
//    5、新建一个导航控制器实例的数组
    NSArray *controllersArray = @[firstNC, secondNC];
//    6、把导航控制器的数组加入到标签控制器
    [self setViewControllers:controllersArray animated:YES];
    
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
