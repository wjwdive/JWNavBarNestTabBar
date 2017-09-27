//
//  SearchTVCOnly.h
//  JWNavBarNestTabBar
//
//  Created by infosys on 2017/9/22.
//  Copyright © 2017年 wjwdive. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^SelectedItem)(NSString * item);
@interface SearchTVCOnly : UITableViewController
@property (strong, nonatomic) SelectedItem block;
- (void)didSelectedItem:(SelectedItem)block;
@end
