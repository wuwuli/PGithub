//
//  TwoViewController.m
//  PGithub
//
//  Created by 吴紫颖 on 2020/3/30.
//  Copyright © 2020 吴紫颖. All rights reserved.
//

#import "TwoViewController.h"

#import "TwoMainView.h"

@interface TwoViewController ()<TwoMainViewDelegate>

@property (nonatomic, strong) TwoMainView *mainView;

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.mainView updateView];
}

#pragma mark - Super Class
- (void)setupSubViews {
    [self.view addSubview:self.mainView];
    [self.mainView makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(0);
    }];
}

#pragma mark - Setter & Getter
- (TwoMainView *)mainView {
    if (!_mainView) {
        _mainView = [[TwoMainView alloc] initWithDelegate:self];
    }
    return _mainView;
}

@end
