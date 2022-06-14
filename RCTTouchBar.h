//
//  RCTTouchBar.h
//
//  Created by Dmitriy Loktev on 10/28/16.
//  Rearranged by Jihoo Byeon on 6/14/22
//  Copyright © 2016-2022 React Native Community. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>
#import "UIView+React.h"
#import <React/RCTEventDispatcher.h>
#import <React/RCTViewManager.h>

@interface NSWindow (Touchbar) <NSTouchBarDelegate>
@property (strong, nonatomic) NSCustomTouchBarItem *customViewItem;
@property (strong, nonatomic) NSMutableArray<NSView *> *touchBarItems;
@end

@interface RCTTouchBarRootView : NSView 
- (instancetype)initWithEventDispatcher:(RCTEventDispatcher *)eventDispatcher NS_DESIGNATED_INITIALIZER;
@property (strong) NSCustomTouchBarItem *customViewItem;
@end

@interface RCTTouchBarManager : RCTViewManager
@end
