//
//  DisplayViewController.h
//  PhotoViewer
//
//  Created by Ryan on 3/5/13.
//  Copyright (c) 2013 Ryan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Photo.h"
#import "InfoViewController.h"


@interface DisplayViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *currentImage;
@property (strong, nonatomic) Photo *currentPhoto;


@end
