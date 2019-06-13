//
//  UIView+MSViewBorder.m
//  MSViewBorder
//
//  Created by ms on 2019/6/13.
//  Copyright © 2019 ms. All rights reserved.
//

#import "UIView+MSViewBorder.h"
#import <Masonry/Masonry.h>

@implementation UIView (MSViewBorder)

- (void)addLineDirection:(MSLineDirection)direction BackgroundColor:(UIColor *)color HeightOrWidth:(CGFloat)heightOrwidth{
    
    if (direction & MSLineDirectionTop) {
        UIView *line = [UIView new];
        line.backgroundColor = color;
        [self addSubview:line];
        [line mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.equalTo(self);
            make.top.equalTo(self);
            make.height.equalTo(@(heightOrwidth));
        }];
    }
    
    if (direction & MSLineDirectionBottom) {
        UIView *line = [UIView new];
        line.backgroundColor = color;
        [self addSubview:line];
        [line mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.equalTo(self);
            make.bottom.equalTo(self);
            make.height.equalTo(@(heightOrwidth));
        }];
    }
    
    if (direction & MSLineDirectionLeft) {
        UIView *line = [UIView new];
        line.backgroundColor = color;
        [self addSubview:line];
        [line mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.equalTo(@(heightOrwidth));
            make.left.equalTo(self);
            make.top.bottom.equalTo(self);
        }];
    }
    
    if (direction & MSLineDirectionRight) {
        UIView *line = [UIView new];
        line.backgroundColor = color;
        [self addSubview:line];
        [line mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.equalTo(@(heightOrwidth));
            make.right.equalTo(self);
            make.top.bottom.equalTo(self);
        }];
    }
}
@end
