//
//  InfoViewController.h
//  PhotoViewer
//
//  Created by Ryan on 3/5/13.
//  Copyright (c) 2013 Ryan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Photo.h"



@interface InfoViewController : UIViewController

@property (strong, nonatomic) Photo *currentPhoto;

@property (weak, nonatomic) IBOutlet UIButton *dismiss;


@property (weak, nonatomic) IBOutlet UILabel *detailsLabel;

@end
