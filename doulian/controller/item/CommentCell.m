//
//  CommentCell.m
//  doulian
//
//  Created by WAO on 13-10-18.
//  Copyright (c) 2013年 feelapp. All rights reserved.
//

#import "CommentCell.h"

@implementation CommentCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
        self.userName = [[UILabel alloc] init];
        [self.userName setAdjustsFontSizeToFitWidth:YES];
        self.userName.text = self.comment.user.username;
        [self.contentView addSubview:self.userName];
        
        self.userCommentContent = [[UILabel alloc] init];
        [self.userCommentContent setAdjustsFontSizeToFitWidth:YES];
        self.userCommentContent.text = self.comment.commentContent;
        [self.contentView addSubview:self.userCommentContent];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setComment:(Comment *)comment
{
    self.comment = comment;
}

@end
