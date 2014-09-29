//
//  AppDelegate.h
//  PolarTicTacToe
//
//  Created by Fred Kneeland on 9/14/14.
//  Copyright (c) 2014 Fred Kneeland. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "RootViewController.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (nonatomic,strong) IBOutlet RootViewController *rootViewController;

@property (assign) IBOutlet NSWindow *window;

@end
