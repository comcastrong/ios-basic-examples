//
//  main.m
//  CustomClasses
//
//  Created by Ryan on 2/13/13.
//  Copyright (c) 2013 Ryan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        // insert code here...
        
        Player *bob = [[Player alloc]init];
        
        //[bob simpleMethod];
        
        [bob setAge:54];
        [bob setName:@"Bob Barker"];
        
        NSLog(@"Bob's age is %i", [bob age]);
        
       // NSLog(@"Hello, World!");
    }
    return 0;
}

