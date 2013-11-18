//
//  ItemCell.h
//  doulian
//
//  Created by bin3 on 13-11-9.
//  Copyright (c) 2013年 feelapp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Item.h"
#import "DWTagList.h"

@interface ItemCell : UITableViewCell <DWTagListDelegate>

@property (strong, nonatomic) Item *item;

@property (strong, nonatomic) UIImageView *image;
@property (strong, nonatomic) UILabel *name;
@property (strong, nonatomic) UILabel *description;
@property (strong, nonatomic) DWTagList *tags;

- (void)setItem:(Item *)item;

@end
