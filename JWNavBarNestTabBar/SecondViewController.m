//
//  SecondViewController.m
//  JWNavBarNestTabBar
//
//  Created by infosys on 2017/9/21.
//  Copyright © 2017年 wjwdive. All rights reserved.
//

#import "SecondViewController.h"
#import "WJWDrawRectVC1.h"
#import "MyTableViewCell.h"
//参考网址
//http://www.cnblogs.com/xdream86/archive/2012/12/12/2814552.html
@interface SecondViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tabView;
@property (nonatomic, strong) NSArray *dataSource;
@end

@implementation SecondViewController

- (id)init{
    return [super init];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"绘图";
    _dataSource = @[@"用UIView的子类方法 drawRect:绘制图像",@"使用Core Graphics实现绘制蓝色圆",@"在UIView子类的drawLayer:inContext:方法中实现绘图任务",@"用Core Graphics 在 drawLayer:inContext:绘制图像",@"使用UIKit实现（可以和 Core Graphics 混合使用）",@"用Core Graphics实现"];
    
//    这里如果要触发 下面的 - (UITableView *)tabView方法，必须 用 self.tabView 触发setter方法懒加载，直接用 _tabView不会触发懒加载
    [self.view addSubview:self.tabView];
    NSLog(@"%@--%p", _tabView, _tabView);
    
    self.tabView.estimatedRowHeight = 44;
    self.tabView.rowHeight = UITableViewAutomaticDimension;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UITableView *)tabView {
    if (!_tabView) {
        _tabView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _tabView.backgroundColor = [UIColor colorWithWhite:0.9 alpha:1];
        _tabView.delegate = self;
        _tabView.dataSource = self;
    }
    NSLog(@"init _tabView");
    return _tabView;
}

#pragma mark -- tableView dataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

//
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 36;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    MyTableViewCell *cell = (MyTableViewCell*)[self tableView:_tabView cellForRowAtIndexPath:indexPath];
    return cell.frame.size.height;
}

// Header 描述
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"不同的绘制图形的方法";
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
//    指定cellIdentifier 为自定义的cell
    static NSString *cellIdentifier = @"cell";
    MyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[MyTableViewCell alloc] initWithReuseIdentifier:cellIdentifier];
        [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    }
    
    cell.textLabel.text = _dataSource[indexPath.row];
    cell.textLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    return cell;
}


#pragma mark -- tableView delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = (UITableViewCell *)[tableView cellForRowAtIndexPath:indexPath];
    [cell.detailTextLabel setAdjustsFontSizeToFitWidth:YES];
    [cell.detailTextLabel setMinimumScaleFactor:0.5];
    
    switch (indexPath.row) {
        case 0:{
            WJWDrawRectVC1 *vc1 = [[WJWDrawRectVC1 alloc] init];
            vc1.title = _dataSource[indexPath.row];
            [self.navigationController pushViewController:vc1 animated:YES];

        }
            break;
        case 1:
            
            break;
        case 2:
            
            break;
        case 3:
            
            break;
        case 4:
            
            break;
        case 5:
            
            break;
        case 6:
            
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
