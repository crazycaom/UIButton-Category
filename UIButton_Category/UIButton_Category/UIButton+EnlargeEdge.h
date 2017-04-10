//
//  UIButton+EnlargeEdge.h
//  UIButton_Category
//
//  Created by CaoMeng on 2017/4/10.
//  Copyright © 2017年 CM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (EnlargeEdge)

/**
 扩大点击范围

 @param size 要增加的上, 下, 左, 右范围.
 */
- (void)setEnlargeEdge:(CGFloat) size;


/**
 扩大按钮指定点击范围

 @param top 上部分距离
 @param right 右边距离
 @param bottom 底部距离
 @param left 左边距离
 */
- (void)setEnlargeEdgeWithTop:(CGFloat) top right:(CGFloat) right bottom:(CGFloat) bottom left:(CGFloat) left;

@end
