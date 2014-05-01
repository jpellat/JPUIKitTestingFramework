//
//  JPMockViewController.h
//  JPUIKitTestingFramework
//
//  Created by Jordi Pellat Massó on 22/04/14.
//  Copyright (c) 2014 Jordi Pellat Massó. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MKTObjectMock;

@interface JPMockViewController : UIViewController

@property (strong, nonatomic, readonly) id mock;

- (id)initWithMockedClass:(Class)mockedClass;
- (void)addViewControllerAndView:(UIViewController *)viewController;
- (void)addViewControllerAndView:(UIViewController *)viewController simulateAppearance:(BOOL)simulateAppearance;

- (BOOL)hasBeenAddedToParentViewController:(UIViewController *)viewController;

- (BOOL)isInsideViewControllerHierarchy:(UIViewController *)viewController;

@end
