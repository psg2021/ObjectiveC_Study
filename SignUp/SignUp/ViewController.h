//
//  ViewController.h
//  SignUp
//
//  Created by Dayside_Sam on 2020/08/07.
//  Copyright © 2020 Dayside_Sam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UITextField *emailTextField;
@property (strong, nonatomic) IBOutlet UITextField *phoneNumberTextField;
@property (strong, nonatomic) IBOutlet UITextField *birthTextFiled;
@property (strong, nonatomic) IBOutlet UITextView *resultTextview;

- (IBAction)signUpAction:(id)sender;

@end

