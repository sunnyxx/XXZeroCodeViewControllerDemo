//
//  XXMessageListBehavior.m
//
//  Created by sunnyxx on 14-7-16.
//  Copyright (c) 2014年 sunnyxx. All rights reserved.
//

#import "XXMessageViewModel.h"
#import "XXAccountModel.h"

@interface XXMessageViewModel ()

@property (nonatomic, copy) NSArray *messages;

@end

@implementation XXMessageViewModel

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    self.ownerViewController.title = @"Loading...";
    [XXAccountModel requestMessageList:^(NSArray *messages) {
        self.ownerViewController.title = @"Messages";
        self.messages = messages;
        [self.tableView reloadData];
    }];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.messages.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MessgeCell" forIndexPath:indexPath];
    cell.textLabel.text = self.messages[indexPath.row];
    if (indexPath.row == 0) {
        cell.textLabel.textColor = [UIColor blueColor];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (indexPath.row == 0) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://blog.sunnyxx.com"]];
    }
}

@end
