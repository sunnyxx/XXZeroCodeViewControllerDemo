//
//  XXLoginBehavier.h
//
//  Created by sunnyxx on 14-7-8.
//  Copyright (c) 2014年 sunnyxx. All rights reserved.
//

@interface XXLoginViewModel : NSObject

@property (nonatomic, weak) IBOutlet UIViewController *ownerViewController;

@property (nonatomic, weak) IBOutlet UITextField *usernameTextField;
@property (nonatomic, weak) IBOutlet UITextField *passwordTextField;
@property (nonatomic, weak) IBOutlet UIActivityIndicatorView *spinner;

- (IBAction)loginAction:(id)sender;

@end


