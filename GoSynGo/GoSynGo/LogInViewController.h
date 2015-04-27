//
//  LogInViewController.h
//  GoSynGo
//
//  Created by Pengqing Xie on 4/24/15.
//  Copyright (c) 2015 GoSynGo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeViewController.h"

@interface LogInViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic) IBOutlet UITextField* emailTextField;
@property (nonatomic) IBOutlet UITextField* passwordTextField;

/*
- (void)registerKeyboardNotification;
- (void)keyboardWillShow:(NSNotification*)notification;
- (void)keyboardWillHide:(NSNotification*)notification;

- (void)animateTextField:(float)movement forDuration:(float)movementDuration;
*/

@end
