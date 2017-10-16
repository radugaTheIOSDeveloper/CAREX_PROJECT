//
//  SetPassRegister.h
//  CAREX_PROJECT
//
//  Created by User on 11.10.17.
//  Copyright © 2017 freshtech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SetPassRegister : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *registerLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;
@property (weak, nonatomic) IBOutlet UITextField *pasTextField;

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) UIActivityIndicatorView *activityIndicator;

- (IBAction)actTextField:(id)sender;
- (IBAction)registrBtn:(id)sender;



@end
