//
//  LoginVC.m
//  LoginAndSignUpIOS
//
//  Created by LIVSOULIN on 7/5/16.
//  Copyright (c) 2016 LIVSOULIN. All rights reserved.
//

#import "LoginVC.h"
#import "User.h"
#import "ProfileVC.h"

@implementation LoginVC

-(void)viewDidLoad{
    
    _nameTextField.delegate =self;
    _passwordTextField.delegate =self;
    
}
- (IBAction)loginButtonAction:(id)sender {
    
    if ([_nameTextField.text isEqual:@"admin"] && [_passwordTextField.text isEqual:@"123"]) {
        
        User * u=[User new];
        u.uid = 5;
        u.name =@"jonh";
        u.phonenumber = @"09898989";
        u.about = @"this is my profile information!";
        u.age = 21;

    
    [self performSegueWithIdentifier:@"ShowProfileSegues" sender:u];
    }
}
//for sent data get to SENDER
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([[segue identifier] isEqualToString:@"ShowProfileSegues"]) {
        
        //GET reference to the destination view controller
        ProfileVC * vc = [segue destinationViewController];
        
        //Pass any object to the view controller here, like...
        vc.user = sender;
    }
    
    
}



-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    NSInteger nextTag = textField.tag + 1;
    
    //try to find next responder
    UIResponder * nextResponder = [textField.superview.superview viewWithTag:nextTag];
    if (nextResponder) {
        //Found next responder, so set it
        [nextResponder becomeFirstResponder];
    } else {
        //Not found, so remove keyboard.
        [textField resignFirstResponder];
    }
    /*
     if (textField == _usernameTextField) {
     [_passwordTextField becomeFirstResponder];
     } else {
     [_passwordTextField resignFirstResponder];
     }
     */
    return YES;
}


@end
