//
//  SearchViewController.m
//  JWNavBarNestTabBar
//
//  Created by infosys on 2017/9/22.
//  Copyright © 2017年 wjwdive. All rights reserved.
//

#import "SearchViewController.h"
#import "SearchTVCWithScroll.h"
#import "SearchTVCNoScroll.h"
#import "SearchTVCOnly.h"
#import "SearchTVCWithSort.h"


@interface SearchViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) UITableView *titleTableView;
@property (strong, nonatomic) NSArray *dataSource;

@end

@implementation SearchViewController

- (id)init{
    //    隐藏底部tabbar 只有在这里设置才有用，在viewDidLoad 和 viewWillAppear中设置都无效。
//    self.hidesBottomBarWhenPushed =  YES;
    return [super init];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"search catagory";
    UIBarButtonItem *back = [[UIBarButtonItem alloc] init];
    back.title = @"";
    self.navigationItem.backBarButtonItem = back;
    _dataSource = @[@"搜索栏滚动式目录",@"搜索栏固定式目录",@"单独调用功能",@"传入Model排序搜索"];
    
    [self.view addSubview:self.titleTableView];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (UITableView *)titleTableView {
    if(!_titleTableView){
        _titleTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _titleTableView.backgroundColor = [UIColor colorWithWhite:0.9 alpha:1];
        _titleTableView.delegate = self;
        _titleTableView.dataSource = self;
    }
    return _titleTableView;
}

#pragma mark - Table View DataSource
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0.1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
        [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    }
    cell.textLabel.text = _dataSource[indexPath.row];
    return cell;
}


#pragma mark - Tablce View Delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = (UITableViewCell *)[tableView cellForRowAtIndexPath:indexPath];
    [cell.detailTextLabel setAdjustsFontSizeToFitWidth:YES];
    [cell.detailTextLabel setMinimumScaleFactor:0.5];
    
    switch (indexPath.row) {
        case 0:
        {
            SearchTVCWithScroll *searchBarScrollTVC = [SearchTVCWithScroll new];
            searchBarScrollTVC.title = _dataSource[indexPath.row];
//            返回选中搜索的结果
            [searchBarScrollTVC didSelectedItem:^(NSString *item) {
                cell.detailTextLabel.text = item;
            }];
            self.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:searchBarScrollTVC animated:YES];
        }
            break;
            
        default:
            break;
    }
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
