//
//  ProfileViewController.h
//  Exquis
//
//  Created by BRD on 20/11/13.
//  Copyright (c) 2013 BRD. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProfileQueueCell.h"

@interface ProfileViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *profilePic_imageView;


@property (strong, nonatomic) IBOutlet UITableView *profileTable;
@end
