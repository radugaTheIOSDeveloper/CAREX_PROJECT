//
//  ConfirmRegistet.m
//  CAREX_PROJECT
//
//  Created by User on 11.10.17.
//  Copyright © 2017 freshtech. All rights reserved.
//

#import "ConfirmRegistet.h"

@interface ConfirmRegistet () <UITextFieldDelegate>


@property (strong, nonatomic) NSString * messages;
@property (strong, nonatomic) NSString * typeMessages;

@end

@implementation ConfirmRegistet

- (void)viewDidLoad {
    
    [super viewDidLoad];
    NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
    
    self.confirmNumber.placeholder = @"Код подтверждения";
//    [userDefaults setInteger:1 forKey:@"need_activate"];
//    [userDefaults setObject:self.saveTelephone forKey:@"user_phone"];
    
//    self.activityIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
//    self.activityIndicator.alpha = 0.f;
//    [self.view addSubview:self.activityIndicator];
//    self.activityIndicator.center = CGPointMake([[UIScreen mainScreen]bounds].size.width/2, [[UIScreen mainScreen]bounds].size.height/2);
//    self.activityIndicator.color = [UIColor whiteColor];
//    [self.view setUserInteractionEnabled:YES];
//    
//    UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(dismissKeyboard)];
//    [self.view addGestureRecognizer:tap];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark API
//
//-(void) confirmRegister:(NSString *)telNumber
//                confirm:(NSString *)confirm{
//    
//    [[API apiManager]confirmRegistr:telNumber
//                            confirm:confirm
//                          onSuccess:^(NSDictionary *responseObject) {
//                              
//                              [self.activityIndicator stopAnimating];
//                              [self.view setUserInteractionEnabled:YES];
//                              
//                              if ([responseObject objectForKey:@"message"]) {
//                                  self.messages = [responseObject objectForKey:@"message"];
//                                  [self alerts];
//                              } else {
//                                  [self performSegueWithIdentifier:@"setPass" sender:self];
//                                  
//                              }
//                              
//                          }                          onFailure:^(NSError *error, NSInteger statusCode) {
//                              [self.activityIndicator stopAnimating];
//                              [self.view setUserInteractionEnabled:YES];
//                              self.messages = @"Повторите попытку";
//                              [self alerts];
//                          }];
//}

//-(void) alerts{
//    
//    UIAlertController * alert=   [UIAlertController
//                                  alertControllerWithTitle:@"Ошибка!"
//                                  message:self.messages
//                                  preferredStyle:UIAlertControllerStyleAlert];
//    
//    UIAlertAction* yesButton = [UIAlertAction
//                                actionWithTitle:@"OK"
//                                style:UIAlertActionStyleDefault
//                                handler:^(UIAlertAction * action)
//                                {
//                                    
//                                }];
//    [alert addAction:yesButton];
//    [self presentViewController:alert animated:YES completion:nil];
//}

#pragma mark TextField and Keyboard

-(void) dismissKeyboard{
    [self.confirmNumber resignFirstResponder];
}

-(void) textFieldDidBeginEditing:(UITextField *)textField{
    self.titleLabel.alpha = 0.f;
    CGPoint scrollPoint = CGPointMake(0, 120);
    [self.scrollView setContentOffset:scrollPoint animated:YES];
}

-(void)textFieldDidEndEditing:(UITextField*)textField{
    self.titleLabel.alpha = 1.f;
    [self.scrollView setContentOffset:CGPointZero animated:YES];
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    return YES;
}

//- (BOOL)textFieldShouldReturn:(UITextField *)textField{
//    
//    if ([textField isEqual:self.confirmNumber]) {
//        self.activityIndicator.alpha = 1.f;
//        [self.activityIndicator startAnimating];
//        [self confirmRegister:self.saveTelephone confirm:self.confirmNumber.text];
//    }
//    return YES;
//}

#pragma mark Button action

- (IBAction)buttonConfirm:(id)sender {
    [self performSegueWithIdentifier:@"setPass" sender:self];

    
//    self.activityIndicator.alpha = 1.f;
//    [self.activityIndicator startAnimating];
//    [self confirmRegister:self.saveTelephone confirm:self.confirmNumber.text];
    
}

- (IBAction)actConfirm:(id)sender {
    
}


@end
