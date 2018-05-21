//
//  LoginInteractor.h
//  MAVIC
//
//  Created by Filip Busic on 5/4/18.
//  Copyright © 2018 Filip Busic. All rights reserved.
//

#import <MAVIC/MAVICInteractor.h>

@interface LoginInteractor : MAVICInteractor

/** Attempts to log the user in. */
- (BOOL)logIn;

@end
