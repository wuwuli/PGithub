//
//  AppDelegate.m
//  PGithub
//
//  Created by 吴紫颖 on 2020/3/27.
//  Copyright © 2020 吴紫颖. All rights reserved.
//

#import "AppDelegate.h"

#import "HomeViewController.h"
#import "BaseNavigationController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    self.window.backgroundColor = [UIColor whiteColor];
    
    BaseNavigationController *navVC = [[BaseNavigationController alloc] initWithRootViewController:[HomeViewController new]];
    
    self.window.rootViewController = navVC;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
