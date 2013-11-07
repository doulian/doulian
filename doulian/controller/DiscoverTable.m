//
//  DiscoverTable.m
//  doulian
//
//  Created by bin3 on 13-11-7.
//  Copyright (c) 2013年 feelapp. All rights reserved.
//

#import "DiscoverTable.h"
#import "User.h"
#import "UserCell.h"

@interface DiscoverTable ()

@end

@implementation DiscoverTable

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
       
    User *user = [User new];
    user.username = @"张三";
    user.avatar = @"boy.png";
    user.location = @"中关村";
    user.wantedItems = @[@"iphone", @"ipad", @"ipod", @"imac", @"mac air", @"土豪金"];
       
    User *user2 = [User new];
    user2.username = @"小美";
    user2.avatar = @"girl.png";
    user2.location = @"奥体公园";
    user2.wantedItems = @[@"古典书架", @"包包", @"香水", @"化妆品", @"iphone", @"钱包"];
    
    User *user3 = [User new];
    user3.username = @"李四";
    user3.avatar = @"boy.png";
    user3.location = @"五道口";
    user3.wantedItems = @[@"iphone", @"ipad", @"ipod", @"imac", @"mac air"];
    
    User *user4 = [User new];
    user4.username = @"YoYo";
    user4.avatar = @"girl.png";
    user4.location = @"大兴";
    user4.wantedItems = @[@"古典书架", @"LV", @"ipod", @"imac"];
    
    self.users = @[user, user2, user3, user4];
       
    self.navigationItem.title = @"发现";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.users count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"UserCellId";
    UserCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UserCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...
    User* user = self.users[indexPath.row];
    cell.avatar.image = [UIImage imageNamed:user.avatar];
    cell.username.text = user.username;
    cell.distance.text = user.location;
    
    [cell.wantedTags setTags:user.wantedItems];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
