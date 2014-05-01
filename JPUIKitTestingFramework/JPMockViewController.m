//
//  JPMockViewController.m
//  JPUIKitTestingFramework
//
//  Created by Jordi Pellat Massó on 22/04/14.
//  Copyright (c) 2014 Jordi Pellat Massó. All rights reserved.
//

#import "JPMockViewController.h"
#define HC_SHORTHAND
#import <OCHamcrest/OCHamcrest.h>

#define MOCKITO_SHORTHAND
#import <OCMockito/OCMockito.h>

@interface JPMockViewController ()

@end

@implementation JPMockViewController

- (id)initWithMockedClass:(Class)mockedClass
{
    if (self = [super init]) {
        _mock = mock(mockedClass);
    }
    
    return self;
}

- (id)forwardingTargetForSelector:(SEL)aSelector
{
    return self.mock;
}

- (void)addViewControllerAndView:(UIViewController *)viewController
{
    [self addViewControllerAndView:viewController simulateAppearance:NO];
}

- (void)addViewControllerAndView:(UIViewController *)viewController simulateAppearance:(BOOL)simulateAppearance
{
    [self addChildViewController:viewController];
    [self.view addSubview:viewController.view];
    [viewController didMoveToParentViewController:self];

    if(simulateAppearance)
    {
        [viewController viewWillAppear:YES];
        [viewController viewDidAppear:YES];
    }
}

- (BOOL)hasBeenAddedToParentViewController:(UIViewController *)viewController
{
    return self.parentViewController == viewController;
}

@end
