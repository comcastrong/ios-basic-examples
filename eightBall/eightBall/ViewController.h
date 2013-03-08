//
//  ViewController.h
//  eightBall
//
//  Created by Ryan on 3/7/13.
//  Copyright (c) 2013 Ryan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *answer;
@property (weak, nonatomic) IBOutlet UIImageView *backgroundImage;

- (IBAction)shakeTheBall:(id)sender;



@end
