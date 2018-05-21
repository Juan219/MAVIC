//
//  BaseViewController.m
//  Example
//
//  Created by Filip Busic on 5/20/18.
//  Copyright © 2018 Filip Busic. All rights reserved.
//

#import "BaseViewController.h"

@implementation BaseViewController

#pragma mark - Leak Detector Action Type
- (MAVICMemoryLeakDetectorActionType)leakDetectorActionType {
  return MAVICMemoryLeakDetectorActionTypeException;
}

@end
