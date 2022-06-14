//
//  RNTouchbar.m
//  RNTouchbar
//
//  Created by Dmitriy Loktev on 10/28/16.
//  Copyright © 2016 React Native Community. All rights reserved.
//

#import "RNTouchbarManager.h"
#import "RNTouchbarRootView.h"
#import <React/RCTViewManager.h>

@implementation RNTouchbarManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
    UIView *view = [[RNTouchbarRootView alloc] initWithEventDispatcher:self.bridge.eventDispatcher];
    return view;
}

- (RCTShadowView *)shadowView
{
    return nil;
}

@end
