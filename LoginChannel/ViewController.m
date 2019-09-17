//
//  ViewController.m
//  LoginChannel
//
//  Created by ＵＳＥＲ on 2019/9/12.
//  Copyright © 2019 hsin_project. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import "EnumType.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_loginWithFb
     addTarget:self
     action:@selector(loginButtonClickedＷWithFB) forControlEvents:UIControlEventTouchUpInside];
    
    [[NSNotificationCenter defaultCenter] addObserverForName:FBSDKAccessTokenDidChangeNotification
                                                      object:nil
                                                       queue:[NSOperationQueue mainQueue]
                                                  usingBlock:
     ^(NSNotification *notification) {
         if (notification.userInfo[FBSDKAccessTokenDidChangeUserIDKey]) {
             NSLog(@"Token is work");
         }
     }];
    
    
}


-(void)loginButtonClickedＷWithFB
    {
        
        NextViewController *nextVC = [NextViewController new];
    
        FBSDKLoginManager *login = [[FBSDKLoginManager alloc] init];
        [login logInWithPermissions:@[@"public_profile"] fromViewController:self handler:^(FBSDKLoginManagerLoginResult * _Nullable result, NSError * _Nullable error) {
            if (error) {
                NSLog(@"Process error");
            } else if (result.isCancelled) {
                NSLog(@"Cancelled");
            } else {
                NSLog(@"Logged in");
                
                [FBSDKProfile loadCurrentProfileWithCompletion:
                 ^(FBSDKProfile *profile, NSError *error) {
                     if (profile) {
                         nextVC.type = FB;
                         nextVC.profile = profile;
                         [self presentViewController:nextVC animated:NO completion:nil];
                         
                         

                     }
                 }];
                
               
                
                
                
             
                
            }
        }];
        
       
    }
    
@end
