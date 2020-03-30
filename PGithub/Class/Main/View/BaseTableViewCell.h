//
//  BaseTableViewCell.h
//  iShop
//
//  Created by JY on 2018/6/7.
//  Copyright © 2018年 帝辰科技. All rights reserved.
//  基类TableViewCell

#import <UIKit/UIKit.h>

@interface BaseTableViewCell : UITableViewCell

+ (instancetype)cellWithTableView:(UITableView *)tableView;
+ (instancetype)cellWithTableNibView:(UITableView *)tableView;
- (void)setupCell;
- (void)setupSubViews;
- (void)setViewWithModel:(id)model;

@end
