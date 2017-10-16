//
//  News.h
//  CAREX_PROJECT
//
//  Created by User on 16.10.17.
//  Copyright © 2017 freshtech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface News : UIViewController
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *revealButtonItem;
@property (strong, nonatomic) UIActivityIndicatorView *activityIndicator;
@end
