//
//  SocialController.h
//  CAREX_PROJECT
//
//  Created by User on 16.10.17.
//  Copyright © 2017 freshtech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SocialController : UIViewController
@property (weak, nonatomic) IBOutlet UIBarButtonItem *revealButtonItem;

- (IBAction)shareBtn:(id)sender;
@end
