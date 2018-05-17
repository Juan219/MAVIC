//
//  MAVICTests.m
//  MAVICTests
//
//  Created by Filip Busic on 5/5/18.
//  Copyright © 2018 Filip Busic. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BaseViewController.h"
#import "LoginViewController.h"
#import "LoginInteractor.h"

@interface MAVICTests : XCTestCase
@end

@implementation MAVICTests

#pragma mark - Basic Interactor Tests
- (void)testInteractor {
  BaseViewController *baseViewController = [[BaseViewController alloc] init];
  XCTAssert(baseViewController.interactor, @"Should not be nil.");
}
- (void)testAutomaticInteractor {
  LoginViewController *loginVC = [[LoginViewController alloc] init];
  XCTAssert(loginVC.interactor, @"Should not be nil.");
  XCTAssert([loginVC.interactor logIn], @"Should not fail to log in.");
}

@end
