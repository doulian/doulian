//
//  User.h
//  doulian
//
//  Created by bin3 on 13-11-7.
//  Copyright (c) 2013年 feelapp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property (strong, nonatomic) NSString *username;
@property (strong, nonatomic) NSString *nickname;
@property (strong, nonatomic) NSString *avatar;
@property (strong, nonatomic) NSString *location;
@property (strong, nonatomic) NSArray *wantedItems;
@property (strong, nonatomic) NSArray *providedItems;
@property (nonatomic) int friends;
@property (nonatomic) int followers;
@property (nonatomic) int beans;

@end
