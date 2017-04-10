//
//  UIButton+AcceptTouchEvent.h
//  UIButton_Category
//
//  Created by CaoMeng on 2017/4/10.
//  Copyright © 2017年 CM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (AcceptTouchEvent)

/**
 设置Touch事件间隔时间
 */
@property (assign, nonatomic) NSTimeInterval acceptEventInterval;

@end
