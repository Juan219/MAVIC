//
//  MAVICTests.m
//  MAVICTests
//
//  Created by Filip Busic on 5/5/18.
//  Copyright © 2018 Filip Busic. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BaseViewController.h"
#import "HomeViewController.h"
#import "HomeInteractor.h"
#import "LoginInteractor.h"
#import "TestInteractor.h"

@interface MAVICTests : XCTestCase
@end

@implementation MAVICTests

#pragma mark - Performance Tests
- (void)testClassMethodPerformance {
  [self measureBlock:^{
    for (int i = 0; i < 1000000; i++) {
      [TestInteractor someInt];
    }
  }];
}
- (void)testInstanceMethodPerformance {
  [self measureBlock:^{
    for (int i = 0; i < 1000000; i++) {
      // Note that the interactor is allocated for every message that gets forwarded. This is the reason to why class methods are cheaper. You could do an NSSet of interactors and return the previously allocated one, however, then you're just replacing the allocation problem with an unknown ownership problem. Of course, there are ways around that as well, but without complicating things too much, class methods are way more convenient and effective with MAVIC.
      TestInteractor *interactor = [TestInteractor new];
      [interactor someInt];
    }
  }];
}

#pragma mark - Basic Interactor Tests
- (void)testLoginInteractor {
  XCTAssert([LoginInteractor logIn], @"Log in failed.");
}
- (void)testInteractor {
  BaseViewController *baseViewController = [[BaseViewController alloc] init];
  XCTAssert(baseViewController.interactor, @"");
  XCTAssert(baseViewController.interactor.receiverClass == [BaseInteractor class], @"");
}
- (void)testAutomaticInteractor {
  HomeViewController *homeViewController = [[HomeViewController alloc] init];
  XCTAssert(homeViewController.interactor, @"");
  XCTAssert(homeViewController.interactor.receiverClass == [HomeInteractor class], @"");
}

@end
