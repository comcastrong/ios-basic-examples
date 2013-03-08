//
//  ViewController.m
//  SlowApp
//
//  Created by Ryan on 3/7/13.
//  Copyright (c) 2013 Ryan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize myLabel;

dispatch_queue_t myQueue;

- (IBAction)performOperation:(id)sender {
    
    myQueue = dispatch_queue_create("com.test.tst", NULL);
    dispatch_async(myQueue, ^{[self longRunningOperation];});//this is where the [self longRunningOperation] is run on a separate thread
    
    
    
}


-(void) longRunningOperation {
    [NSThread sleepForTimeInterval:5];
    
    //so we put this in a dispatch queue too in order to run it on a main thread
    //this is because UI changes are supposed to occur on the main thread
    dispatch_async(dispatch_get_main_queue(), ^{[myLabel setText: [NSString stringWithFormat:@"Results: %d", arc4random()]];});

}

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


@end
