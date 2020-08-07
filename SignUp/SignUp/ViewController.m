//
//  ViewController.m
//  SignUp
//
//  Created by Dayside_Sam on 2020/08/07.
//  Copyright © 2020 Dayside_Sam. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //delegate 처리자는 스토리보드에서 self로 처리해두었음.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //이벤트가 흘러흘러 뷰컨트롤러까지 왔을 경우 처리.
    
    //빈화면 클릭시 입력끝냈다고 알려준다.
    [self.view endEditing:YES];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    //Focus를 잃어버리게 해서 키보드를 내린다.
    [textField resignFirstResponder];
    return YES;
}


- (IBAction)signUpAction:(id)sender {
    _resultTextview.text = [[NSString alloc]initWithFormat:@"%@ 님이 가입되셨습니다.", _nameTextField.text];
}
@end
