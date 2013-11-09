//
//  ItemCell.h
//  doulian
//
//  Created by bin3 on 13-11-9.
//  Copyright (c) 2013年 feelapp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Item.h"

@interface ItemCell : UITableViewCell

@property (strong, nonatomic) Item *item;

@property (strong, nonatomic) UILabel *description;

@end
