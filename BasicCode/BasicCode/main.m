//
//  main.m
//  BasicCode
//
//  Created by Ryan on 2/6/13.
//  Copyright (c) 2013 Ryan. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        int minutes = 60;
        int hours = 24;
        int days = 365;

        //BOOL going = YES;
        
        int minutesInYear = minutes*hours*days;
        
        NSLog(@"There are %i minutes in a year", minutesInYear);
        
        NSString *myString = @"Some text";
        
    }
    return 0;
}

