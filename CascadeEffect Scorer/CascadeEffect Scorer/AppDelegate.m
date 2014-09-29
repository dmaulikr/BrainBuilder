//
//  AppDelegate.m
//  CascadeEffect Scorer
//
//  Created by Fred Kneeland on 9/9/14.
//  Copyright (c) 2014 Fred Kneeland. All rights reserved.
//

#import "AppDelegate.h"

#import "RootViewController.h"
#import "AutoViewController.h"
#import "TelopViewController.h"
#import "PenaltyViewController.h"
#import "AppSettings.h"

static RootViewController *_rootViewController = NULL;
static AutoViewController *_autoViewController = NULL;
static TelopViewController *_telopViewController = NULL;
static PenaltyViewController *_penaltyViewController = NULL;

@implementation AppDelegate

@synthesize navigationController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    RootViewController *rootViewController = [AppDelegate rootViewController];
    self.navigationController = [[UINavigationController alloc]
                                 initWithRootViewController:rootViewController];
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    self.navigationController.navigationItem.backBarButtonItem.title = @"Back";
    self.window.rootViewController = self.navigationController;
    //[window addSubview:navigationController.view];
    [self.window makeKeyAndVisible];
    return YES;

}

+ (RootViewController *) rootViewController
{
    if (!_rootViewController)
    {
        if ([AppSettings screenType] == iOS_35)
        {
            _rootViewController = [[RootViewController alloc]
                                    initWithNibName:@"RootView35" bundle: nil];
        }
        else
        {
            _rootViewController = [[RootViewController alloc]
                                    initWithNibName:@"RootView4" bundle: nil];
        }
    }
    return _rootViewController;
}

+ (AutoViewController *) autoViewController
{
    if (!_autoViewController)
    {
        if ([AppSettings screenType] == iOS_35)
        {
            _autoViewController = [[AutoViewController alloc]
                                   initWithNibName:@"AutoView35" bundle:nil];
        }
        else
        {
            _autoViewController = [[AutoViewController alloc]
                                   initWithNibName:@"AutoView4" bundle:nil];
        }
    }
    return _autoViewController;
}

+ (TelopViewController *) telopViewController
{
    if (!_telopViewController)
    {
        if ([AppSettings screenType] == iOS_35)
        {
            _telopViewController = [[TelopViewController alloc]
                                    initWithNibName:@"TelopView35" bundle:nil];
        }
        else
        {
            _telopViewController = [[TelopViewController alloc]
                                    initWithNibName:@"TelopView4" bundle:nil];
        }
    }
    return _telopViewController;
}

+ (PenaltyViewController *) penaltyViewController
{
    if (!_penaltyViewController)
    {
        if ([AppSettings screenType] == iOS_35)
        {
            _penaltyViewController = [[PenaltyViewController alloc]
                                      initWithNibName:@"PenaltyView35" bundle:nil];
        }
        else
        {
            _penaltyViewController = [[PenaltyViewController alloc]
                                      initWithNibName:@"PenaltyView4" bundle:nil];
        }
    }
    return _penaltyViewController;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
