//
//  HomeMainView.m
//  PGithub
//
//  Created by 吴紫颖 on 2020/3/27.
//  Copyright © 2020 吴紫颖. All rights reserved.
//

#import "HomeMainView.h"
#import "BaseTableViewCell.h"

@interface HomeMainView ()

@property (nonatomic, strong) NSArray *arrayTitles;

@end

@implementation HomeMainView
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.arrayTitles count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    BaseTableViewCell *cell = [BaseTableViewCell cellWithTableView:tableView];
    
    cell.textLabel.text = self.arrayTitles[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.delegate && [self.delegate respondsToSelector:@selector(tableView:didSelectedIndex:)]) {
        [self.delegate performSelector:@selector(tableView:didSelectedIndex:) withObject:tableView withObject:indexPath];
    }
}

#pragma mark - Super Class
- (void)setupSubViews {
    self.tableView = [self setupTableViewWithDelegate:self];
}

- (void)updateView {
    self.tableView.hidden = NO;
    [self.tableView reloadData];
}

#pragma mark - Setter & Getter
- (NSArray *)arrayTitles {
    if (!_arrayTitles) {
        _arrayTitles = @[@"button单选", @"tableView中每组进行单选"];
    }
    return _arrayTitles;
}

@end
