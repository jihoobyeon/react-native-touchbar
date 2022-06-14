#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>
#import "UIView+React.h"
#import <React/RCTEventDispatcher.h>
#import <React/RCTViewManager.h>

@interface NSWindow (Touchbar) <NSTouchBarDelegate>
@property (strong, nonatomic) NSCustomTouchBarItem *customViewItem;
@property (strong, nonatomic) NSMutableArray<NSView *> *touchBarItems;
@end

@interface RNTouchbarRootView : NSView 
@interface RNTouchbarManager : RCTViewManager

- (instancetype)initWithEventDispatcher:(RCTEventDispatcher *)eventDispatcher NS_DESIGNATED_INITIALIZER;
@property (strong) NSCustomTouchBarItem *customViewItem;
@end
