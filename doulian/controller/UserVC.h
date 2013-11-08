//
//  UserVC.h
//  doulian
//
//  Created by bin3 on 13-11-8.
//  Copyright (c) 2013年 feelapp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"

@interface UserVC : UIViewController

@property (weak, nonatomic) User *user;

@property (strong, nonatomic) UIImageView *avatar;
@property (strong, nonatomic) UILabel *username;
@property (strong, nonatomic) UILabel *friends;
@property (strong, nonatomic) UILabel *followers;
@property (strong, nonatomic) UILabel *beans;

@end
