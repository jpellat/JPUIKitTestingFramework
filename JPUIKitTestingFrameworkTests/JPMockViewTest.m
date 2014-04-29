//
//  JPUIKitTestingFramework - JPMockViewTest.m
//  Copyright 2014 Jordi Pellat Massó. All rights reserved.
//
//  Created by: Jordi Pellat Massó
//

    // Class under test
#import "JPMockView.h"

    // Collaborators
#import "JPMockedView.h"

    // Test support
#import <XCTest/XCTest.h>

#define HC_SHORTHAND
#import <OCHamcrest/OCHamcrest.h>

#define MOCKITO_SHORTHAND
#import <OCMockito/OCMockito.h>


@interface JPMockViewTest : XCTestCase
@end

@implementation JPMockViewTest
{
    JPMockView *sut;
}

- (void)setUp
{
    sut = [[JPMockView alloc] initWithMockedClass:[JPMockedView class]];
}

- (void)test_callToUnimplementedMethod_forwardedToMock
{
    //When
    [(JPMockedView *)sut testMethod];
    
    //Then
    [verify(sut.mock) testMethod];
}

@end
