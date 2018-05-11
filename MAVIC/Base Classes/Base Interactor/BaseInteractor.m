//
//  BaseInteractor.m
//  MAVIC
//
//  Created by Filip Busic on 5/4/18.
//  Copyright © 2018 Filip Busic. All rights reserved.
//

#import "BaseInteractor+Private.h"

@interface BaseInteractor ()
@property (nonatomic, strong, readwrite) Class receiverClass;
@end

@implementation BaseInteractor

#pragma mark - Designated init
- (instancetype)initWithReceiverClass:(Class)receiverClass {
  NSAssert(receiverClass, @"The Interactor was not found. Make sure that you create a class such as `LoginInteractor` for `LoginViewController`.");
  self = [super init];
  if (self) {
    self.receiverClass = receiverClass;
  }
  return self;
}

#pragma mark - Message Forwarding
- (NSMethodSignature *)methodSignatureForSelector:(SEL)selector {
  NSMethodSignature *signature = [super methodSignatureForSelector:selector];
  if (signature == nil) {
    signature = [self.receiverClass instanceMethodSignatureForSelector:selector];
  }
  return signature;
}
- (void)forwardInvocation:(NSInvocation *)anInvocation {
  if ([self.receiverClass instancesRespondToSelector:anInvocation.selector]) {
    [anInvocation invokeWithTarget:[self.receiverClass new]];
  }else{
    [super forwardInvocation:anInvocation];
  }
}

@end
