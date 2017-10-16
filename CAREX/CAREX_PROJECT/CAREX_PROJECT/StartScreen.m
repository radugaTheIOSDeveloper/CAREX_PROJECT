//
//  StartScreen.m
//  CAREX_PROJECT
//
//  Created by User on 11.10.17.
//  Copyright © 2017 freshtech. All rights reserved.
//

#import "StartScreen.h"

@interface StartScreen ()

@end

@implementation StartScreen

- (void)viewDidLoad {
    [super viewDidLoad];
    self.logoImage.alpha = 0.f;
    
    [UIView animateWithDuration:1.6 animations:^{
        self.logoImage.alpha = 1.0f;
    } completion:^(BOOL finished) {
        
        [UIView animateWithDuration:2.2 animations:^{
            CGRect newLogoFrame = self.logoImage.frame;
            newLogoFrame.origin.y= 60.0f;
            self.logoImage.frame=newLogoFrame;
            
        } completion:^(BOOL finished) {
            
        [self performSegueWithIdentifier:@"registrSegue" sender:self];

            
            
//            NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
//            
//            if ([userDefaults integerForKey:@"show_animated"] == 1) {
//                
//                if ([userDefaults objectForKey:@"token"]) {
//                    
//                    [self performSegueWithIdentifier:@"mapSegue" sender:self];
//                    
//                } else {
//                    
//                    if ([userDefaults integerForKey:@"need_activate"] == 1) {
//                        
//                        [self performSegueWithIdentifier:@"registrSegue" sender:self];
//                        
//                    } else  {
//                        
//                        [self performSegueWithIdentifier:@"enterSegue" sender:self];
//                        
//                    }
//                }
//                
//            } else {
//                
//                [self performSegueWithIdentifier:@"segue" sender:self];
//            }
            
        }];
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
