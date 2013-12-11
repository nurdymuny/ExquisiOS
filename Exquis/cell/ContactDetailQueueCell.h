//
//  ContactDetailQueueCell.h
//  Exquis
//
//  Created by BRD on 20/11/13.
//  Copyright (c) 2013 BRD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContactDetailQueueCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *detail_label;

@property (strong, nonatomic) IBOutlet UILabel *subDetail_label;
@property (strong, nonatomic) IBOutlet UIImageView *icon_ImageView;

@property (strong, nonatomic) IBOutlet UIImageView *dividerLine;
@end
