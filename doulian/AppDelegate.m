//
//  AppDelegate.m
//  doulian
//
//  Created by bin3 on 13-11-6.
//  Copyright (c) 2013年 feelapp. All rights reserved.
//

#import "AppDelegate.h"
#import "DiscoverVC.h"
#import "DiscoverTable.h"
#import "SettingsVC.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    // --- UI ---
    // UINavigationBar
    UIImage *navBackgroundImage = [UIImage imageNamed:@"navbar_bg"];
    [[UINavigationBar appearance] setBackgroundImage:navBackgroundImage forBarMetrics:UIBarMetricsDefault];
//    [[UINavigationBar appearance] setTitleTextAttributes:
//     [NSDictionary dictionaryWithObjectsAndKeys:
//      [UIColor colorWithRed:245.0/255.0 green:245.0/255.0 blue:245.0/255.0 alpha:1.0],
//      UITextAttributeTextColor,
//      [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.8],
//      UITextAttributeTextShadowColor,
//      [NSValue valueWithUIOffset:UIOffsetMake(0, 1)],
//      UITextAttributeTextShadowOffset,
//      [UIFont fontWithName:@"HelveticaNeue-CondensedBlack" size:21.0], UITextAttributeFont, nil]];
    [[UINavigationBar appearance] setTitleTextAttributes:@{
                                                           UITextAttributeTextColor: [UIColor whiteColor],
                                                           UITextAttributeFont: [UIFont fontWithName:@"Arial-Bold" size:0.0],
                                                           }];
    
    // UIBarButtonItem back
    UIImage *backButtonImage = [[UIImage imageNamed:@"button_back"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 13, 0, 6)];
    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:backButtonImage forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    
    // UIBarButtonItem normal
    UIImage *barButtonImage = [[UIImage imageNamed:@"button_normal"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 6, 0, 6)];
    [[UIBarButtonItem appearance] setBackgroundImage:barButtonImage forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    
    
    DiscoverTable *discoverVc = [DiscoverTable new];
    discoverVc.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"发现" image:[UIImage imageNamed:@"search.png"] tag:0];
    UINavigationController *discoverNav = [[UINavigationController alloc] initWithRootViewController:discoverVc];
    
    SettingsVC *settingsVc = [SettingsVC new];
    settingsVc.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"设置" image:[UIImage imageNamed:@"spanner.png"] tag:1];
    UINavigationController *settingNav = [[UINavigationController alloc] initWithRootViewController:settingsVc];
    
    UITabBarController *tab = [UITabBarController alloc];
    tab.viewControllers = @[discoverNav, settingNav];
    
    self.window.rootViewController = tab;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
