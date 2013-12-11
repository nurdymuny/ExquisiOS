//
//  SettingViewController.m
//  Exquis
//
//  Created by BRD on 20/11/13.
//  Copyright (c) 2013 BRD. All rights reserved.
//

#import "SettingViewController.h"

@interface SettingViewController ()

@end

@implementation SettingViewController

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
    [_settingTable setBackgroundColor:[UIColor clearColor]];
    UIFont *font = [UIFont systemFontOfSize:12.0];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(220,130,80,80)];
     imageView.image = [UIImage imageNamed:@"image"];
   
    UIButton *edit_button = [[UIButton alloc]initWithFrame:CGRectMake(230, 215,60,20)];
    edit_button.backgroundColor = [UIColor clearColor];
    [edit_button.titleLabel setFont:font];
    [edit_button setTitle:@"Edit" forState:UIControlStateNormal];
     [edit_button addTarget:self action:@selector(editButtonPressed) forControlEvents:UIControlEventTouchUpInside];

  
    [self setRoundedView:imageView toDiameter:80];
      [self.view addSubview:imageView];
    
    [self.view addSubview:edit_button];
   
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
  
    
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SettingQueueCell *cell = [tableView dequeueReusableCellWithIdentifier:@"settingViewCell"];
    cell.backgroundColor = [UIColor clearColor];
    
    switch (indexPath.row) {
        case 0:
            cell.detail_label.text = @"David Northon";
            break;
            
            case 1:
            cell.detail_label.text = @"DNorthon";
            break;
            case 2:
                cell.detail_label.text = @"David Northon";
            break;
            case 3:
                cell.detail_label.text = @"http://www.DNorthon.com";
            break;
            case 4:
                cell.detail_label.text = @"LiverPool, English";
            break;
            case 5:
        {
            cell.detail_label.text = @"Notes";
            
//            [cell.detail_label setLineBreakMode:NSLineBreakByWordWrapping];
//            [cell.detail_label setNumberOfLines:0];
//            cell.detail_label.minimumScaleFactor = 0.5;
//            
//            NSString *string = @"hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello ";
//            
//           CGSize max = CGSizeMake(cell.detail_label.frame.size.width, 500);
//            CGSize expected = [string sizeWithFont:cell.detail_label.font constrainedToSize:max lineBreakMode:cell.detail_label.lineBreakMode];
//            
//            NSLog(@"%@",NSStringFromCGSize(expected));
//            [cell.detail_label setFrame:CGRectMake(cell.detail_label.frame.origin.x, cell.detail_label.frame.origin.y, cell.detail_label.frame.size.width, 200)];
//            
//                      cell.detail_label.text = @"hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello  ";
            
//            UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(cell.frame.origin.x, cell.frame.origin.y+30, 320, 80)];
//            [imageView setImage:[UIImage imageNamed:@"image"]];
//            [cell addSubview:imageView];
        }
            break;
            case 6:
                cell.detail_label.text = @"Change Password";
            break;
            case 7:
                cell.detail_label.text = @"DNorthon@gmail.com";
            break;
            case 8:
                cell.detail_label.text = @"+62 088 88888";
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

   [roundedView.layer setShadowColor:[UIColor blackColor].CGColor];
    [roundedView.layer setShadowOpacity:0.5];
   [roundedView.layer setShadowRadius:4.0];
    [roundedView.layer setShadowOffset:CGSizeMake(2.0, 2.0)];
//    shadowImage.clipsToBounds = NO;

    
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    // This will create a "invisible" footer
    return 0.01f;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 5:
            return 80;
            break;
            
        default:
            return 45;
            break;
    }
}

-(void)editButtonPressed
{
    
}
@end
