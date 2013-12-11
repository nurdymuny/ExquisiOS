//
//  FavoritesViewController.m
//  Exquis
//
//  Created by BRD on 07/11/13.
//  Copyright (c) 2013 BRD. All rights reserved.
//

#import "FavoritesViewController.h"

@interface FavoritesViewController ()

@end

@implementation FavoritesViewController

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
    [_favoritesTable setBackgroundColor:[UIColor clearColor]];
     
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    FavoritesQueueCell *cell = [tableView dequeueReusableCellWithIdentifier:@"favoritesViewCell"];
    cell.backgroundColor = [UIColor clearColor];
    return cell;
    
}


- (IBAction)editButtonPressed:(id)sender {
}

- (IBAction)addButtonPressed:(id)sender {
}
@end
