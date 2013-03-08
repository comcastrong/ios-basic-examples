//
//  ViewController.m
//  eightBall
//
//  Created by Ryan on 3/7/13.
//  Copyright (c) 2013 Ryan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize answer;



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.\
    
 
}

//part of the shaking
-(BOOL)canBecomeFirstResponder {
    return YES;
}

//part of the shaking
-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self becomeFirstResponder];
}

//part of the shaking
- (void)viewWillDisappear:(BOOL)animated {
    [self resignFirstResponder];
    [super viewWillDisappear:animated];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//this is called when the button is pressed, despite the poor naming
- (IBAction)shakeTheBall:(id)sender {
   
    [self showAnswer];
    
}

//this function is called when it's shaken
- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if (motion == UIEventSubtypeMotionShake)
    {
        [self showAnswer];
    }
}

- (void)showAnswer {
    NSArray *shakeResponses = [[NSArray alloc] initWithObjects: @"Yes", @"No", @"Ask me again later", nil];
    
    int randomInt = arc4random() % shakeResponses.count; //gets a random integer
    //    [answer setText: [NSString stringWithFormat:@"%i", randomInt]];
    [answer setText: [shakeResponses objectAtIndex: randomInt]];

}









@end
