//
//  ContactDetailViewController.m
//  Exquis
//
//  Created by BRD on 20/11/13.
//  Copyright (c) 2013 BRD. All rights reserved.
//

#import "ContactDetailViewController.h"

@interface ContactDetailViewController ()

@end

@implementation ContactDetailViewController

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
    [_contactDetailTable setBackgroundColor:[UIColor clearColor]];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 7;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ProfileViewController *profileVC =[self.storyboard instantiateViewControllerWithIdentifier:@"profileVC"];
     profileVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:profileVC animated:YES];
   
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ContactDetailQueueCell *cell = [tableView dequeueReusableCellWithIdentifier:@"contactDetailViewCell"];
    cell.backgroundColor = [UIColor clearColor];
   switch (indexPath.row) {
        case 0:
        {
          //  [cell.dividerLine setFrame:CGRectMake(0,69, 320, 2)];
        
           // [cell.detail_label setFrame:CGRectMake(cell.detail_label.frame.origin.x, cell.detail_label.frame.origin.y, cell.detail_label.frame.size.width, 50)];
            [cell.detail_label setFont:[UIFont systemFontOfSize:30]];
            cell.detail_label.text = @"Angelica Jean";
            cell.subDetail_label.text = @"My Phone";
            
            
        }
            break;
        case 1:
        {
          //  [cell.dividerLine setFrame:CGRectMake(0,69, 320, 2)];
            [cell.detail_label setFont:[UIFont systemFontOfSize:25]];
               cell.detail_label.text = @"0888 33382449";
              cell.subDetail_label.text = @"Mobile";
        }
            break;
         case 2:
       {
             [cell.detail_label setFont:[UIFont systemFontOfSize:20]];
            cell.detail_label.text = @"Exquis";
            cell.subDetail_label.text =@"";
       }
           break;
       case 3:
       {
           cell.detail_label.text = @"Send Message";
            cell.subDetail_label.text =@"";
       }
           break;
       case 4:
       {
           cell.detail_label.text = @"Share Contact";
            cell.subDetail_label.text =@"";
       }
           break;
       case 5:
       {
           cell.detail_label.text = @"Add to Favorites";
            cell.subDetail_label.text =@"";
       }
           break;
       case 6:
       {
           cell.detail_label.textColor = [UIColor redColor];
           cell.detail_label.text = @"Block this Caller";
            cell.subDetail_label.text =@"";
       }
           break;
        default:
       {
          
//           [cell.detail_label setFrame:CGRectMake(cell.detail_label.frame.origin.x,10, cell.detail_label.frame.size.width, cell.detail_label.frame.size.height)];
//           [cell.subDetail_label setFrame:CGRectMake(cell.subDetail_label.frame.origin.x,25, cell.subDetail_label.frame.size.width, cell.subDetail_label.frame.size.height)];
       }
            break;
    }


    return cell;
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0:
             return 70;
            break;
        case 1:
            return 70;
            break;
        case 2:
            return 65;
            break;
            
        default:
            return 45;
            break;
    }
 
    
 }

- (void)tableView:(UITableView *)tableView willDisplayCell:(ContactDetailQueueCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0:
        {
           [cell.detail_label setFrame:CGRectMake(cell.detail_label.frame.origin.x, cell.detail_label.frame.origin.y, cell.detail_label.frame.size.width, 40)];
            [cell.subDetail_label setFrame:CGRectMake(cell.subDetail_label.frame.origin.x, 45, cell.subDetail_label.frame.size.width, cell.subDetail_label.frame.size.height)];
            
        }
            break;
        case 1:
        {
            [cell.detail_label setFrame:CGRectMake(cell.detail_label.frame.origin.x,05, cell.detail_label.frame.size.width, 35)];
            [cell.subDetail_label setFrame:CGRectMake(cell.subDetail_label.frame.origin.x,40, cell.subDetail_label.frame.size.width, cell.subDetail_label.frame.size.height)];
            
        }
            break;
          case 2:
        {
            [cell.detail_label setFrame:CGRectMake(cell.detail_label.frame.origin.x,18, cell.detail_label.frame.size.width, 30)];
            [cell.subDetail_label setFrame:CGRectMake(cell.subDetail_label.frame.origin.x,50, cell.subDetail_label.frame.size.width, cell.subDetail_label.frame.size.height)];
        }
            break;
        default:
        {
            
        }
            break;
       
    }
  


    
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    // This will create a "invisible" footer
    return 0.01f;
}



@end
