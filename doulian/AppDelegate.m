//
//  AppDelegate.m
//  doulian
//
//  Created by bin3 on 13-11-6.
//  Copyright (c) 2013年 feelapp. All rights reserved.
//

#import "AppDelegate.h"
#import "DiscoverVC.h"
#import "SettingsVC.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    DiscoverVC *discoverVc = [DiscoverVC new];
    UIImage *searchImg = [UIImage imageNamed:@"search.png"];
    [discoverVc.tabBarItem initWithTitle:@"发现" image:searchImg tag:0];
    UINavigationController *discoverNav = [[UINavigationController alloc] initWithRootViewController:discoverVc];
    
    SettingsVC *settingsVc = [SettingsVC new];
    [settingsVc.tabBarItem initWithTitle:@"设置" image:[UIImage imageNamed:@"spanner.png"] tag:0];
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