//
//  ConfirmRegistet.h
//  CAREX_PROJECT
//
//  Created by User on 11.10.17.
//  Copyright © 2017 freshtech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ConfirmRegistet : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UITextField *confirmNumber;
@property (strong, nonatomic) NSString * saveTelephone;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UILabel *labelInfo;
@property (strong, nonatomic) UIActivityIndicatorView *activityIndicator;

- (IBAction)actConfirm:(id)sender;
- (IBAction)buttonConfirm:(id)sender;



@end
