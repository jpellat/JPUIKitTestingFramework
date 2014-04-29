//
//  JPMockView.h
//  JPUIKitTestingFramework
//
//  Created by Jordi Pellat Massó on 29/04/14.
//  Copyright (c) 2014 Jordi Pellat Massó. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JPMockView : UIView

@property (strong, nonatomic, readonly) id mock;
@property (strong, nonatomic) id viewModel;

- (id)initWithMockedClass:(Class)mockedClass;
@end
