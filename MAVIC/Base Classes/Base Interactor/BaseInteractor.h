//
//  BaseInteractor.h
//  MAVIC
//
//  Created by Filip Busic on 5/4/18.
//  Copyright © 2018 Filip Busic. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BaseInteractor;
NS_PROTOCOL_REQUIRES_EXPLICIT_IMPLEMENTATION
@protocol InteractorProtocol <NSObject>
@required
@property (nonatomic, strong, readonly) __kindof BaseInteractor *interactor;
@end

@interface BaseInteractor : NSObject

/** This would point to the interactor class thats named after the view controller. I.e, the receiver class for LoginViewController would return LoginInteractor. */
@property (nonatomic, strong, readonly) Class receiverClass;

@end
