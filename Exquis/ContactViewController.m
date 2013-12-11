//
//  ContactViewController.m
//  Exquis
//
//  Created by BRD on 19/11/13.
//  Copyright (c) 2013 BRD. All rights reserved.
//

#import "ContactViewController.h"

@interface ContactViewController ()

@end

@implementation ContactViewController

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
    [_contactsTable setBackgroundColor:[UIColor clearColor]];
    
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
    ContactDetailViewController *contactDetailVC =[self.storyboard instantiateViewControllerWithIdentifier:@"contactDetailVC"];
   
    [self.navigationController pushViewController:contactDetailVC animated:YES];

    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ContactQueueCell *cell = [tableView dequeueReusableCellWithIdentifier:@"contactViewCell"];
    cell.backgroundColor = [UIColor clearColor];
    return cell;
    
}

- (IBAction)addButtonPressed:(id)sender {
    SettingViewController *settingVC = [self.storyboard instantiateViewControllerWithIdentifier:@"settingVC"];
    [self.navigationController pushViewController:settingVC animated:YES];
    
}

- (IBAction)refreshButtonPressed:(id)sender {
}
@end
