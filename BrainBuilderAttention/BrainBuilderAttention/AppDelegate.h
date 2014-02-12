//
//  AppDelegate.h
//  BrainBuilderAttention
//
//  Created by Fred Kneeland on 8/29/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    UIWindow *window;
	UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end
