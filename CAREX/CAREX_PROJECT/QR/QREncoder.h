//
//  QREncoder.h
//  CAREX_PROJECT
//
//  Created by User on 16.10.17.
//  Copyright © 2017 freshtech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "qrencode.h"


@interface QREncoder : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (strong, nonatomic) NSString * stringQR;

- (UIImage *)quickResponseImageForString:(NSString *)dataString withDimension:(int)imageWidth;
@property (weak, nonatomic) IBOutlet UILabel *nonActive;
@end
