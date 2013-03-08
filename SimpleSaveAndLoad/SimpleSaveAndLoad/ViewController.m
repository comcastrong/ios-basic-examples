//
//  ViewController.m
//  SimpleSaveAndLoad
//
//  Created by Ryan on 3/7/13.
//  Copyright (c) 2013 Ryan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize myDatePicker, myTextField;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self loadData];
    
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dismissKeyboard:(id)sender {

    [self.view endEditing:YES];

}


//gets the apps filepath for the save and load data to call
-(NSString *) getFilePath {
    NSArray *pathArray = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
 
    return [[pathArray objectAtIndex:0] stringByAppendingPathComponent:@"saved.plist"];
    
}

//saves the data
-(void) saveData {
    
    NSArray *value =[[NSArray alloc] initWithObjects:[myTextField text], [myDatePicker date], nil];
    [value writeToFile:[self getFilePath] atomically:YES];
    
    
}

//loads the data
-(void) loadData {
    NSString *myPath = [self getFilePath];
    BOOL fileExists = [[NSFileManager defaultManager] fileExistsAtPath:myPath];
    
    if (fileExists) {
        NSArray *values = [[NSArray alloc] initWithContentsOfFile:myPath];
        
        myTextField.text = [values objectAtIndex:0];
        myDatePicker.date = [values objectAtIndex:1];
    }
    
    
}





@end
