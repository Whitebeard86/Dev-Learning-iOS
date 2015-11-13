//
//  Cause.h
//  SimpleCause
//
//  Created by João Alves on 10/13/15.
//  Copyright © 2015 Learn. All rights reserved.
//

#ifndef Cause_h
#define Cause_h

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface Cause : PFObject<PFSubclassing>

@property (nonatomic) NSString *title;
@property (nonatomic) NSString *description;
@property (nonatomic) NSString *imageURL;

@end

#endif /* Cause_h */
