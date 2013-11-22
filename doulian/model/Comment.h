//
//  Comment.h
//  doulian
//
//  Created by WAO on 13-10-18.
//  Copyright (c) 2013年 feelapp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "user.h"

@interface Comment : NSObject

@property (strong, nonatomic) User *user;
@property (strong, nonatomic) NSString *commentContent;
@property (strong, nonatomic) NSDate *postingDate;
@property (strong, nonatomic) NSMutableArray *atUsers;

@end
