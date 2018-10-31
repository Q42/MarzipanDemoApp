//
//  MarzipanHelper.m
//  MarzipanDemoApp
//
//  Created by Tom on 2018-11-01.
//  Copyright © 2018 Q42. All rights reserved.
//

#import "MarzipanHelper.h"


@implementation UITabBarController (MarzipanHelper)

-(void)configureToolbarSegmentedControl {

  // If shared window toolbar controller object doesn't exist, we're on iOS: exit early
  if (!_UIWindowToolbarController.sharedWindowToolbarController) { return; }

  // Create a list of titles for each tab
  NSMutableArray<NSString *> *titles = [NSMutableArray new];
  for (UITabBarItem *item in self.tabBar.items) {
    [titles addObject:item.title];
  }

  // Create a segmented control item, using the tab titles
  _UIWindowToolbarSegmentedControlItem *segment = [[_UIWindowToolbarSegmentedControlItem alloc] initWithIdentifier:@"toolbar.segementedcontrol"];
  segment.segmentTitles = titles;
  segment.action = @selector(selectSegment:);
  segment.target = self;


  // Add the segmented control item to the shared window toolbar controller
  _UIWindowToolbarController *controller = _UIWindowToolbarController.sharedWindowToolbarController;
  controller.templateItems = [NSSet setWithArray:@[ segment]];
  controller.itemIdentifiers = @[@"toolbar.segementedcontrol"];
  controller.centeredItemIdentifier = @"toolbar.segementedcontrol";
}

-(void)selectSegment:(_UIWindowToolbarSegmentedControlItem *)control {
  self.selectedIndex = control.selectedSegment;
}

@end
