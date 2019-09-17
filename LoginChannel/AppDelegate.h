//
//  AppDelegate.h
//  LoginChannel
//
//  Created by ＵＳＥＲ on 2019/9/12.
//  Copyright © 2019 hsin_project. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

