//
//  SignUpViewController.m
//  GoSynGo
//
//  Created by Pengqing Xie on 15/4/25.
//  Copyright (c) 2015 Gosyngo. All rights reserved.
//

#import "SignUpViewController.h"

@interface SignUpViewController ()

@end

@implementation SignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _emailTextField.delegate = self;
    _lastNameTextField.delegate = self;
    _firstNameTextField.delegate = self;
    _passwordTextField.delegate = self;
    _confirmPasswordTextField.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

/*****************************************
             Button Listener
 *****************************************/

- (IBAction)signUp:(id)sender
{
    [self.presentingViewController dismissViewControllerAnimated:YES completion:^{
        
    }];
}


- (IBAction)cancel:(id)sender
{
    [self.presentingViewController dismissViewControllerAnimated:YES completion:^{
        
    }];
}


/*****************************************
           TextField Delegate
 *****************************************/
-(BOOL)textFieldShouldReturn:(UITextField*)textField
{
    NSInteger nextTag = textField.tag + 1;
    // Find next responder
    UIResponder* nextResponder = [textField.superview viewWithTag:nextTag];
    if (nextResponder) {
        // Found next responder, roll over to next text field
        [nextResponder becomeFirstResponder];
    } else {
        // Not found, dismiss keyboard.
        [textField resignFirstResponder];
    }
    return NO; // We do not want UITextField to insert line-breaks.
}

@end
