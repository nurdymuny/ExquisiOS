//
//  SearchViewController.m
//  Exquis
//
//  Created by BRD on 07/11/13.
//  Copyright (c) 2013 BRD. All rights reserved.
//

#import "SearchViewController.h"

@interface SearchViewController ()

@end

@implementation SearchViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    [_searchCollectionView setBackgroundColor:[UIColor clearColor]];
   	// Do any additional setup after loading the view.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section {
   
    return 3;
}

- (NSInteger)numberOfSectionsInCollectionView: (UICollectionView *)collectionView {
    return 5;
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    SearchCollectionQueueCell *cell = [cv dequeueReusableCellWithReuseIdentifier:@"SearchViewCell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor clearColor];
    return cell;
    
}
- (IBAction)refreshButtonPressed:(id)sender {
    
}
@end
