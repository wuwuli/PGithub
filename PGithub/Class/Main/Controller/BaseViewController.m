//
//  BaseViewController.m
//  One
//
//  Created by 吴紫颖 on 2019/1/24.
//  Copyright © 2019 吴紫颖. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setupBaseViewControllers];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self setupNavigationBarAppearance];
}

- (void)setupNavigationBarAppearance {

}

- (void)setupBaseViewControllers {
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setupSubViews];
    [self setupNavigation];
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

- (BOOL)prefersStatusBarHidden {
    return NO;
}

- (void)setupSubViews {
    
}

- (void)setupNavigation {
    
}

- (void)popViewController {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
