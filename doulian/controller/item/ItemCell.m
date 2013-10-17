//
//  ItemCell.m
//  doulian
//
//  Created by bin3 on 13-11-9.
//  Copyright (c) 2013年 feelapp. All rights reserved.
//

#import "ItemCell.h"

@implementation ItemCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        CGFloat imageWidth = 80;
        self.image = [[UIImageView alloc] initWithFrame:CGRectMake(2, 2, imageWidth, imageWidth)];
        [self.contentView addSubview:self.image];
        
        CGFloat x = imageWidth + 10;
        CGFloat y = 2;
        CGFloat leftWidth = self.contentView.bounds.size.width - x;
        CGFloat nameHeight = 30;
        self.name = [[UILabel alloc] initWithFrame:CGRectMake(x, y, leftWidth, nameHeight)];
//        self.name.font = [UIFont fontWithName:@"Arial" size:30.0f];
        self.name.textColor = [UIColor blueColor];
        [self.contentView addSubview:self.name];
        
        y += nameHeight + 2;
        CGFloat descHeight = 25;
        self.description = [[UILabel alloc] initWithFrame:CGRectMake(x, y, leftWidth, descHeight)];
        [self.contentView addSubview:self.description];
        y += descHeight + 2;
        
        self.tags = [[DWTagList alloc] initWithFrame:CGRectMake(x, y, leftWidth, 50.0f)];
        [self.tags setAutomaticResize:YES];
        [self.tags setTagDelegate:self];
        
        // Customisation
        [self.tags setCornerRadius:4.0f];
        [self.tags setBorderColor:[UIColor lightGrayColor].CGColor];
        [self.tags setBorderWidth:1.0f];
        
        [self.contentView addSubview:self.tags];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setItem:(Item *)item {
    self.item = item;
    self.image.image = [UIImage imageNamed:item.images[0]];
}

# pragma - DWTagListDelegate

- (void)selectedTag:(NSString*)tagName {
    NSLog(@"tagName=%@", tagName);
}

@end
