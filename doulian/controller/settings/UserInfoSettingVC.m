//
//  UserInfoSettingVC.m
//  doulian
//
//  Created by bin3 on 13-11-6.
//  Copyright (c) 2013年 feelapp. All rights reserved.
//

#import "UserInfoSettingVC.h"

@interface UserInfoSettingVC ()

@end

@implementation UserInfoSettingVC

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
    
    self.navigationItem.title = @"个人信息";
    
    [self.view setBackgroundColor:[UIColor blueColor]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
