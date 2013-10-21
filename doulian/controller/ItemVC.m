//
//  ItemVCViewController.m
//  doulian
//
//  Created by WAO on 13-10-17.
//  Copyright (c) 2013年 feelapp. All rights reserved.
//

#import "ItemVC.h"


@interface ItemVC ()

@end

@implementation ItemVC
static const CGFloat imageWidth = 80;
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
    
    self.navigationItem.title = self.item.name;
    
    // name
    CGFloat x = imageWidth + 10;
    CGFloat y = 100;
    CGFloat leftWidth = self.view.bounds.size.width - x;
    CGFloat nameHeight = 30;
    self.name = [[UILabel alloc] initWithFrame:CGRectMake(x, y, leftWidth, nameHeight)];
    self.name.textColor = [UIColor blueColor];
    self.name.text = self.item.name;
    [self.view addSubview:self.name];
    
    // description
    y += nameHeight + 2;
    CGFloat descHeight = 25;
    self.description = [[UILabel alloc] initWithFrame:CGRectMake(x, y, leftWidth, descHeight)];
    self.description.text = self.item.description;
    [self.view addSubview:self.description];
    
    y += descHeight + 2;
    CGFloat tagHeight = 50;
    // tags
    self.tags = [[DWTagList alloc] initWithFrame:CGRectMake(x, y, leftWidth, tagHeight)];
    [self.tags setTags:self.item.tags];
    [self.tags setAutomaticResize:YES];
    [self.tags setTagDelegate:self];
    
    // Customisation
    [self.tags setCornerRadius:4.0f];
    [self.tags setBorderColor:[UIColor lightGrayColor].CGColor];
    [self.tags setBorderWidth:1.0f];
    [self.view addSubview:self.tags];
    
    CGFloat imageHeight = 80;
    self.image = [[UIImageView alloc] initWithFrame:CGRectMake(10, 100, imageWidth, imageHeight)];
    self.image.image = [UIImage imageNamed:self.item.images[0]];
    [self.view addSubview:self.image];
    
    CommentTable *commentTable = [CommentTable new];
    [self addChildViewController:commentTable];
    
    y += tagHeight + 2;
    CGFloat height = 150;
    CGRect rect = CGRectMake(10, y, self.view.bounds.size.width - 20, self.view.bounds.size.height - height - y - 10);
    commentTable.view.frame = rect;
    [self.view addSubview:commentTable.view];
    
//    HorizontalBoxes *boxes = [[HorizontalBoxes alloc] initWithFrame:CGRectMake(100, navbarHeight + 30, 200, 40)];
//    [boxes setTags:@[@"2关注", @"100粉丝", @"55豆"]];
//    [self.view addSubview:boxes];
    
//    MHTabBarController *tab = [MHTabBarController new];
//    ItemTable *wanted = [ItemTable new];
//    ItemTable *supplied = [ItemTable new];
//    wanted.tabBarItem.title = @"想要";
//    supplied.tabBarItem.title = @"想出";
//    tab.viewControllers = @[wanted, supplied];
//    [self addChildViewController:tab];
//    CGFloat height = 150;
//    CGRect rect = CGRectMake(0.0f, height, self.view.bounds.size.width, self.view.bounds.size.height - height);
//    tab.view.frame = rect;
//    [self.view addSubview:tab.view];
}

# pragma - DWTagListDelegate

- (void)selectedTag:(NSString*)tagName {
    NSLog(@"tagName=%@", tagName);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
