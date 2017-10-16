//
//  RecoveryPassword.h
//  CAREX_PROJECT
//
//  Created by User on 16.10.17.
//  Copyright © 2017 freshtech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecoveryPassword : UIViewController


@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;
@property (weak, nonatomic) IBOutlet UIImageView *lineOne;
@property (weak, nonatomic) IBOutlet UIButton *btnRecovey;

@property (weak, nonatomic) IBOutlet UITextField *textFieldNum;
@property (weak, nonatomic) IBOutlet UITextField *smsTextField;

@property (strong, nonatomic) UIActivityIndicatorView *activityIndicator;

- (IBAction)textFieldActTel:(id)sender;
- (IBAction)recoveryAct:(id)sender;



@end
