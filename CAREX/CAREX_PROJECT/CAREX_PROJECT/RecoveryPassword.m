//
//  RecoveryPassword.m
//  CAREX_PROJECT
//
//  Created by User on 16.10.17.
//  Copyright © 2017 freshtech. All rights reserved.
//

#import "RecoveryPassword.h"

@interface RecoveryPassword ()<UITextFieldDelegate>
@property (assign, nonatomic) BOOL status;
@property (strong, nonatomic) NSString * messages;
@property (strong, nonatomic) NSString * phoneNumber;
@end

@implementation RecoveryPassword

#pragma mark ViewDidLoad

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.status = false;
    self.smsTextField.alpha = 0.f;
    UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(dismissKeyboard)];
    [self.view addGestureRecognizer:tap];
    
//    self.activityIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
//    self.activityIndicator.alpha = 0.f;
//    [self.view addSubview:self.activityIndicator];
//    self.activityIndicator.center = CGPointMake([[UIScreen mainScreen]bounds].size.width/2, [[UIScreen mainScreen]bounds].size.height/2);
//    self.activityIndicator.color = [UIColor whiteColor];
//    [self.view setUserInteractionEnabled:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void) dismissKeyboard{
    
    [self.textFieldNum resignFirstResponder];
}

-(void) textFieldDidBeginEditing:(UITextField *)textField{
    
    self.titleLabel.alpha = 0.f;
    CGPoint scrollPoint = CGPointMake(0, 130);
    [self.scrollView setContentOffset:scrollPoint animated:YES];
    
}

-(void)textFieldDidEndEditing:(UITextField*)textField{
    
    self.titleLabel.alpha = 1.f;
    [self.scrollView setContentOffset:CGPointZero animated:YES];
}

- (BOOL)textFieldShouldClear:(UITextField *)textField{
    self.textFieldNum.text = @"+7";
    return NO;
}
//
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    
//    if (self.status == false) {
//        
//        [self.view setUserInteractionEnabled:NO];
//        self.activityIndicator.alpha = 1.f;
//        [self.activityIndicator startAnimating];
//        
//        if ([textField isEqual:self.textFieldNum]) {
//            
//            NSMutableString *stringRange = [self.textFieldNum.text mutableCopy];
//            NSRange range = NSMakeRange(0, 1);
//            [stringRange deleteCharactersInRange:range];
//            self.phoneNumber = stringRange;
//            [self prepareForResetPassword:self.phoneNumber];
//        }
//        
//    } else {
//        
//        [self.view setUserInteractionEnabled:NO];
//        self.activityIndicator.alpha = 1.f;
//        [self.activityIndicator startAnimating];
//        
//        [self confirmResetPassword:self.phoneNumber confirmCode:self.smsTextField.text];
//    }
    
    return YES;
}

//
//-(void) animatedText {
//    
//    [UIView animateWithDuration:0.6f animations:^{
//        self.textFieldNum.alpha = 0.f;
//    } completion:^(BOOL finished) {
//        [UIView animateWithDuration:0.8f animations:^{
//            [self dismissKeyboard];
//            self.detailLabel.text = @"На Ваш номер отправлено SMS сообщение с кодом подтверждения";
//            self.smsTextField.alpha = 1.f;
//            
//        } completion:^(BOOL finished) {
//            self.status = true;
//        }];
//    }];
//    
//}

- (IBAction)recoveryAct:(id)sender {
    
//    if (self.status == false) {
//        
//        [self.view setUserInteractionEnabled:NO];
//        self.activityIndicator.alpha = 1.f;
//        [self.activityIndicator startAnimating];
//        
//        NSMutableString *stringRange = [self.textFieldNum.text mutableCopy];
//        NSRange range = NSMakeRange(0, 1);
//        [stringRange deleteCharactersInRange:range];
//        self.phoneNumber = stringRange;
//     //   [self prepareForResetPassword:self.phoneNumber];
//        
//    } else {
//        
//        [self.view setUserInteractionEnabled:NO];
//        self.activityIndicator.alpha = 1.f;
//        [self.activityIndicator startAnimating];
//        
//      //  [self confirmResetPassword:self.phoneNumber confirmCode:self.smsTextField.text];
//    }
}

- (IBAction)textFieldActTel:(id)sender {
    self.textFieldNum.text = @"+7";
}


@end
