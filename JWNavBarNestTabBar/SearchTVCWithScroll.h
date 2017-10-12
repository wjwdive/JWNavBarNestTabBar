//
//  SearchTabViewWithScroll.h
//  JWNavBarNestTabBar
//
//  Created by infosys on 2017/9/22.
//  Copyright © 2017年 wjwdive. All rights reserved.
//

#import <UIKit/UIKit.h>
//block 反向传值  回传在 查找界面 选中的 条目内容
//定义一个block 名字为 SelectedItem 参数为string类型的block
typedef void (^SelectedItem)(NSString *item);

@interface SearchTVCWithScroll : UITableViewController
//将block 对外声明为属性
@property (strong, nonatomic) SelectedItem block;
//
- (void)didSelectedItem:(SelectedItem)block;
@end
