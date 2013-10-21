//
//  CommentCell.h
//  doulian
//
//  Created by WAO on 13-10-18.
//  Copyright (c) 2013年 feelapp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Comment.h"

typedef enum
{
    VerticalAlignmentTop = 0, // default
    VerticalAlignmentMiddle,
    VerticalAlignmentBottom,
    
} VerticalAlignment;

/**
 * <span heiti="" sc="" light'"="">扩充的Label
 * 自适应大小。宽度或高度指定其一，就可以自动计算另一个的值。并可以指定居上、居下显示
 */
@interface LSLabel : UILabel
{
@private
    VerticalAlignment _verticalAlignment;
}
@property (nonatomic) VerticalAlignment verticalAlignment;
@end


@interface CommentCell : UITableViewCell

@property (strong, nonatomic) Comment *comment;

@property (strong, nonatomic) UILabel *userName;
//@property (strong, nonatomic) LSLabel *userName;
@property (strong, nonatomic) UILabel *postingDate;
@property (strong, nonatomic) UILabel *userCommentContent;
//@property (strong, nonatomic) LSLabel *userCommentContent;

@end
