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

@interface MAVICTests : XCTestCase
@end

@implementation MAVICTests

- (void)testLoginInteractor {
  LoginInteractor *interactor = [[LoginInteractor alloc] init];
  XCTAssert(interactor, @"Interactor should not be nil");
  XCTAssert([interactor logIn], @"Log in failed.");
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
