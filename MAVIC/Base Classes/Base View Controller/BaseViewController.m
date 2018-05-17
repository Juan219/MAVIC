//
//  BaseViewController.m
//  MAVIC
//
//  Created by Filip Busic on 5/4/18.
//  Copyright © 2018 Filip Busic. All rights reserved.
//

#import "BaseViewController.h"

@implementation BaseViewController
@synthesize interactor = _interactor;

#pragma mark - Lazy Loaders
- (BaseInteractor *)interactor {
  if (_interactor == nil) {
    Class interactorClass = NSClassFromString([NSStringFromClass([self class])
                                               stringByReplacingOccurrencesOfString:@"ViewController"
                                               withString:@"Interactor"]);
    NSAssert(interactorClass, @"The interactor class wasn't found for that view controller. Make sure you follow the MAVIC paradigm, for example, LoginViewController would have a LoginInteractor.");
    _interactor = [[interactorClass alloc] init];
  }
  return _interactor;
}

@end
