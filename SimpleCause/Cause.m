//
//  Cause.m
//  SimpleCause
//
//  Created by João Alves on 10/13/15.
//  Copyright © 2015 Learn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cause.h"

@implementation Cause

@dynamic title;
@dynamic description;
@dynamic imageURL;

+ (NSString *) parseClassName {
    return @"Cause";
}

@end