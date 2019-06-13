//
//  UIView+MSViewBorder.h
//  MSViewBorder
//
//  Created by ms on 2019/6/13.
//  Copyright © 2019 ms. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (MSViewBorder)
typedef NS_ENUM(NSInteger,MSLineDirection){
    MSLineDirectionTop = 1 << 1,
    MSLineDirectionBottom = 1 << 2,
    MSLineDirectionLeft = 1 << 3,
    MSLineDirectionRight = 1 << 4
};

/**
 给view添加任意边框

 @param direction 指定边框的位置
 @param color 边框颜色
 @param heightOrwidth 边框宽度
 */
- (void)addLineDirection:(MSLineDirection)direction BackgroundColor:(UIColor *)color HeightOrWidth:(CGFloat)heightOrwidth;
@end

NS_ASSUME_NONNULL_END
