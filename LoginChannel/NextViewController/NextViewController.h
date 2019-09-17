//
//  NextViewController.h
//  LoginChannel
//
//  Created by ＵＳＥＲ on 2019/9/12.
//  Copyright © 2019 hsin_project. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import "EnumType.h"

NS_ASSUME_NONNULL_BEGIN

@interface NextViewController : UIViewController

    @property (nonatomic, assign) LoginType type;
    @property (nonatomic, strong) FBSDKProfile *profile;
    @property (weak, nonatomic) IBOutlet UILabel *titleLabel;
    @property (weak, nonatomic) IBOutlet UIView *profileView;
    
    
@end

NS_ASSUME_NONNULL_END
