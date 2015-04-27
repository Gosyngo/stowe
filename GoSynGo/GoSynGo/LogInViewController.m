//
//  LogInViewController.m
//  GoSynGo
//
//  Created by Pengqing Xie on 4/24/15.
//  Copyright (c) 2015 GoSynGo. All rights reserved.
//

#import "LogInViewController.h"

@interface LogInViewController ()

@end

@implementation LogInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _emailTextField.delegate = self;
    _passwordTextField.delegate = self;
    
    //[self registerKeyboardNotification];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*****************************************
          Keyboard Notification
 *****************************************/
/*
- (void)registerKeyboardNotification
{
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillShow:)
                                                 name:UIKeyboardWillShowNotification
                                               object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillHide:)
                                                 name:UIKeyboardWillHideNotification
                                               object:nil];
}

- (void)keyboardWillShow:(NSNotification*)notification;
{
    // Get Keyboard Size and Animation Duration
    NSDictionary *info = [notification userInfo];
    CGRect kbRect = [[info objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue];
    NSNumber *durObj = [info objectForKey:UIKeyboardAnimationDurationUserInfoKey];
    kbRect = [self.view convertRect:kbRect fromView:nil];
    
    float kbHeight = -kbRect.size.height;   // Move Up
    float duration = durObj.floatValue;
    
    NSLog(@"keyboardWillShow with Height:%f and duration:%f", kbHeight, duration);
    
    // Move Text Field back to its original place
    [self animateTextField:kbHeight forDuration: duration];
}

- (void)keyboardWillHide:(NSNotification*)notification;
{
    // Get Keyboard Size and Animation Duration
    NSDictionary *info = [notification userInfo];
    CGRect kbRect = [[info objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue];
    NSNumber *durObj = [info objectForKey:UIKeyboardAnimationDurationUserInfoKey];
    kbRect = [self.view convertRect:kbRect fromView:nil];
    
    float kbHeight = kbRect.size.height;    // Move Down
    float duration = durObj.floatValue;
    
    NSLog(@"keyboardWillHide with Height:%f and duration:%f", kbHeight, duration);
    
    // Move Text Field back to its original place
    [self animateTextField:kbHeight forDuration: duration];
}
*/

/*****************************************
            TextField Delegate
 *****************************************/
// called when 'return' key pressed. return NO to ignore.
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    //NSLog(@"textFieldShouldReturn");
    
    if(textField == _emailTextField) {
        // Roll over to password textfield
        [_passwordTextField becomeFirstResponder];
    } else if(textField == _passwordTextField) {
        // dismiss keyboard
        [_passwordTextField resignFirstResponder];
    }
    return NO; // We do not want UITextField to insert line-breaks.
}

/*
- (void)animateTextField:(float)movement forDuration:(float)movementDuration {
    [UIView beginAnimations: @"animateTextField" context: nil];
    [UIView setAnimationBeginsFromCurrentState: YES];
    [UIView setAnimationDuration: movementDuration];
    self.view.frame = CGRectOffset(self.view.frame, 0, movement);
    [UIView commitAnimations];
}
*/

/****************************************
            Storyboard Segue
 *****************************************/
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    
    //MainViewController *mainViewContoller = [[MainViewController alloc] init];
    //mainViewContoller = [segue.destinationViewController];
    //segue.destinationViewController.email = _emailTextField.text;
    //mainViewContoller.email = _emailTextField.text;
    //mainViewContoller.password = _passwordTextField.text;
}

@end
