//
//  CommentTable.h
//  doulian
//
//  Created by WAO on 13-10-18.
//  Copyright (c) 2013年 feelapp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Comment.h"
#import "CommentCell.h"

@interface CommentTable : UITableViewController

@property (strong, nonatomic) NSArray *comments;

@end
