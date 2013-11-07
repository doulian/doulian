//
//  UserCell.h
//  doulian
//
//  Created by bin3 on 13-11-7.
//  Copyright (c) 2013年 feelapp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DWTagList.h"

@interface UserCell : UITableViewCell <DWTagListDelegate>

@property (strong, nonatomic) UIImageView *avatar;
@property (strong, nonatomic) UILabel *username;
@property (strong, nonatomic) UILabel *distance;
@property (strong, nonatomic) DWTagList *wantedTags;

@end
