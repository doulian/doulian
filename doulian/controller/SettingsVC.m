//
//  SettingsVC.m
//  doulian
//
//  Created by bin3 on 13-11-6.
//  Copyright (c) 2013年 feelapp. All rights reserved.
//

#import "SettingsVC.h"
#import "UserInfoSettingVC.h"

@interface SettingsVC ()

@end

@implementation SettingsVC

- (id) init {
    self = [super initWithStyle:UITableViewStyleGrouped];
	return self;
}

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
	// Do any additional setup after loading the view.
    
    __unsafe_unretained __block SettingsVC *safeSelf = self;
    
	[self addSection:^(JMStaticContentTableViewSection *section, NSUInteger sectionIndex) {
		[section addCell:^(JMStaticContentTableViewCell *staticContentCell, UITableViewCell *cell, NSIndexPath *indexPath) {
			staticContentCell.cellStyle = UITableViewCellStyleSubtitle;
            staticContentCell.cellHeight = 70;
			staticContentCell.reuseIdentifier = @"UserInfoCell";
            
			cell.textLabel.text = @"小豆";
            cell.detailTextLabel.text = @"豆脸号: xiaodou";
            cell.imageView.image = [UIImage imageNamed:@"doulian.jpg"];
		} whenSelected:^(NSIndexPath *indexPath) {
            UserInfoSettingVC *vc = [UserInfoSettingVC new];
            vc.hidesBottomBarWhenPushed = YES;
			[safeSelf.navigationController pushViewController:vc animated:YES];
		}];
	}];
    
    
	[self addSection:^(JMStaticContentTableViewSection *section, NSUInteger sectionIndex) {
		[section addCell:^(JMStaticContentTableViewCell *staticContentCell, UITableViewCell *cell, NSIndexPath *indexPath) {
			staticContentCell.cellStyle = UITableViewCellStyleDefault;
			cell.textLabel.text = @"我的相册";
            cell.imageView.image = [UIImage imageNamed:@"photo.png"];
		} whenSelected:^(NSIndexPath *indexPath) {
            UserInfoSettingVC *vc = [UserInfoSettingVC new];
            vc.hidesBottomBarWhenPushed = YES;
			[safeSelf.navigationController pushViewController:vc animated:YES];
		}];
               
        [section addCell:^(JMStaticContentTableViewCell *staticContentCell, UITableViewCell *cell, NSIndexPath *indexPath) {
			staticContentCell.cellStyle = UITableViewCellStyleDefault;
			cell.textLabel.text = @"我的收藏";
            cell.imageView.image = [UIImage imageNamed:@"heart.png"];
		} whenSelected:^(NSIndexPath *indexPath) {
            UserInfoSettingVC *vc = [UserInfoSettingVC new];
            vc.hidesBottomBarWhenPushed = YES;
			[safeSelf.navigationController pushViewController:vc animated:YES];
		}];
        
        [section addCell:^(JMStaticContentTableViewCell *staticContentCell, UITableViewCell *cell, NSIndexPath *indexPath) {
			staticContentCell.cellStyle = UITableViewCellStyleDefault;
			cell.textLabel.text = @"我的报表";
            cell.imageView.image = [UIImage imageNamed:@"piechart.png"];
		} whenSelected:^(NSIndexPath *indexPath) {
            UserInfoSettingVC *vc = [UserInfoSettingVC new];
            vc.hidesBottomBarWhenPushed = YES;
			[safeSelf.navigationController pushViewController:vc animated:YES];
		}];
	}];
    
   	[self addSection:^(JMStaticContentTableViewSection *section, NSUInteger sectionIndex) {
		[section addCell:^(JMStaticContentTableViewCell *staticContentCell, UITableViewCell *cell, NSIndexPath *indexPath) {
			staticContentCell.cellStyle = UITableViewCellStyleDefault;
			cell.textLabel.text = @"安全";
            cell.imageView.image = [UIImage imageNamed:@"safe.png"];
		} whenSelected:^(NSIndexPath *indexPath) {
            UserInfoSettingVC *vc = [UserInfoSettingVC new];
            vc.hidesBottomBarWhenPushed = YES;
			[safeSelf.navigationController pushViewController:vc animated:YES];
		}];
	}];
    
    self.navigationItem.title = @"设置";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
