//
//  RecentsViewController.h
//  Exquis
//
//  Created by BRD on 07/11/13.
//  Copyright (c) 2013 BRD. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RecentsQueueCell.h"
@interface RecentsViewController : UIViewController
{
    
}
@property (strong, nonatomic) IBOutlet UITableView *recentsTable;

- (IBAction)missedButtonPressed:(id)sender;
- (IBAction)allButtonPressed:(id)sender;
- (IBAction)editButtonPressed:(id)sender;

@end
