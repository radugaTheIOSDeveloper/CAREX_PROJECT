//
//  NewPassword.h
//  CAREX_PROJECT
//
//  Created by User on 16.10.17.
//  Copyright © 2017 freshtech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewPassword : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *logo;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UITextField *password;

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property (strong, nonatomic) UIActivityIndicatorView *activityIndicator;

- (IBAction)btnConfirm:(id)sender;
@end
