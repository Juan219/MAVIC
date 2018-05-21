//
//  MAVICViewController.m
//  MAVIC
//
//  Created by Filip Busic on 5/20/18.
//

#import "MAVICViewController.h"

@implementation MAVICViewController
@synthesize interactor = _interactor;

#pragma mark - Lazy Loaders
- (MAVICInteractor *)interactor {
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
