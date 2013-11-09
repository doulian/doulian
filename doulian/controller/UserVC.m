//
//  UserVC.m
//  doulian
//
//  Created by bin3 on 13-11-8.
//  Copyright (c) 2013年 feelapp. All rights reserved.
//

#import "UserVC.h"
#import "MHTabBarController.h"
#import "ItemTable.h"

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
    
    self.avatar = [[UIImageView alloc] initWithFrame:CGRectMake(5, 70, 80, 80)];
    self.avatar.backgroundColor = [UIColor clearColor];
    self.avatar.image = [UIImage imageNamed:self.user.avatar];
    [self.view addSubview:self.avatar];
    
    self.username = [[UILabel alloc] initWithFrame:CGRectMake(90, 80, 230, 20)];
    self.username.text = self.user.username;
    [self.view addSubview:self.username];
    
    MHTabBarController *tab = [MHTabBarController new];
    ItemTable *wanted = [ItemTable new];
    ItemTable *supplied = [ItemTable new];
    wanted.tabBarItem.title = @"想要";
    supplied.tabBarItem.title = @"想出";
    tab.viewControllers = @[wanted, supplied];
    [self addChildViewController:tab];
    CGFloat height = 150;
    CGRect rect = CGRectMake(0.0f, height, self.view.bounds.size.width, self.view.bounds.size.height - height);
    tab.view.frame = rect;
    [self.view addSubview:tab.view];
    
    self.navigationItem.title = self.user.username;
    
    [self.view setBackgroundColor:[UIColor greenColor]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma - mark MHTabBarController

- (BOOL)mh_tabBarController:(MHTabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController atIndex:(NSUInteger)index
{
	NSLog(@"mh_tabBarController %@ shouldSelectViewController %@ at index %u", tabBarController, viewController, index);

	// Uncomment this to prevent "Tab 3" from being selected.
	//return (index != 2);

	return YES;
}

- (void)mh_tabBarController:(MHTabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController atIndex:(NSUInteger)index
{
	NSLog(@"mh_tabBarController %@ didSelectViewController %@ at index %u", tabBarController, viewController, index);
}

@end
