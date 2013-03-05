//
//  ViewController.m
//  QuickConnections
//
//  Created by Ryan on 2/18/13.
//  Copyright (c) 2013 Ryan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize myTextField;
@synthesize myLabel;

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

- (IBAction)changeLabel:(id)sender {
    
    
    NSString *message = [[NSString alloc] initWithFormat:@"Hello %@", [myTextField text]];
    [myLabel setText:message];
    [myTextField resignFirstResponder];
    
    
    
    
    
    
}

- (IBAction)dismissKeyboard:(id)sender {
    [myTextField resignFirstResponder];
    
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [myTextField resignFirstResponder];
    return YES;

}


@end
