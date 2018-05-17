//
//  RegistrationInteractor.h
//  MAVIC
//
//  Created by Filip Busic on 5/5/18.
//  Copyright © 2018 Filip Busic. All rights reserved.
//

#import "LoginInteractor.h"

/** This interactor is a subclass of LoginInteractor to demonstrate that two interactors can be combined (i.e, subclassed), and allow for a versatile way of calling messages. */
@interface RegistrationInteractor : LoginInteractor

/** Attempts to register a new user. */
- (BOOL)registerUser;

@end
