//
//  ItemVCViewController.h
//  doulian
//
//  Created by WAO on 13-10-17.
//  Copyright (c) 2013年 feelapp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Item.h"
#import "DWTagList.h"
#import "CommentTable.h"

@interface ItemVC : UIViewController  <DWTagListDelegate>

@property (strong, nonatomic) Item *item;

@property (strong, nonatomic) UIImageView *image;
@property (strong, nonatomic) UILabel *name;
@property (strong, nonatomic) UILabel *description;
@property (strong, nonatomic) DWTagList *tags;

@end
