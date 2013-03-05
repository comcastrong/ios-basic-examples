//
//  InfoViewController.m
//  PhotoViewer
//
//  Created by Ryan on 3/5/13.
//  Copyright (c) 2013 Ryan. All rights reserved.
//

#import "InfoViewController.h"

@interface InfoViewController ()

@end

@implementation InfoViewController

@synthesize currentPhoto, detailsLabel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [detailsLabel setText:[currentPhoto notes]];
    
    
	// Do any additional setup after loading the view.
}


- (IBAction)dismiss:(id)sender {
    [self dismissViewControllerAnimated:YES completion: Nil];

}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
