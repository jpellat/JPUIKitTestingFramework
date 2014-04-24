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
    // test fixture ivars go here
}

- (void)test_createMockViewController_returnsMockViewController
{
    //When
    JPMockViewController *mockViewController = [[JPMockViewController alloc] initWithMockedClass:[JPMockedViewController class]];
   
    //Then
    assertThat(mockViewController, is(notNilValue()));
}

- (void)test_callToUnimplementedMethod_forwardedToMock
{
    //Given
    JPMockViewController *mockViewController = [[JPMockViewController alloc] initWithMockedClass:[JPMockedViewController class]];
    
    //When
    [(JPMockedViewController *)mockViewController testMethod];
    
    //Then
    [verify(mockViewController.mock) testMethod];
}
@end
