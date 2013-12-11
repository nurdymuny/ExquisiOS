//
//  ProfileViewController.m
//  Exquis
//
//  Created by BRD on 20/11/13.
//  Copyright (c) 2013 BRD. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController
@synthesize profilePic_imageView;
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
    [_profileTable setBackgroundColor:[UIColor clearColor]];
    [self setRoundedView:profilePic_imageView toDiameter:90.0];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ProfileQueueCell *cell = [tableView dequeueReusableCellWithIdentifier:@"profileViewCell"];
    cell.backgroundColor = [UIColor clearColor];
    switch (indexPath.row) {
        case 0:
        {
            cell.heading_label.text = @"Location";
            cell.detail_label.text = @"LiverPool,English";
        }
            break;
        case 1:
        {
            cell.heading_label.text = @"User ID";
            cell.detail_label.text = @"NorthonDavid";
        }
            break;
        case 2:
        {
            cell.heading_label.text = @"Friends";
            cell.detail_label.text = @"23";
            
        }
            break;
        case 3:
        {
            cell.heading_label.text = @"WebSite";
            cell.detail_label.text = @"www.DNorthon.com";
        }
            break;
        default:
            break;
    }

    return cell;
    
}

-(void)setRoundedView:(UIImageView *)roundedView toDiameter:(float)newSize
{
     
    CGPoint saveCenter = roundedView.center;
    CGRect newFrame = CGRectMake(roundedView.frame.origin.x, roundedView.frame.origin.y, newSize, newSize);
    roundedView.frame = newFrame;
    roundedView.layer.cornerRadius = newSize / 2.0;
    roundedView.center = saveCenter;
    roundedView.clipsToBounds = YES;
    roundedView.layer.borderColor = [UIColor lightGrayColor].CGColor;
    roundedView.layer.borderWidth = 2.5;
    
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
  
    return 0.01f;
}

@end
