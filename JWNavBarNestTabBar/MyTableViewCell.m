//
//  MyTableViewCell.m
//  JWNavBarNestTabBar
//
//  Created by jiangwei.wang on 2017/10/20.
//  Copyright © 2017年 wjwdive. All rights reserved.
//

#import "MyTableViewCell.h"

@implementation MyTableViewCell

- (id)initWithReuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initLayout];
    }
    return  self;
}

//初始化控件
- (void)initLayout {
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(8, 8, 250, 46)];
    [self addSubview:_titleLabel];
}
//赋值 and 自动换行，计算出cell 的高度
- (void)setIntroductionText:(NSString *)text {
//    获得当前cell的高度
    CGRect frame = [self frame];
//    文本赋值
    self.textLabel.text = text;
    self.textLabel.numberOfLines = 0;
    
    self.textLabel.lineBreakMode = NSLineBreakByWordWrapping;
//    设置label的最大行数
    CGSize size = CGSizeMake(200, 1000);
    
    NSDictionary *attributes = @{NSFontAttributeName:[UIFont fontWithName:@"HelveticaNeue" size:14]};
//    CGSize labelSize = [self.textLabel.text sizeWithAttributes:attributes];
//    ios 7
//    CGSize labelSize = [self.textLabel.text sizeWithFont:self.textLabel.font constrainedToSize:size lineBreakMode:NSLineBreakByClipping];
//ios 8+
    CGRect labelRect = [self.textLabel.text boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:attributes context:nil];
    self.textLabel.frame = labelRect;

    frame.size.height = labelRect.size.height + 100;
    
    self.frame = frame;
}


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
