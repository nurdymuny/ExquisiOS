//
//  FavoritesViewController.h
//  Exquis
//
//  Created by BRD on 07/11/13.
//  Copyright (c) 2013 BRD. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FavoritesQueueCell.h"
@interface FavoritesViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITableView *favoritesTable;
- (IBAction)editButtonPressed:(id)sender;
- (IBAction)addButtonPressed:(id)sender;

@end
