//
//  MarzipanHelper.h
//  MarzipanDemoApp
//
//  Created by Tom on 2018-11-01.
//  Copyright © 2018 Q42. All rights reserved.
//

#import <UIKit/UIKit.h>

__attribute__((weak_import))
@interface _UIWindowToolbarItem : NSObject

- (id)initWithIdentifier:(id)arg1;

@end


__attribute__((weak_import))
@interface _UIWindowToolbarSegmentedControlItem : _UIWindowToolbarItem

@property(nonatomic) SEL action;
@property(nonatomic) __weak id target;
@property(readonly, nonatomic) long long selectedSegment;
@property(copy, nonatomic) NSArray *segmentTitles;

@end


__attribute__((weak_import))
@interface _UIWindowToolbarController : NSObject

+ (id)sharedWindowToolbarController;
@property(copy, nonatomic) NSSet *templateItems;
@property(copy, nonatomic) NSString *centeredItemIdentifier;
@property(copy, nonatomic) NSArray *itemIdentifiers;

@end


@interface UITabBarController (MarzipanHelper)

-(void)configureToolbarSegmentedControl;
-(void)selectSegment:(_UIWindowToolbarSegmentedControlItem *)control;

@end
