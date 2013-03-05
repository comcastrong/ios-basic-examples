//
//  ViewController.m
//  PickerControl
//
//  Created by Ryan on 2/20/13.
//  Copyright (c) 2013 Ryan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize pickr;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)displayDate:(id)sender {
    
    NSDate *chosen = [pickr date];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"EEEE"];
    
    NSString *weekday = [formatter stringFromDate:chosen];
    NSString *msg = [[NSString alloc] initWithFormat:@"That's a %@", weekday];
    
    UIAlertView *myAlert = [[UIAlertView alloc] initWithTitle:@"What day is that?"
                                                      message:msg
                                                     delegate:nil
                                            cancelButtonTitle:@"Thanks!"
                                            otherButtonTitles:nil];
    [myAlert show];
    
}
@end
