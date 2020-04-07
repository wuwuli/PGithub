//
//  BaseMainView.m
//  One
//
//  Created by 吴紫颖 on 2019/1/25.
//  Copyright © 2019 吴紫颖. All rights reserved.
//

#import "BaseMainView.h"

@implementation BaseMainView
#pragma mark - Life Cycle
- (instancetype)initWithDelegate:(id<BaseMainViewDelegate>)delegate {
    return [self initWithDelegate:delegate viewModel:nil];
}

- (instancetype)initWithViewModel:(BaseMainViewModel *)viewModel {
    return [self initWithDelegate:nil viewModel:viewModel];
}

- (instancetype)initWithDelegate:(id<BaseMainViewDelegate>)delegate viewModel:(BaseMainViewModel *)viewModel {
    self = [super init];
    if (self) {
        _delegate = delegate;
        _mainViewModel = viewModel;
    }
    
    return self;
}

- (void)setupSubViews {
    
}

- (void)updateView {
    
}

@end
