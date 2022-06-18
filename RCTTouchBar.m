//
//  RCTTouchBar.m
//
//  Created by Dmitriy Loktev on 10/28/16.
//  Rearranged by Jihoo Byeon on 6/14/22
//  Copyright © 2016-2022 React Native Community. All rights reserved.
//

#import "RCTTouchBar.h"
#import <objc/runtime.h>

static NSTouchBarCustomizationIdentifier RCTTouchBarIdentifier = @"RCTTouchBarIdentifier";

static void * TouchBarItemsKey = &TouchBarItemsKey;

@implementation NSWindow (Touchbar)

- (NSMutableArray *)touchBarItems {
    return objc_getAssociatedObject(self, TouchBarItemsKey);
}

- (void)setTouchBarItems:(NSMutableArray *)touchBarItems {
    objc_setAssociatedObject(self, TouchBarItemsKey, touchBarItems, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSTouchBar *)makeTouchBar
{
    NSTouchBar *bar = [[NSTouchBar alloc] init];
    bar.delegate = self;
    bar.customizationIdentifier = RCTTouchBarIdentifier;

    // Set the default ordering of items.
    NSMutableArray *ids = [[NSMutableArray alloc] init];
    [self.touchBarItems enumerateObjectsUsingBlock:^(id touchItem, NSUInteger index, BOOL *stop) {
        NSNumber *reactTag = ((NSCustomTouchBarItem *)touchItem).view.reactTag;
        [ids addObject:reactTag.stringValue];
    }];

    bar.defaultItemIdentifiers = [ids arrayByAddingObjectsFromArray:@[NSTouchBarItemIdentifierOtherItemsProxy]];
    bar.customizationAllowedItemIdentifiers = @[ids];

    return bar;
}

- (nullable NSTouchBarItem *)touchBar:(NSTouchBar *)touchBar makeItemForIdentifier:(NSTouchBarItemIdentifier)identifier
{
    if (!self.touchBarItems || self.touchBarItems.count == 0) {
        return nil;
    }
    NSCustomTouchBarItem __block *toRender = nil;
    [self.touchBarItems enumerateObjectsUsingBlock:^(id touchItem, NSUInteger index, BOOL *stop) {
        if (((NSCustomTouchBarItem *)touchItem).view.reactTag.stringValue == identifier) {
            toRender = touchItem;
        }
    }];
    return toRender;
}

@end

@implementation RCTTouchBarRootView
{
    NSMutableArray<NSView *> *toolbarItems;
}

-(instancetype)initWithEventDispatcher:(RCTEventDispatcher *)eventDispatcher
{
    if ((self = [super initWithFrame:CGRectZero])) {
        [NSWindow].touchBarItems = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)insertReactSubview:(NSView *)subview atIndex:(NSInteger)atIndex
{
    [super insertReactSubview:subview atIndex:atIndex];
    NSCustomTouchBarItem *touchItem = [[NSCustomTouchBarItem alloc] initWithIdentifier:subview.reactTag.stringValue];
    touchItem.view = subview;
    [[NSWindow].touchBarItems insertObject:touchItem atIndex:atIndex];
    [NSWindow].touchBar = nil;
}

- (void)removeReactSubview:(NSView *)subview
{
    [super removeReactSubview:subview];
    self.touchBar = nil;
}

- (void)didUpdateReactSubviews
{
    self.touchBar = nil;

    // Do nothing, as subviews are inserted by insertReactSubview:
}

@end

@implementation RCTTouchBarManager

RCT_EXPORT_MODULE(RCTTouchBar)

- (NSView *)view
{
    NSView *view = [[RCTTouchBarRootView alloc] initWithEventDispatcher:self.bridge.eventDispatcher];
    return view;
}

- (RCTShadowView *)shadowView
{
    return nil;
}

@end
