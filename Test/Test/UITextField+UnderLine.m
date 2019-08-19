//
//  UITextField+UnderLine.m
//  Test
//
//  Created by spring on 2019/8/18.
//  Copyright © 2019 spring. All rights reserved.
//

#import "UITextField+UnderLine.h"
#import <UIKit/UIKit.h>

@implementation UITextField (UnderLine)
- (void)drawRect:(CGRect)rect{
    CGContextRef context = UIGraphicsGetCurrentContext();
    //设置下划线的颜色
    CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
    //设置textField的frame
    CGContextFillRect(context,CGRectMake(0,CGRectGetHeight(self.frame) -0.5,CGRectGetWidth(self.frame),0.5));
    
}

@end
