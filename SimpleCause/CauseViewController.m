//
//  CauseViewController.m
//  SimpleCause
//
//  Created by João Alves on 11/4/15.
//  Copyright © 2015 Learn. All rights reserved.
//

#import "CauseViewController.h"

#import <Parse/Parse.h>
#import <ParseUI/ParseUI.h>


@interface CauseViewController ()

@property (weak, nonatomic) IBOutlet UILabel *causeTitleLable;
@property (weak, nonatomic) IBOutlet UIImageView *causeImage;
@property (weak, nonatomic) IBOutlet UILabel *causeDescriptionLabel;

@end

@implementation CauseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    PFQuery *query = [PFQuery queryWithClassName:@"Cause"];
    [query getObjectInBackgroundWithId:@"nbDz0wWFfB" block:^(PFObject *cause, NSError *error) {
        // Do something with the returned PFObject in the gameScore variable.
        NSString *imageURL = cause[@"imageUrl"];
        NSURL *url = [NSURL URLWithString:imageURL];
        NSData *data = [NSData dataWithContentsOfURL:url];
        UIImage *image = [UIImage imageWithData:data];
        
        self.causeImage.image = image; // = [[UIImageView alloc] initWithImage:image];
        
        self.causeTitleLable.text = cause[@"name"];
        self.causeDescriptionLabel.text = cause[@"description"];
    }];
    
}

@end
