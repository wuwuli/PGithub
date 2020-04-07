//
//  TwoMainView.m
//  PGithub
//
//  Created by 吴紫颖 on 2020/3/30.
//  Copyright © 2020 吴紫颖. All rights reserved.
//

#import "TwoMainView.h"
#import "BaseTableViewCell.h"

@interface TwoMainView ()

@property (nonatomic, strong) NSArray *arrayTableDatas;
@property (nonatomic, strong) NSIndexPath *selectIndexPath;
@property (nonatomic, assign) NSInteger selected;
@property (nonatomic, strong) NSMutableArray *selectIndexs;

@end

@implementation TwoMainView
#pragma mark - UITableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [self.arrayTableDatas count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (self.arrayTableDatas && [self.arrayTableDatas count]) {
        NSArray *arrayRows = self.arrayTableDatas[section];
        return [arrayRows count];
    }
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    BaseTableViewCell *cell = [BaseTableViewCell cellWithTableView:tableView];
    cell.backgroundColor = [UIColor whiteColor];
    if (indexPath.section < [self.arrayTableDatas count]) {
        NSArray *arrayRows = self.arrayTableDatas[indexPath.section];
        cell.textLabel.text = arrayRows[indexPath.row];
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSArray *arrayRows = self.arrayTableDatas[indexPath.section];
    
    [arrayRows enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        self.selectIndexPath = [NSIndexPath indexPathForRow:idx inSection:indexPath.section];
        UITableViewCell *cell = [tableView cellForRowAtIndexPath:self.selectIndexPath];
        cell.accessoryType = UITableViewCellAccessoryNone;
    }];
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
    [self.selectIndexs addObject:indexPath];
    [self.tableView reloadData];
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, 10)];
    return view;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 10;
}

#pragma mark - Super Class
- (void)setupSubViews {
    self.tableView = [self setupTableViewWithDelegate:self style:UITableViewStyleGrouped];
//    self.tableView.backgroundColor = [UIColor lightGrayColor];
//    self.tableView.separatorStyle = UITableViewCellSelectionStyleNone;
}

- (void)updateView {
    self.tableView.hidden = NO;
    [self.tableView reloadData];
}

#pragma mark - Setter & Getter
- (NSArray *)arrayTableDatas {
    if (!_arrayTableDatas) {
        _arrayTableDatas = @[@[@"第一行"], @[@"第一行",@"第二行"], @[@"第一行", @"第二行", @"第三行"], @[@"第一行", @"第二行"]];
    }
    return _arrayTableDatas;
}

- (NSMutableArray *)selectIndexs {
    if (!_selectIndexs) {
        _selectIndexs = [[NSMutableArray alloc] init];
    }
    return _selectIndexs;
}

@end
