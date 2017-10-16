//
//  Enter.m
//  CAREX_PROJECT
//
//  Created by User on 16.10.17.
//  Copyright © 2017 freshtech. All rights reserved.
//

#import "Enter.h"

@interface Enter ()

@property (strong, nonatomic) NSString * messageAlert;


@end

@implementation Enter

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:YES animated:NO];
    
    self.textFieldNumber.placeholder = @"Номер телефона";
    self.textFieldPassword.placeholder = @"Пароль";
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

#pragma mark API


//
//-(void) authUser:(NSString *) username
//        password:(NSString *) password {
//    
//    [[API apiManager]authUser:username
//                     password:password
//     
//                    onSuccess:^(NSDictionary *responseObject) {
//                        
//                        [self.activityIndicator stopAnimating];
//                        [self.view setUserInteractionEnabled:YES];
//                        
//                        if ([responseObject objectForKey:@"token"]) {
//                            [[API apiManager]setToken:[NSString stringWithFormat:@"Token %@",[responseObject objectForKey:@"token"]]];
//                            [[Payment save]setPhoneNumber:username];
//                            NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
//                            [userDefaults setObject:@"true" forKey:@"token"];
//                            [self performSegueWithIdentifier:@"enter" sender:self];
//                            
//                        } else  {
//                            [self alerts];
//                        }
//                    }onFailure:^(NSError *error, NSInteger statusCode) {
//                        
//                        [self.view setUserInteractionEnabled:YES];
//                        [self.activityIndicator stopAnimating];
//                        [self alerts];
//                    }];
//    
//}
//-(void) alerts{
//    
//    UIAlertController * alert=   [UIAlertController
//                                  alertControllerWithTitle:@"Ошибка Авторизации!"
//                                  message:@"Неверное имя пользователя или пароль"
//                                  preferredStyle:UIAlertControllerStyleAlert];
//    
//    UIAlertAction* yesButton = [UIAlertAction
//                                actionWithTitle:@"OK"
//                                style:UIAlertActionStyleDefault
//                                handler:^(UIAlertAction * action)
//                                {
//                                }];
//    
//    [alert addAction:yesButton];
//    [self presentViewController:alert animated:YES completion:nil];
//}

#pragma mark TextField and Keyboard

-(void) dismissKeyboard{
    
    [self.textFieldNumber resignFirstResponder];
    [self.textFieldPassword resignFirstResponder];
}

-(void) textFieldDidBeginEditing:(UITextField *)textField{
    
    self.logo.alpha = 0;
    CGPoint scrollPoint = CGPointMake(0, 130);
    [self.scrollView setContentOffset:scrollPoint animated:NO];
    
}

-(void)textFieldDidEndEditing:(UITextField*)textField{
    
    self.logo.alpha = 1;
    [self.scrollView setContentOffset:CGPointZero animated:NO];
    
}

- (BOOL) textFieldShouldClear:(UITextField *)textField{
    
    if ([textField isEqual:self.textFieldNumber]) {
        textField.text = @"+7";
    } else {
        textField.text = @"";
    }
    // [textField resignFirstResponder];
    
    return NO;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
//    if ([textField isEqual:self.textFieldNumber]) {
//        [self.textFieldPassword becomeFirstResponder];
//    } else {
//        [self.view setUserInteractionEnabled:NO];
//        self.activityIndicator.alpha = 1.f;
//        [self.activityIndicator startAnimating];
//        
//        if (self.textFieldNumber.text.length <= 0) {
//            [self authUser:self.textFieldNumber.text password:self.textFieldPassword.text];
//            NSLog(@"%@,%@",self.textFieldNumber.text,self.textFieldPassword.text);
//        } else {
//            NSMutableString *stringRange = [self.textFieldNumber.text mutableCopy];
//            NSRange range = NSMakeRange(0, 1);
//            [stringRange deleteCharactersInRange:range];
//            [self authUser:stringRange password:self.textFieldPassword.text];
//            NSLog(@"%@,%@",stringRange,self.textFieldPassword.text);
//            
//        }
//    }
    return YES;
}

#pragma mark ActButton

- (IBAction)actEnterBtn:(id)sender {
    
//    [self.view setUserInteractionEnabled:NO];
//    self.activityIndicator.alpha = 1.f;
//    [self.activityIndicator startAnimating];
//    
//    if (self.textFieldNumber.text.length <= 0) {
//        [self authUser:self.textFieldNumber.text password:self.textFieldPassword.text];
//        
//    } else {
//        NSMutableString *stringRange = [self.textFieldNumber.text mutableCopy];
//        NSRange range = NSMakeRange(0, 1);
//        [stringRange deleteCharactersInRange:range];
//        [self authUser:stringRange password:self.textFieldPassword.text];
//    }
}

- (IBAction)actNumTel:(id)sender {
    self.textFieldNumber.text = @"+7";
}

- (IBAction)actPass:(id)sender {
    
}

@end
