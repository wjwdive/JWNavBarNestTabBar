//
//  MyTableViewCell.h
//  JWNavBarNestTabBar
//
//  Created by jiangwei.wang on 2017/10/20.
//  Copyright © 2017年 wjwdive. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyTableViewCell : UITableViewCell
//title Label 会自动换行
@property(nonatomic, retain) UILabel *titleLabel;

- (void)setIntroductionText:(NSString *)text;

- (id)initWithReuseIdentifier:(NSString *)reuseIdentifier;

@end
