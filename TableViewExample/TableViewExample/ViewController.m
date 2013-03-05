//
//  ViewController.m
//  TableViewExample
//
//  Created by Ryan on 2/22/13.
//  Copyright (c) 2013 Ryan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize courses, courseKeys, courses_web, courseKeys_web;



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if (section == 0) {
        return [courses count];
    }
    else {
        return [courses_web count];
    }
}


- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return @"Course Set 1";
    }
    else {
        return @"Course Set 2";
    }
}


//handles the index position on the table
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //we changed this so we don't create a new cell if we don't need it
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (nil == cell) {
       cell = [[UITableViewCell alloc]
            initWithStyle: UITableViewCellStyleSubtitle //the cell subtitle style allows for the author to be shown as well
            reuseIdentifier:@"cell"]; //creates a cell here, this reused as a holder everytime the position is table happens
    }
    
    
    
    
    NSString *currentCourseName;
    
    //pulls the info for the right set
    if ([indexPath section] == 0) {
        currentCourseName = [courseKeys objectAtIndex:indexPath.row]; //grabs the index name
    }
    else {
        currentCourseName = [courseKeys_web objectAtIndex:indexPath.row]; //grabs the index name
    }
    
    [[cell textLabel] setText:currentCourseName];
    
    //picks out the corresponding author
    NSString *currentAuthorName;
    if ([indexPath section] == 0) {
        currentAuthorName = [courses objectForKey:[courseKeys objectAtIndex:indexPath.row]];
    }
    else {
        currentAuthorName = [courses_web objectForKey:[courseKeys_web objectAtIndex:indexPath.row]];
    }
    [[cell detailTextLabel] setText:currentAuthorName];

    
    NSString *imageFile = [[NSBundle mainBundle] pathForResource:@"ojicon" ofType:@"png"];
    UIImage *image = [[UIImage alloc] initWithContentsOfFile:imageFile];
    [[cell imageView]setImage:image];
    
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;//adds the arrow on the right >
    
    return cell;
    
    }





- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
 
    
    //load first set of courses
    NSString *myFile = [[NSBundle mainBundle] pathForResource:@"courses" ofType:@"plist"]; //the filename is courses.plist, so this opens it
    courses = [[NSDictionary alloc] initWithContentsOfFile: myFile]; //loading that file we grabbed above into the dict
    courseKeys = [courses allKeys];

    //load second set of courses
    myFile = [[NSBundle mainBundle] pathForResource:@"courses_web" ofType:@"plist"]; //the filename is courses_web.plist, so this opens it
    courses_web = [[NSDictionary alloc] initWithContentsOfFile: myFile]; //loading that file we grabbed above into the dict
    courseKeys_web = [courses_web allKeys];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
