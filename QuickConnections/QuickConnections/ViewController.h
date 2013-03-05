//
//  ViewController.h
//  QuickConnections
//
//  Created by Ryan on 2/18/13.
//  Copyright (c) 2013 Ryan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *myTextField;

@property (weak, nonatomic) IBOutlet UILabel *myLabel;

- (IBAction)changeLabel:(id)sender;
- (IBAction)dismissKeyboard:(id)sender;


@end
