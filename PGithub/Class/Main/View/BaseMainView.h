//
//  BaseMainView.h
//  One
//
//  Created by 吴紫颖 on 2019/1/25.
//  Copyright © 2019 吴紫颖. All rights reserved.
//

#import "BaseView.h"

NS_ASSUME_NONNULL_BEGIN

@class BaseMainViewModel;

@protocol BaseMainViewDelegate <NSObject>


@end

@interface BaseMainView : BaseView

@property (nonatomic, strong) BaseMainViewModel *mainViewModel;

/** mainView的代理 */
@property (nonatomic, weak) id<BaseMainViewDelegate> delegate;

- (instancetype)initWithDelegate:(id<BaseMainViewDelegate>)delegate;

- (instancetype)initWithDelegate:(nullable id<BaseMainViewDelegate>)delegate viewModel:(nullable BaseMainViewModel *)viewModel;

- (instancetype)initWithViewModel:(BaseMainViewModel *)viewModel;

/** 请求到数据后刷新UI */
- (void)updateView;

@end

NS_ASSUME_NONNULL_END
