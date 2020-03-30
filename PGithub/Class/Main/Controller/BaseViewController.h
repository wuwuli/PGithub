//
//  BaseViewController.h
//  One
//
//  Created by 吴紫颖 on 2019/1/24.
//  Copyright © 2019 吴紫颖. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseViewController : UIViewController

/** 子类重写该方法绘制UI */
- (void)setupSubViews;

/** 子类重写导航栏 */
- (void)setupNavigation;

@end

NS_ASSUME_NONNULL_END
