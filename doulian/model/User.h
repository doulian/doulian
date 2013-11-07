//
//  User.h
//  doulian
//
//  Created by bin3 on 13-11-7.
//  Copyright (c) 2013年 feelapp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property NSString *username;
@property NSString *nickname;
@property NSString *avatar;
@property NSString *location;
@property NSArray *wantedItems;
@property NSArray *providedItems;

@end
