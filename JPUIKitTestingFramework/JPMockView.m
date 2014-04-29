//
//  JPMockView.m
//  JPUIKitTestingFramework
//
//  Created by Jordi Pellat Massó on 29/04/14.
//  Copyright (c) 2014 Jordi Pellat Massó. All rights reserved.
//

#import "JPMockView.h"
#define HC_SHORTHAND
#import <OCHamcrest/OCHamcrest.h>

#define MOCKITO_SHORTHAND
#import <OCMockito/OCMockito.h>

@implementation JPMockView

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

@end
