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
#import "HorizontalBoxes.h"

@interface UserVC ()

@end

@implementation UserVC

static const CGFloat kAvatarWidth = 80;

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
    
    self.navigationItem.title = self.user.username;
    
    CGFloat navbarHeight = self.navigationController.navigationBar.bounds.size.height;
    
    self.avatar = [[UIImageView alloc] initWithFrame:CGRectMake(5, navbarHeight + 20, kAvatarWidth, kAvatarWidth)];
    self.avatar.backgroundColor = [UIColor clearColor];
    self.avatar.image = [UIImage imageNamed:self.user.avatar];
    [self.view addSubview:self.avatar];
    
    HorizontalBoxes *boxes = [[HorizontalBoxes alloc] initWithFrame:CGRectMake(100, navbarHeight + 30, 200, 40)];
    [boxes setTags:@[@"2关注", @"100粉丝", @"55豆"]];
    [self.view addSubview:boxes];
    
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
