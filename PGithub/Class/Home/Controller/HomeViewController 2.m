//
//  HomeViewController.m
//  PGithub
//
//  Created by 吴紫颖 on 2020/3/27.
//  Copyright © 2020 吴紫颖. All rights reserved.
//

#import "HomeViewController.h"
#import "OneViewController.h"

#import "HomeMainView.h"

@interface HomeViewController ()<HomeMainViewDelegate>

@property (nonatomic, strong) HomeMainView *mainView;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.mainView updateView];
}

#pragma mark - HomeMainViewDelegate
- (void)tableView:(UITableView *)tableView didSelectedIndex:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        OneViewController *oneVC = [[OneViewController alloc] init];
        [self.navigationController pushViewController:oneVC animated:YES];
    }
}

#pragma mark - Super Class
- (void)setupSubViews {
    [self.view addSubview:self.mainView];
    [self.mainView makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(0);
    }];
}

#pragma mark - Setter & Getter
- (HomeMainView *)mainView {
    if (!_mainView) {
        _mainView = [[HomeMainView alloc] initWithDelegate:self];
    }
    return _mainView;
}

@end
