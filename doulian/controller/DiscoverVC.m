//
//  DiscoverVC.m
//  doulian
//
//  Created by bin3 on 13-11-7.
//  Copyright (c) 2013年 feelapp. All rights reserved.
//

#import "DiscoverVC.h"

@interface DiscoverVC ()

@end

@implementation DiscoverVC

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
    
    self.navigationItem.title = @"发现";
    [self.view setBackgroundColor:[UIColor greenColor]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
