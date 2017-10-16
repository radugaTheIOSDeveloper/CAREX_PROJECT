//
//  NewPassword.m
//  CAREX_PROJECT
//
//  Created by User on 16.10.17.
//  Copyright © 2017 freshtech. All rights reserved.
//

#import "NewPassword.h"

@interface NewPassword ()

@property (strong, nonatomic) NSString * messageAlert;


@end

@implementation NewPassword
#pragma mark  ViewDidLoad
- (void)viewDidLoad {
    [super viewDidLoad];
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
    [self.password resignFirstResponder];
}

-(void) textFieldDidBeginEditing:(UITextField *)textField{
    
    self.logo.alpha = 0.f;
    CGPoint scrollPoint = CGPointMake(0, 130);
    [self.scrollView setContentOffset:scrollPoint animated:YES];
    
}

-(void)textFieldDidEndEditing:(UITextField*)textField{
    
    self.logo.alpha = 1.f;
    [self.scrollView setContentOffset:CGPointZero animated:YES];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
//    if ([textField isEqual:self.password]) {
//        
//        [self.view setUserInteractionEnabled:NO];
//        self.activityIndicator.alpha = 1.f;
//        [self.activityIndicator startAnimating];
//        
//        [self setNewPassword:self.password.text numPhone:[[Payment save]getPhoneNumber]];
//        
//    }
    
    return YES;
}



- (IBAction)btnConfirm:(id)sender {
    
//    [self.view setUserInteractionEnabled:NO];
//    self.activityIndicator.alpha = 1.f;
//    [self.activityIndicator startAnimating];
//    
//    NSLog(@"%@",[[Payment save]getPhoneNumber]);
//    
//    [self setNewPassword:self.password.text numPhone:[[Payment save]getPhoneNumber]];
}


@end
