//
//  AppDelegate.h
//  CascadeEffect Scorer
//
//  Created by Fred Kneeland on 9/9/14.
//  Copyright (c) 2014 Fred Kneeland. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "RootViewController.h"
#import "AutoViewController.h"
#import "TelopViewController.h"
#import "PenaltyViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;
@property (strong, nonatomic) UIWindow *window;

+ (RootViewController *) rootViewController;
+ (AutoViewController *) autoViewController;
+ (TelopViewController *) telopViewController;
+ (PenaltyViewController *) penaltyViewController;

@end
