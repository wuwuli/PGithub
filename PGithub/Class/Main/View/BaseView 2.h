//
//  BaseView.h
//  One
//
//  Created by 吴紫颖 on 2019/1/25.
//  Copyright © 2019 吴紫颖. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseView : UIView

/** 子类重写绘制UI */
- (void)setupSubViews;

/** 子类重写添加事件绑定 */
- (void)setupEvent;

@end

NS_ASSUME_NONNULL_END
