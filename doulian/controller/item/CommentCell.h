//
//  CommentCell.h
//  doulian
//
//  Created by WAO on 13-10-18.
//  Copyright (c) 2013年 feelapp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Comment.h"

@interface CommentCell : UITableViewCell

@property (strong, nonatomic) Comment *comment;

@property (strong, nonatomic) UILabel *userName;
@property (strong, nonatomic) UILabel *postingDate;
@property (strong, nonatomic) UILabel *userCommentContent;

- (void)setComment:(Comment *)comment;

@end
