//
//  ViewController.m
//  AlertMe
//
//  Created by Ryan on 2/19/13.
//  Copyright (c) 2013 Ryan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIAlertView *myAlert = [[UIAlertView alloc]
                            initWithTitle: @"Alert title"
                            message: @"This is the message"
                            delegate: nil
                            cancelButtonTitle: @"OK Close"
                            otherButtonTitles: nil];
    
    [myAlert show];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
