//
//  MyCoin.h
//  CAREX_PROJECT
//
//  Created by User on 16.10.17.
//  Copyright © 2017 freshtech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCoin : UIViewController

- (IBAction)btnActiveBuy:(id)sender;
- (IBAction)btnPastBuy:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *activeOtl;
@property (weak, nonatomic) IBOutlet UIButton *pastOtl;
@property (weak, nonatomic) IBOutlet UIView *activeView;
@property (weak, nonatomic) IBOutlet UIView *pastView;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

-(void) refreshView: (UIRefreshControl *) refresh;

@property (strong, nonatomic) NSString * stringQR;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *revealButtonItem;
@property (strong, nonatomic) UIActivityIndicatorView *activityIndicator;

@end
