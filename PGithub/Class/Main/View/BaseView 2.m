//
//  BaseView.m
//  One
//
//  Created by 吴紫颖 on 2019/1/25.
//  Copyright © 2019 吴紫颖. All rights reserved.
//

#import "BaseView.h"

@implementation BaseView

#pragma mark - Life Cycle
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupSubViews];
        [self setupEvent];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setupSubViews];
        [self setupEvent];
    }
    return self;
}

- (void)setupSubViews {
    
}

- (void)setupEvent {
    
}

@end
