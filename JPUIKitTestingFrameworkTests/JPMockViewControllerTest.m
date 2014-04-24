//
//  JPUIKitTestingFramework - JPMockViewControllerTest.m
//  Copyright 2014 Jordi Pellat Massó. All rights reserved.
//
//  Created by: Jordi Pellat Massó
//

    // Class under test
#import "JPMockViewController.h"

    // Collaborators
#import "JPMockedViewController.h"

    // Test support
#import <XCTest/XCTest.h>

#define HC_SHORTHAND
#import <OCHamcrest/OCHamcrest.h>

#define MOCKITO_SHORTHAND
#import <OCMockito/OCMockito.h>


@interface JPMockViewControllerTest : XCTestCase
@end

@implementation JPMockViewControllerTest
{
    JPMockViewController *sut;
}

- (void)setUp
{
     sut = [[JPMockViewController alloc] initWithMockedClass:[JPMockedViewController class]];
}

- (void)test_callToUnimplementedMethod_forwardedToMock
{
    //When
    [(JPMockedViewController *)sut testMethod];
    
    //Then
    [verify(sut.mock) testMethod];
}

- (void)test_getView_returnsAView
{
    //When
    UIView *view = sut.view;
    
    //Then
    assertThat(view, is(instanceOf([UIView class])));
}
@end
