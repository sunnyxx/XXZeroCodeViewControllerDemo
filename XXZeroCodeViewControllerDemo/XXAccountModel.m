//
//  XXAccountModel.m
//
//  Created by sunnyxx on 14-7-16.
//  Copyright (c) 2014年 sunnyxx. All rights reserved.
//

#import "XXAccountModel.h"

@implementation XXAccountModel

+ (void)loginWithCompletion:(dispatch_block_t)block
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        block();
    });
}

+ (void)requestMessageList:(void (^)(NSArray *))block
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSArray *messages = @[@"This is from sunnyxx's blog.",
                              @"These messages are mocks.",
                              @"It's raining outside.",
                              @"0 code view controller",
                              @"Sark is gay."];
        block(messages);
    });
}

@end
