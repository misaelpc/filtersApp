//
//  ViewController.m
//  PhotoFilters
//
//  Created by Misael Pérez Chamorro on 9/22/14.
//  Copyright (c) 2014 Misael Pérez Chamorro. All rights reserved.
//

#import "RKULoginViewController.h"

@interface RKULoginViewController ()

@end

@implementation RKULoginViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  [self.userNameTextField setupFieldName:@"Name"];
  [self.passwordTextField setupFieldName:@"Password"];
  [self.userNameTextField setDelegate:self];
  [self.passwordTextField setDelegate:self];
  
  // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (void) textFieldDidBeginEditing:(UITextField *)textField{
  
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
  if (textField == self.userNameTextField) {
    [self.passwordTextField becomeFirstResponder];
  }
  else if (textField == self.passwordTextField) {
    [self.passwordTextField resignFirstResponder];
  }
  return true;
}


@end
