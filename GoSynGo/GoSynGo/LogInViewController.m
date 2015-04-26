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
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// called when 'return' key pressed. return NO to ignore.
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if(textField == _emailTextField)
    {
        // Roll over to password textfield
        [_passwordTextField becomeFirstResponder];
    }
    else if(textField == _passwordTextField)
    {
        // dismiss keyboard
        [_passwordTextField resignFirstResponder];
    }
    return NO; // We do not want UITextField to insert line-breaks.
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
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
