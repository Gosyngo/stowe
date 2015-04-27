//
//  AppDelegate.m
//  GoSynGo
//
//  Created by Pengqing Xie on 4/24/15.
//  Copyright (c) 2015 GoSynGo. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    [self configInitViewController];
    
    [self configTabBar];
    
    return YES;
}

- (void)configInitViewController{
    UIStoryboard *storyboard = self.window.rootViewController.storyboard;
    UIViewController *initViewController = nil;
    
    BOOL authenticated = [self checkLoginState];
    
    if (!authenticated) {
        // Jump to the login page
        initViewController = [storyboard instantiateViewControllerWithIdentifier:@"LogInViewController"];
    } else {
        initViewController = [storyboard instantiateInitialViewController];
    }
    
    // Set root view controller and make windows visible
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = initViewController;
    [self.window makeKeyAndVisible];
}

// Check if the user is not already signed in
- (BOOL)checkLoginState {
    return FALSE;
}

// Custumize tab bar and tab bar icons
- (void)configTabBar{
    
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
