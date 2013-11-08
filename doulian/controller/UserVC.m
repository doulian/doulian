//
//  UserVC.m
//  doulian
//
//  Created by bin3 on 13-11-8.
//  Copyright (c) 2013年 feelapp. All rights reserved.
//

#import "UserVC.h"

const static float kMargin = 55;

@interface UserVC ()

@end

@implementation UserVC

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
    
    self.avatar = [[UIImageView alloc] initWithFrame:CGRectMake(5, 5, 40, 40)];
    self.avatar.backgroundColor = [UIColor clearColor];
    self.avatar.image = [UIImage imageNamed:self.user.avatar];
    [self.view addSubview:self.avatar];
    
    self.username = [[UILabel alloc] initWithFrame:CGRectMake(kMargin, 10, 230, 20)];
    self.username.font = [UIFont systemFontOfSize:16.0f];
    self.username.backgroundColor = [UIColor clearColor];
    self.username.opaque = NO;
    self.username.text = self.user.username;
    [self.view addSubview:self.username];
    
    self.navigationItem.title = self.user.username;
    
    [self.view setBackgroundColor:[UIColor greenColor]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
