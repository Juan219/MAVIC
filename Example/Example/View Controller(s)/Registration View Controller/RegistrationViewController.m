//
//  RegistrationViewController.m
//  MAVIC
//
//  Created by Filip Busic on 5/5/18.
//  Copyright © 2018 Filip Busic. All rights reserved.
//

#import "RegistrationViewController.h"
#import "RegistrationInteractor.h"

@implementation RegistrationViewController

#pragma mark - ViewDidLoad
- (void)viewDidLoad {
  [super viewDidLoad];
  
  // Register the user
  [self.interactor registerUser];
}

#pragma mark - IBAction(s)
- (IBAction)logInButtonAction:(id)sender {
  if ([self.interactor logIn]) {
    [self performSegueWithIdentifier:@"loggedInSegue" sender:nil];
  }
}

@end
