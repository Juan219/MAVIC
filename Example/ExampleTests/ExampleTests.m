//
//  ExampleTests.m
//  ExampleTests
//
//  Created by Filip Busic on 5/20/18.
//  Copyright © 2018 Filip Busic. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "LoginViewController.h"
#import "LoginInteractor.h"

@interface ExampleTests : XCTestCase

@end

@implementation ExampleTests

#pragma mark - Basic Interactor Tests
- (void)testInteractor {
  MAVICViewController *baseViewController = [[MAVICViewController alloc] init];
  XCTAssert(baseViewController.interactor, @"Should not be nil.");
}
- (void)testAutomaticInteractor {
  LoginViewController *loginVC = [[LoginViewController alloc] init];
  XCTAssert(loginVC.interactor, @"Should not be nil.");
  XCTAssert([loginVC.interactor logIn], @"Should not fail to log in.");
}

@end
