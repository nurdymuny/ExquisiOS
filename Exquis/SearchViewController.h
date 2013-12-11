//
//  SearchViewController.h
//  Exquis
//
//  Created by BRD on 07/11/13.
//  Copyright (c) 2013 BRD. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ExNavigationController.h"
#import "SearchCollectionQueueCell.h"
@interface SearchViewController : UIViewController

@property (strong, nonatomic) IBOutlet UICollectionView *searchCollectionView;
- (IBAction)refreshButtonPressed:(id)sender;

@end
