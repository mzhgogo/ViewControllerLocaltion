//
//  UIViewController+SWIZZLocaltion.m
//  piccStudy
//
//  Created by EDZ on 2017/11/9.
//  Copyright © 2017年 EDZ. All rights reserved.
//

#import "UIViewController+SWIZZLocaltion.h"
#import <objc/runtime.h>

@implementation UIViewController (SWIZZLocaltion)

#ifdef DEBUG
+ (void)load{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Method orginWillAppear = class_getInstanceMethod([self class], @selector(viewWillAppear:));
        Method swizWillAppear = class_getInstanceMethod([self class], @selector(location_viewWillAppear:));
        bool isAddWillAppear = class_addMethod([self class], @selector(viewWillAppear:), method_getImplementation(swizWillAppear), method_getTypeEncoding(swizWillAppear));
        if (isAddWillAppear) {
            class_replaceMethod([self class], @selector(location_viewWillAppear:), method_getImplementation(orginWillAppear), method_getTypeEncoding(orginWillAppear));
        } else {
            method_exchangeImplementations(orginWillAppear, swizWillAppear);
        }
    });
}
#endif

- (void)location_viewWillAppear:(BOOL)animated{
    [self printViewLocaltiionAndJumpRelation];
    
    [self location_viewWillAppear:animated];
}


#pragma mark - SwizzMethods
- (void)printViewLocaltiionAndJumpRelation{
    if (![self isKindOfClass:[UITabBarController class]]&&![self isKindOfClass:[UINavigationController class]]) {
        NSString *logStr;
        if ([[self parentViewController] isKindOfClass:[UINavigationController class]]) {
            logStr = @"push跳转";
            if (self.presentingViewController) {
                logStr = @"present+Navi跳转";
            }
            for (UIViewController *viewControl in self.navigationController.viewControllers) {
                logStr = [logStr stringByAppendingFormat:@"-->%@",[viewControl.class description]];
            }
        }else if(self.presentingViewController){//presentingViewController 上一视图
            logStr = @"present跳转-->";
            if ([self.presentingViewController isKindOfClass:[UINavigationController class]]) {
                UINavigationController *navi = (UINavigationController *)self.presentingViewController;
                logStr = [logStr stringByAppendingFormat:@"%@-->%@",[[navi.viewControllers lastObject].class description],[self.class description]];
            }else{
                logStr = [logStr stringByAppendingFormat:@"%@-->%@",[self.presentingViewController.class description],[self.class description]];
            }
            
        }else{
            logStr = [NSString stringWithFormat:@"未知跳转-->%@",[self.class description]];
        }
        NSLog(@"强大的黑魔法 %@",logStr);
    }
}

@end
