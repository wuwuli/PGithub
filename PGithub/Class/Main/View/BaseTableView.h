//
//  BaseTableView.h
//  BlueLeaf
//
//  Created by XQ on 2018/12/19.
//  Copyright © 2018年 XQ. All rights reserved.
//

#import "BaseMainView.h"

NS_ASSUME_NONNULL_BEGIN

static CGFloat const kkZeroHeight = 0.00001f;

@protocol BaseTableViewDelegate <BaseMainViewDelegate>

@optional
/** cell点击回调 */
- (void)tableView:(UITableView *)tableView didSelectedIndex:(NSIndexPath *)indexPath;

@end

@class EmptyView;

@interface BaseTableView : BaseMainView <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) EmptyView *emptyView;

/**
 *  设置UITableView
 *  @param delegate UITableView的代理
 *  @return 返回一个UITableView
 */
- (UITableView *)setupTableViewWithDelegate:(id<UITableViewDelegate, UITableViewDataSource>)delegate;

- (UITableView *)setupTableViewWithDelegate:(id<UITableViewDelegate, UITableViewDataSource>)delegate style:(UITableViewStyle)style;

- (UITableView *)setupTableViewWithDelegate:(id<UITableViewDelegate, UITableViewDataSource>)delegate  shouldRefresh:(BOOL)shouldRefresh;

- (UITableView *)setupTableViewWithDelegate:(id<UITableViewDelegate, UITableViewDataSource>)delegate style:(UITableViewStyle)style shouldRefresh:(BOOL)shouldRefresh;

@end

NS_ASSUME_NONNULL_END
