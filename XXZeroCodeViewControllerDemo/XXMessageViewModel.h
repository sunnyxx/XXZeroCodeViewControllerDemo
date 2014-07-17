//
//  XXMessageListBehavior.h
//
//  Created by sunnyxx on 14-7-16.
//  Copyright (c) 2014年 sunnyxx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XXMessageViewModel : NSObject <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) IBOutlet UIViewController *ownerViewController;
@property (nonatomic, weak) IBOutlet UITableView *tableView;

@end
