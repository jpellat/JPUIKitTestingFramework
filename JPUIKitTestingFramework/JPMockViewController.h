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

@property (strong, nonatomic, readonly) MKTObjectMock* mock;

- (id)initWithMockedClass:(Class)mockedClass;
@end
