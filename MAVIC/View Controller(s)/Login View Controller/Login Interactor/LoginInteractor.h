//
//  LoginInteractor.h
//  MAVIC
//
//  Created by Filip Busic on 5/4/18.
//  Copyright © 2018 Filip Busic. All rights reserved.
//

#import "BaseInteractor.h"

@interface LoginInteractor : BaseInteractor

/** Attempts to log the user in. */
- (BOOL)logIn;

@end
