//
//  CauseTableViewCell.h
//  SimpleCause
//
//  Created by João Alves on 10/14/15.
//  Copyright © 2015 Learn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Cause.h"

@interface CauseTableViewCell : UITableViewCell

@property (nonatomic, strong) Cause *cause;

@property (weak, nonatomic) IBOutlet UILabel *causeNameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *causeImageView;

@end
