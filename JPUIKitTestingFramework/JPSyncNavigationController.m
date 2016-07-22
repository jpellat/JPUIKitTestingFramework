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
@property (strong, nonatomic) NSMutableArray *controllers;
@end

@implementation JPSyncNavigationController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _controllers = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)setViewControllers:(NSArray *)viewControllers
{
    self.controllers = [viewControllers mutableCopy];
    self.currentViewController = viewControllers[viewControllers.count-1];
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    [self.controllers addObject:viewController];
    self.currentViewController = viewController;
}

- (UIViewController *)popViewControllerAnimated:(BOOL)animated
{
    UIViewController* removedViewController =[self.controllers lastObject];
    [self.controllers removeObject:removedViewController];
    self.currentViewController = [self.controllers lastObject];
    
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
