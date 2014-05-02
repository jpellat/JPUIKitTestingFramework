//
//  JPSyncNavigationController.m
//  JPUIKitTestingFramework
//
//  Created by Jordi Pellat Massó on 02/05/14.
//  Copyright (c) 2014 Jordi Pellat Massó. All rights reserved.
//

#import "JPSyncNavigationController.h"

@interface JPSyncNavigationController ()
@property (strong, nonatomic) UIViewController *currentViewController;
@property (strong, nonatomic) NSArray *controllers;
@end

@implementation JPSyncNavigationController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)setViewControllers:(NSArray *)viewControllers
{
    self.controllers = viewControllers;
    self.currentViewController = viewControllers[viewControllers.count-1];
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    self.controllers = [self.controllers arrayByAddingObject:viewController];
    self.currentViewController = viewController;
}

- (UIViewController *)popViewControllerAnimated:(BOOL)animated
{
    NSMutableArray *mutableViewControllers = [self.controllers mutableCopy];
    UIViewController* removedViewController =self.controllers[self.controllers.count-1];
    [mutableViewControllers removeObject:removedViewController];
    self.controllers = [mutableViewControllers copy];
    self.currentViewController = self.controllers[self.controllers.count-1];
    
    return removedViewController;
}

- (void)setCurrentViewController:(UIViewController *)currentViewController
{
    if (_currentViewController) {
        [_currentViewController willMoveToParentViewController:nil];
        [_currentViewController.view removeFromSuperview];
        [_currentViewController removeFromParentViewController];
    }
    
    _currentViewController = currentViewController;
    if(_currentViewController)
    {
        [self addChildViewController:_currentViewController];
        [self.view addSubview:_currentViewController.view];
        [_currentViewController didMoveToParentViewController:self];
    }

}
@end
