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
        CGFloat height = 40;
        
        self.userName = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.bounds.size.width, height)];
        [self.userName setAdjustsFontSizeToFitWidth:YES];
        [self.contentView addSubview:self.userName];
        NSLog(@"user comment username %@", self.userName.text);
        
        self.userCommentContent = [[UILabel alloc] initWithFrame:CGRectMake(50, 0, self.bounds.size.width, height)];
        [self.userCommentContent setAdjustsFontSizeToFitWidth:YES];
        [self.contentView addSubview:self.userCommentContent];
        NSLog(@"user comment content %@", self.userCommentContent.text);
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end




//-------------------------------------------------------------------------------





@implementation LSLabel



- (id) init {
    
    if (self = [super init]) {
        
        self.backgroundColor = [UIColor clearColor];
        
        self.highlightedTextColor = [UIColor whiteColor];
        
        self.lineBreakMode = UILineBreakModeTailTruncation;
        
        self.numberOfLines = 0;
        
        self.adjustsFontSizeToFitWidth = YES;
        
        _verticalAlignment = VerticalAlignmentTop;
        
    }
    
    return self;
    
}

- (void) setWidth:(CGFloat)w {
    
    if (self.numberOfLines == 0) {
        
        int lines = ceil([self.text sizeWithFont:self.font].width/w);
        
        super.frame = CGRectMake(self.bounds.origin.x, self.bounds.origin.y, w, lines * self.font.lineHeight);
        
    }
    
}

- (void) setHeight:(CGFloat)h {
    
    if (self.numberOfLines == 0) {
        
        int lines = ceil(h/self.font.lineHeight);
        
        super.frame = CGRectMake(self.bounds.origin.x, self.bounds.origin.y, [self.text sizeWithFont:self.font].width/lines, h);
        
    }
    
}

- (void) setFrame:(CGRect)frame {
    
    if (frame.size.height == 0) {
        
        [super setFrame:CGRectMake(frame.origin.x, frame.origin.y, 0, 0)];
        
        self.width = frame.size.width;
        
    }else if (frame.size.width == 0) {
        
        [super setFrame:CGRectMake(frame.origin.x, frame.origin.y, 0, 0)];
        
        self.height = frame.size.height;
        
    }else {
        
        [super setFrame:frame];
        
    }
    
    
    
}



-(VerticalAlignment) verticalAlignment{
    
    return _verticalAlignment;
    
}

-(void) setVerticalAlignment:(VerticalAlignment)value{
    
    _verticalAlignment = value;
    
    [self setNeedsDisplay];
    
}



-(CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines

{
    
    CGRect rect = [super textRectForBounds:bounds limitedToNumberOfLines:numberOfLines];
    
    CGRect result;
    
    switch (_verticalAlignment)
    
    {
            
        case VerticalAlignmentTop:
            
            result = CGRectMake(bounds.origin.x, bounds.origin.y, rect.size.width, rect.size.height);
            
            break;
            
        case VerticalAlignmentMiddle:
            
            result = CGRectMake(bounds.origin.x, bounds.origin.y + (bounds.size.height - rect.size.height) / 2, rect.size.width, rect.size.height);
            
            break;
            
        case VerticalAlignmentBottom:
            
            result = CGRectMake(bounds.origin.x, bounds.origin.y + (bounds.size.height - rect.size.height), rect.size.width, rect.size.height);
            
            break;
            
        default:
            
            result = bounds;
            
            break;
            
    }
    
    return result;
    
}



-(void)drawTextInRect:(CGRect)rect

{
    
    CGRect r = [self textRectForBounds:rect limitedToNumberOfLines:self.numberOfLines];
    
    [super drawTextInRect:r];
    
}

@end
