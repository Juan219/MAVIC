//
//  HomeViewController.m
//  MAVIC
//
//  Created by Filip Busic on 5/4/18.
//  Copyright © 2018 Filip Busic. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeInteractor.h"

@implementation HomeViewController

#pragma mark - ViewDidLoad
- (void)viewDidLoad {
  [super viewDidLoad];
  
  // Call some API
  [self.interactor callSomeAPI];
}

#pragma mark - IBAction(s)
- (IBAction)logOutButtonAction:(id)sender {
  [self performSegueWithIdentifier:@"logOutSegue" sender:nil];
}

@end
