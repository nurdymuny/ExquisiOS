//
//  RecentsQueueCell.h
//  Exquis
//
//  Created by BRD on 19/11/13.
//  Copyright (c) 2013 BRD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecentsQueueCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *icon_ImageView;
@property (strong, nonatomic) IBOutlet UILabel *name_label;
@property (strong, nonatomic) IBOutlet UILabel *callStatus_Lable;
@property (strong, nonatomic) IBOutlet UILabel *timeStatus_lable;

@end
