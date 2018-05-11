//
//  LoginViewController.m
//  MAVIC
//
//  Created by Filip Busic on 5/4/18.
//  Copyright © 2018 Filip Busic. All rights reserved.
//

#import "LoginViewController.h"
#import "LoginInteractor.h"

@implementation LoginViewController

#pragma mark - IBAction(s)
- (IBAction)logInButtonAction:(id)sender {
  // Power of MAVIC :)
  if ([self.interactor logIn]) {
    [self performSegueWithIdentifier:@"loggedInSegue" sender:nil];
  }
}
- (IBAction)unwindToLoginViewController:(UIStoryboardSegue *)segue {
  NSLog(@"Welcome back!");
}

@end
