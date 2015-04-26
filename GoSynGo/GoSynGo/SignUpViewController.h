//
//  SignUpViewController.h
//  GoSynGo
//
//  Created by Pengqing Xie on 15/4/25.
//  Copyright (c) 2015 Gosyngo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SignUpViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic) IBOutlet UITextField* emailTextField;
@property (nonatomic) IBOutlet UITextField* lastNameTextField;
@property (nonatomic) IBOutlet UITextField* firstNameTextField;
@property (nonatomic) IBOutlet UITextField* passwordTextField;
@property (nonatomic) IBOutlet UITextField* confirmPasswordTextField;

- (IBAction)signUp:(id)sender;
- (IBAction)cancel:(id)sender;

@end
