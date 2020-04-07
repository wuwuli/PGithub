//
//  OneViewController.m
//  PGithub
//
//  Created by 吴紫颖 on 2020/3/30.
//  Copyright © 2020 吴紫颖. All rights reserved.
//

#import "OneViewController.h"

#import "OneMainView.h"

@interface OneViewController ()

@property (nonatomic, strong) OneMainView *mainView;

@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - Super Class
- (void)setupSubViews {
    [self.view addSubview:self.mainView];
    [self.mainView makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(0);
    }];
}

#pragma mark - Setter & Getter
- (OneMainView *)mainView {
    if (!_mainView) {
        _mainView = [[OneMainView alloc] init];
    }
    return _mainView;
}

@end
