//
//  DisplayViewController.m
//  PhotoViewer
//
//  Created by Ryan on 3/5/13.
//  Copyright (c) 2013 Ryan. All rights reserved.
//

#import "DisplayViewController.h"

@interface DisplayViewController ()

@end

@implementation DisplayViewController

@synthesize currentPhoto;


-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    InfoViewController *ivc =  [segue destinationViewController];
    [ivc setCurrentPhoto:[self currentPhoto]];
}


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
    
    UIImage *image =[UIImage imageNamed:[currentPhoto filename]];
    [self.currentImage setImage:image];
    [self setTitle:[currentPhoto name]];
    
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
