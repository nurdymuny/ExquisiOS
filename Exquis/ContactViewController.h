//
//  ContactViewController.h
//  Exquis
//
//  Created by BRD on 19/11/13.
//  Copyright (c) 2013 BRD. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContactQueueCell.h"
#import "ContactDetailViewController.h"
#import "SettingViewController.h"
@interface ContactViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITableView *contactsTable;
- (IBAction)addButtonPressed:(id)sender;
- (IBAction)refreshButtonPressed:(id)sender;

@end
