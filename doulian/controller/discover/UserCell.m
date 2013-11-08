//
//  UserCell.m
//  doulian
//
//  Created by bin3 on 13-11-7.
//  Copyright (c) 2013年 feelapp. All rights reserved.
//

#import "UserCell.h"

@implementation UserCell

const static float kMargin = 55;
const static float kTagContainerWidth = 200;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
//        self.contentView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"tmall_bg_main"]];
        self.avatar = [[UIImageView alloc] initWithFrame:CGRectMake(5, 5, 40, 40)];
        self.avatar.backgroundColor = [UIColor clearColor];
        [self.contentView addSubview:self.avatar];
        
        self.username = [[UILabel alloc] initWithFrame:CGRectMake(kMargin, 10, 230, 20)];
        self.username.font = [UIFont systemFontOfSize:16.0f];
        self.username.backgroundColor = [UIColor clearColor];
        self.username.opaque = NO;
        [self.contentView addSubview:self.username];
        
        self.distance = [[UILabel alloc] initWithFrame:CGRectMake(kMargin, 30, 230, 14)];
        self.distance.font = [UIFont systemFontOfSize:12.0f];
        self.distance.textColor = [UIColor colorWithRed:158/255.0
                                                  green:158/255.0
                                                   blue:158/255.0
                                                  alpha:1.0];
        self.distance.backgroundColor = [UIColor clearColor];
        self.distance.opaque = NO;
        [self.contentView addSubview:self.distance];
        
        UILabel *sLine1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 78, 320, 1)];
        sLine1.backgroundColor = [UIColor colorWithRed:198/255.0
                                                 green:198/255.0
                                                  blue:198/255.0
                                                 alpha:1.0];
        UILabel *sLine2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 79, 320, 1)];
        sLine2.backgroundColor = [UIColor whiteColor];
        
        // tags
        self.wantedTags = [[DWTagList alloc] initWithFrame:CGRectMake(120.0f, 10.0f, kTagContainerWidth, 50.0f)];
        [self.wantedTags setAutomaticResize:YES];
        [self.wantedTags setTagDelegate:self];
        
        // Customisation
        [self.wantedTags setCornerRadius:4.0f];
        [self.wantedTags setBorderColor:[UIColor lightGrayColor].CGColor];
        [self.wantedTags setBorderWidth:1.0f];
        
        [self.contentView addSubview:sLine1];
        [self.contentView addSubview:sLine2];
        [self.contentView addSubview:self.wantedTags];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

# pragma - DWTagListDelegate

- (void)selectedTag:(NSString*)tagName {
    NSLog(@"tagName=%@", tagName);
}

@end
