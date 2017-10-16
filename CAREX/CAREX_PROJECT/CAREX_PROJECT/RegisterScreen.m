//
//  RegisterScreen.m
//  CAREX_PROJECT
//
//  Created by User on 11.10.17.
//  Copyright © 2017 freshtech. All rights reserved.
//

#import "RegisterScreen.h"

@interface RegisterScreen ()

@end

@implementation RegisterScreen

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationController setNavigationBarHidden:YES animated:NO];
    self.textField.placeholder = @"Номер телефона";
    UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(dismissKeyboard)];
    [self.view addGestureRecognizer:tap];
    
//    self.activityIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
//    self.activityIndicator.alpha = 0.f;
//    [self.view addSubview:self.activityIndicator];
//    self.activityIndicator.center = CGPointMake([[UIScreen mainScreen]bounds].size.width/2, [[UIScreen mainScreen]bounds].size.height/2);
//    self.activityIndicator.color = [UIColor whiteColor];
//    [self.view setUserInteractionEnabled:YES];
    
//    NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
//    [userDefaults setInteger:1 forKey:@"show_animated"];
//    
//    UITapGestureRecognizer* gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(userTappedOnLink:)];
//    [self.termOfUse setUserInteractionEnabled:YES];
//    [self.termOfUse addGestureRecognizer:gesture];
//    NSMutableAttributedString * string = [[NSMutableAttributedString alloc] initWithString:self.termOfUse.text];
//    [string addAttribute:NSForegroundColorAttributeName value:[UIColor yellowColor] range:NSMakeRange(61,27)];
//    self.termOfUse.attributedText = string;
//
    
}

- (void)userTappedOnLink:(UIGestureRecognizer*)gestureRecognizer{
    
    [self performSegueWithIdentifier:@"termOfUse" sender:self];
}

//#pragma mark API
//
//-(void) prepareForRegister:(NSString *)numTel{
//    
//    [[API apiManager]prepareForRegister:numTel
//                              onSuccess:^(NSDictionary *responseObject) {
//                                  
//                                  [self.activityIndicator stopAnimating];
//                                  [self.view setUserInteractionEnabled:YES];
//                                  
//                                  if ([responseObject objectForKey:@"message"]) {
//                                      self.messageAlert = [responseObject objectForKey:@"message"];
//                                      [self alerts];
//                                  } else {
//                                      self.demoTel = numTel;
//                                      [self performSegueWithIdentifier:@"confirm" sender:self];
//                                  }
//                                  
//                              }                   onFailure:^(NSError *error, NSInteger statusCode) {
//                                  
//                                  [self.activityIndicator stopAnimating];
//                                  [self.view setUserInteractionEnabled:YES];
//                                  self.messageAlert = @"Повторите попытку";
//                                  [self alerts];
//                              }];
//}


//-(void) alerts{
//    
//    UIAlertController * alert = [UIAlertController
//                                 alertControllerWithTitle:@"Ошибка регистрации!"
//                                 message:self.messageAlert
//                                 preferredStyle:UIAlertControllerStyleAlert];
//    UIAlertAction* yesButton = [UIAlertAction
//                                actionWithTitle:@"OK"
//                                style:UIAlertActionStyleDefault
//                                handler:^(UIAlertAction * action)
//                                {
//                                    
//                                }];
//    
//    [alert addAction:yesButton];
//    [self presentViewController:alert animated:YES completion:nil];
//}

#pragma mark TextField and Keyboadr

-(void) dismissKeyboard{
    [self.textField resignFirstResponder];
}

-(void) textFieldDidBeginEditing:(UITextField *)textField{
    self.logoSAM.alpha = 0;
    CGPoint scrollPoint = CGPointMake(0, 120);
    [self.scrollView setContentOffset:scrollPoint animated:YES];
}

-(void)textFieldDidEndEditing:(UITextField*)textField{
    self.logoSAM.alpha = 1;
    [self.scrollView setContentOffset:CGPointZero animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(BOOL)textFieldShouldClear:(UITextField *)textField {
    
    textField.text = @"+7";
    
    return NO;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    return YES;
    
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    
    if([textField isEqual:self.textField]){
        
        if (self.textField.text.length <= 0) {
            
            self.activityIndicator.alpha = 1.f;
            [self.activityIndicator startAnimating];
          //  [self prepareForRegister:self.textField.text];
            
        } else {
            
            self.activityIndicator.alpha = 1.f;
            [self.activityIndicator startAnimating];
            NSMutableString *stringRange = [self.textField.text mutableCopy];
            NSRange range = NSMakeRange(0, 1);
            [stringRange deleteCharactersInRange:range];
          //  [self prepareForRegister:stringRange];
        }
        
    }
    return YES;
}

#pragma mark Button action

- (IBAction)actBtnRegistr:(id)sender {
    
    
    [self performSegueWithIdentifier:@"confirm" sender:self];

//    if (self.textField.text.length <= 0) {
//        
//        self.activityIndicator.alpha = 1.f;
//        [self.activityIndicator startAnimating];
//        
//
//       // [self prepareForRegister:self.textField.text];
//        
//    } else {
//        
//        self.activityIndicator.alpha = 1.f;
//        [self.activityIndicator startAnimating];
//        NSMutableString *stringRange = [self.textField.text mutableCopy];
//        NSRange range = NSMakeRange(0, 1);
//        [stringRange deleteCharactersInRange:range];
//     //   [self prepareForRegister:stringRange];
//        
//    }
}

- (IBAction)actTextField:(id)sender {
    self.textField.text = @"+7";
}

//#pragma mark Segue
//
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    ConfirmRegister * conReg;
//    if ([[segue identifier] isEqualToString:@"confirm"]){
//        conReg = [segue destinationViewController];
//        conReg.saveTelephone = self.demoTel;
//    }
//}

@end
