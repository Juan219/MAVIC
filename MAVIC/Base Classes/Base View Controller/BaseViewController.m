//
//  BaseViewController.m
//  MAVIC
//
//  Created by Filip Busic on 5/4/18.
//  Copyright © 2018 Filip Busic. All rights reserved.
//

#import "BaseViewController.h"
#import "BaseInteractor+Private.h"

@implementation BaseViewController
@synthesize interactor = _interactor;

#pragma mark - Lazy loaders
- (BaseInteractor *)interactor {
  if (_interactor == nil) {
    _interactor = [[BaseInteractor alloc] initWithReceiverClass:NSClassFromString([NSStringFromClass([self class])
                                                                                   stringByReplacingOccurrencesOfString:@"ViewController"
                                                                                   withString:@"Interactor"])];
  }
  return _interactor;
}

@end
