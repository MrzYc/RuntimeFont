//
//  UIFont+Runtime.m
//  RuntimeFont
//
//  Created by 赵永闯 on 2017/4/10.
//  Copyright © 2017年 赵永闯. All rights reserved.
//

#import "UIFont+Runtime.h"
#import <objc/runtime.h>

@implementation UIFont (Runtime)

+ (void)load {
    //获取替换后的类的方法
    Method newMethod = class_getClassMethod([self class], @selector(adjustFont:));
    //获取替换方法
    Method method = class_getClassMethod([self class], @selector(systemFontOfSize:));
    //提交替换方法 (新方法在前，替换的系统方法在后)
    method_exchangeImplementations(newMethod, method);    
}

+ (UIFont *)adjustFont:(CGFloat)fontSize {
    UIFont *newFont = nil;
    newFont = [UIFont adjustFont:fontSize * [UIScreen mainScreen].bounds.size.width / DesignWidth];
    return newFont;
}

@end
