//
//  ViewController.h
//  SimpleSaveAndLoad
//
//  Created by Ryan on 3/7/13.
//  Copyright (c) 2013 Ryan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIDatePicker *myDatePicker;
@property (weak, nonatomic) IBOutlet UITextField *myTextField;

- (IBAction)dismissKeyboard:(id)sender;


-(NSString *) getFilePath;
-(void) saveData;
-(void) loadData;



@end
