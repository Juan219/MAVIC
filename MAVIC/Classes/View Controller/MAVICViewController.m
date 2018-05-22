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

#pragma mark - View Did Disappear
- (void)viewDidDisappear:(BOOL)animated {
  [super viewDidDisappear:animated];
  
  // Basic Leak Detection
  if (self.leakDetectorActionType != MAVICMemoryLeakDetectorActionTypeNone &&
      self.presentedViewController == nil &&
      (self.navigationController == nil || [self.navigationController.topViewController isEqual:self])) {
    __weak __typeof(self)weakSelf = self;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
      __strong __typeof(weakSelf)strongSelf = weakSelf;
      if (strongSelf) {
        switch (strongSelf.leakDetectorActionType) {
          case MAVICMemoryLeakDetectorActionTypeLog:
            NSLog(@"MAVIC: <%@:%p> Did not deallocate successfully.", NSStringFromClass([strongSelf class]), &strongSelf);
            break;
            
          case MAVICMemoryLeakDetectorActionTypeException:
            [NSException raise:@"MAVIC: Found a leaked view controller!" format:@"<%@:%p>: Did not deallocate successfully.", NSStringFromClass([strongSelf class]), &strongSelf];
            break;
          
          default:
            NSLog(@"MAVIC: A leak was found but the detection type was not supported. Choose between Log/Exception/None.");
            break;
        }
      }
    });
  }
}

@end
