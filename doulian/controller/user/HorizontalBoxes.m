//
//  HorizontalBoxes.m
//  doulian
//
//  Created by bin3 on 13-11-12.
//  Copyright (c) 2013年 feelapp. All rights reserved.
//

#import "HorizontalBoxes.h"

@implementation HorizontalBoxes

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setTags:(NSArray *)array {
    self.textArray = array;
    for (UIView *subview in self.subviews) {
        [subview removeFromSuperview];
    }
    if ([array count] == 0) return;
    
    CGFloat width = self.bounds.size.width / [array count];
    CGRect frame = CGRectMake(0, 0, width, self.bounds.size.height);
    for (NSString *text in array) {
        UILabel *label = [[UILabel alloc] initWithFrame:frame];
        label.text = text;
        label.layer.borderColor = [UIColor grayColor].CGColor;
        label.layer.borderWidth = 1;
        label.textAlignment = NSTextAlignmentCenter;
        [self addSubview:label];
        frame.origin.x += width;
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
