//
//  ViewController.h
//  TableViewExample
//
//  Created by Ryan on 2/22/13.
//  Copyright (c) 2013 Ryan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate> //adding this defines that the table view is going to be interacted with

@property (nonatomic, strong) NSDictionary *courses;
@property (nonatomic, strong) NSArray *courseKeys;


//for the second set of plist
@property (nonatomic, strong) NSDictionary *courses_web;
@property (nonatomic, strong) NSArray *courseKeys_web;



@end
