//
//  BaseTableView.m
//  BlueLeaf
//
//  Created by XQ on 2018/12/19.
//  Copyright © 2018年 XQ. All rights reserved.
//

#import "BaseTableView.h"

@implementation BaseTableView
#pragma mark - TableView DataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return nil;
}

- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    return nil;
}

- (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return kkZeroHeight;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return kkZeroHeight;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    //    [cell setLayoutMargins:UIEdgeInsetsZero];
    //    [cell setSeparatorInset:UIEdgeInsetsZero];
    [cell setLayoutMargins:UIEdgeInsetsMake(0, 15, 0, 15)];
    [cell setSeparatorInset:UIEdgeInsetsMake(0, 15, 0, 15)];
}

#pragma mark - Super Class
- (void)setupSubViews {
    
}

#pragma mark 如果需要添加UITableView直接调用一下方法即可
- (UITableView *)setupTableViewWithDelegate:(id<UITableViewDelegate, UITableViewDataSource>)delegate {
    return [self setupTableViewWithDelegate:delegate style:UITableViewStylePlain shouldRefresh:NO];
}

- (UITableView *)setupTableViewWithDelegate:(id<UITableViewDelegate, UITableViewDataSource>)delegate style:(UITableViewStyle)style {
    return [self setupTableViewWithDelegate:delegate style:style shouldRefresh:NO];
}

- (UITableView *)setupTableViewWithDelegate:(id<UITableViewDelegate, UITableViewDataSource>)delegate shouldRefresh:(BOOL)shouldRefresh {
    return [self setupTableViewWithDelegate:delegate style:UITableViewStylePlain shouldRefresh:shouldRefresh];
}

- (UITableView *)setupTableViewWithDelegate:(id<UITableViewDelegate, UITableViewDataSource>)delegate style:(UITableViewStyle)style shouldRefresh:(BOOL)shouldRefresh {
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.bounds style:style];
    tableView.delegate = delegate;
    tableView.dataSource = delegate;
    tableView.tableFooterView = [UIView new];
    tableView.backgroundColor = [UIColor clearColor];
    tableView.separatorColor = [UIColor lightGrayColor];
    tableView.showsVerticalScrollIndicator = NO;
    tableView.estimatedRowHeight = 0;
    tableView.estimatedSectionHeaderHeight = 0;
    tableView.estimatedSectionFooterHeight = 0;
    tableView.hidden = YES;
    [self addSubview:tableView];
    [tableView makeConstraints:^(MASConstraintMaker *make) {
        if (@available(iOS 11.0, *)) {
            make.top.equalTo(self.mas_safeAreaLayoutGuideTop);
            make.left.equalTo(self.mas_safeAreaLayoutGuideLeft);
            make.bottom.equalTo(self.mas_safeAreaLayoutGuideBottom);
            make.right.equalTo(self.mas_safeAreaLayoutGuideRight);
            
        } else {
            make.edges.equalTo(self);
        }
    }];
    
    if (shouldRefresh) {
    }
    
    return tableView;
}

@end
