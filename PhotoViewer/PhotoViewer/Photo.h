//
//  Photo.h
//  PhotoViewer
//
//  Created by Ryan on 3/5/13.
//  Copyright (c) 2013 Ryan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Photo : NSObject

@property(nonatomic, strong) NSString *name;
@property(nonatomic, strong) NSString *filename;
@property(nonatomic, strong) NSString *notes;

@end
