//
//  XXLoginBehavier.m
//
//  Created by sunnyxx on 14-7-8.
//  Copyright (c) 2014年 sunnyxx. All rights reserved.
//

#import "XXLoginViewModel.h"
#import "XXAccountModel.h"

@implementation XXLoginViewModel

- (IBAction)loginAction:(id)sender
{
    if (self.usernameTextField.text.length >= 1 && self.passwordTextField.text.length >= 1)
    {
        // Spinner
        self.ownerViewController.navigationItem.titleView = self.spinner;
        [self.spinner startAnimating];
        
        NSString *title = self.ownerViewController.title;
        [XXAccountModel loginWithCompletion:^{
            // Segue next
            [self.ownerViewController performSegueWithIdentifier:@"LoginSegue" sender:nil];
            [self.spinner stopAnimating];
            self.ownerViewController.navigationItem.titleView = nil;
            self.ownerViewController.title = title;
        }];
    }
    else
    {
        [[[UIAlertView alloc] initWithTitle:@"Fill them'll" message:@"" delegate:nil cancelButtonTitle:@"All right" otherButtonTitles:nil] show];
    }
}

@end
