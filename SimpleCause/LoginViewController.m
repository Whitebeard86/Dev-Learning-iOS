//
//  LoginViewController.m
//  SimpleCause
//
//  Created by João Alves on 10/21/15.
//  Copyright © 2015 Learn. All rights reserved.
//

#import "LoginViewController.h"
#import <ParseUI/ParseUI.h>
#import <Parse/Parse.h>

@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

@end

@implementation LoginViewController

- (IBAction)loginBtnClicked:(id)sender {
    
    PFLogInViewController *view = [[PFLogInViewController alloc] init];
    [view setDelegate:self];
    
    [self presentViewController:view animated:YES completion:NULL];
    
    
    /*
    if([self.usernameTextField.text isEqualToString:@"admin"]) {
        [self performSegueWithIdentifier:@"HomeSegue" sender:nil];
    } else {
        UIAlertView *alertView = [[UIAlertView alloc]
                                  initWithTitle:@"Ups!"
                                  message:@"Invalid Credentials"
                                  delegate:self
                                  cancelButtonTitle:@"Cancel"
                                  otherButtonTitles:@"OK", nil];
        
        [alertView show];
    }*/
}

@end