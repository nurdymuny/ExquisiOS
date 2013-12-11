//
//  RecentsViewController.m
//  Exquis
//
//  Created by BRD on 07/11/13.
//  Copyright (c) 2013 BRD. All rights reserved.
//

#import "RecentsViewController.h"

@interface RecentsViewController ()

@end

@implementation RecentsViewController

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
   
    [_recentsTable setBackgroundColor:[UIColor clearColor]];
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    RecentsQueueCell *cell = [tableView dequeueReusableCellWithIdentifier:@"recentsViewCell"];
    cell.backgroundColor = [UIColor clearColor];
   
    return cell;
    
}

- (IBAction)missedButtonPressed:(id)sender {
    
}

- (IBAction)allButtonPressed:(id)sender {
    
}

- (IBAction)editButtonPressed:(id)sender {
    
}
@end
