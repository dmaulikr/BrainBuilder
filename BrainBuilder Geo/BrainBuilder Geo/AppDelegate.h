//
//  AppDelegate.h
//  BrainBuilder Geo
//
//  Created by Fred Kneeland on 5/23/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;
@property (strong, nonatomic) UIWindow *window;

@end
