//
//  OneMainView.m
//  PGithub
//
//  Created by 吴紫颖 on 2020/3/30.
//  Copyright © 2020 吴紫颖. All rights reserved.
//

#import "OneMainView.h"

@interface OneMainView ()

@property (nonatomic, strong) NSArray *arrayTitles;

@property (nonatomic, strong) NSMutableArray<UIButton *> *arrayButtons;

@end

@implementation OneMainView
#pragma mark - Event Response
- (void)onBtnSelectEvent:(UIButton *)btn {
    if (btn.selected) {
        return;
    }
    
    NSInteger index = btn.tag - 100;
    [self updateBtnSelectWithIndex:index];
}

- (void)updateBtnSelectWithIndex:(NSInteger)index {
    [self.arrayButtons enumerateObjectsUsingBlock:^(UIButton * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if (index == idx) {
            obj.selected = YES;
            obj.backgroundColor = kRGB(51, 168, 252);
        } else {
            obj.selected = NO;
            obj.backgroundColor = [UIColor whiteColor];
        }
    }];
}

#pragma mark - Super Class
- (void)setupSubViews {
    if ([self.arrayButtons count]) {
        [self.arrayButtons enumerateObjectsUsingBlock:^(UIButton * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [obj removeFromSuperview];
        }];
        [self.arrayButtons removeAllObjects];
    }
    
    CGFloat btnW = 100;
    CGFloat btnH = 37;
    CGFloat marginX = 12;
    CGFloat btnX = (kScreenWidth - 324) / 2;
    NSInteger maxCol = 3;
    
    [self.arrayTitles enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setTitle:obj forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor colorWithRed:100.0 / 255.0 green:100.0 / 255.0 blue:100.0 / 255.0 alpha:1] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(onBtnSelectEvent:) forControlEvents:UIControlEventTouchUpInside];
        btn.layer.borderColor = [UIColor colorWithRed:210.0 / 255.0 green:210.0 / 255.0 blue:210.0 / 255.0 alpha:1].CGColor;
        btn.layer.borderWidth = 1;
        btn.layer.cornerRadius = 3;
        btn.backgroundColor = [UIColor whiteColor];
        
        NSInteger col = idx % maxCol;   //列
        btn.x = btnX + col * (btnW + marginX);
        NSInteger row = idx / maxCol;   //行
        btn.y = 129 + row * (btnH + marginX);
        btn.width = btnW;
        btn.height = btnH;
        [self addSubview:btn];
        btn.tag = idx + 100;
        [self.arrayButtons addObject:btn];
        if (idx == 0) {
            btn.selected = YES;
            btn.backgroundColor = kRGB(51, 168, 252);
        }
    }];
}

#pragma mark - Setter & Getter
- (NSArray *)arrayTitles {
    if (!_arrayTitles) {
        _arrayTitles = @[@"10元", @"50元", @"100元", @"150元", @"200元", @"500元", @"1000元"];
    }
    return _arrayTitles;
}

- (NSMutableArray<UIButton *> *)arrayButtons {
    if (!_arrayButtons) {
        _arrayButtons = [[NSMutableArray alloc] init];
    }
    return _arrayButtons;
}

@end
