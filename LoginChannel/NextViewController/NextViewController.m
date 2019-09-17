//
//  NextViewController.m
//  LoginChannel
//
//  Created by ＵＳＥＲ on 2019/9/12.
//  Copyright © 2019 hsin_project. All rights reserved.
//

#import "NextViewController.h"

@interface NextViewController ()
   
@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    switch (_type) {
        case FB:
        NSLog(@"This is FB");
        [self setBasicFBUI];
        break;
        
        case Google:
        NSLog(@"This is Google");
        break;
        
        default:
        break;
    }
  
}
    
-(void) setBasicFBUI {
    self.titleLabel.text = @"Your FB login has succeeded";
    FBSDKProfilePictureView *profilePictureView = [[FBSDKProfilePictureView alloc] init];
    profilePictureView.frame = CGRectMake(0,0,self.profileView.frame.size.width,self.profileView.frame.size.height);
    profilePictureView.profileID = [[FBSDKAccessToken currentAccessToken] userID];
    [self.profileView addSubview:profilePictureView];
    
}
    
    
- (IBAction)logOutAction:(id)sender {
    switch (_type) {
        case FB:
        [self logOutWithFB];
        [self dissmissVC];
        break;
        
        case Google:
        NSLog(@"This is Google");
        break;
        
        default:
        break;
    }
}
    
-(void) logOutWithFB {
    FBSDKLoginManager *loginManager = [[FBSDKLoginManager alloc] init];
    [loginManager logOut];
}
    
-(void) dissmissVC {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
