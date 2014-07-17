//
//  XXAccountModel.h
//
//  Created by sunnyxx on 14-7-16.
//  Copyright (c) 2014年 sunnyxx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XXAccountModel : NSObject

+ (void)loginWithCompletion:(dispatch_block_t)block;
+ (void)requestMessageList:(void(^)(NSArray *messages))block;

@end
