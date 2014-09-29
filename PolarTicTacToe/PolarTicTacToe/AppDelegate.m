//
//  AppDelegate.m
//  PolarTicTacToe
//
//  Created by Fred Kneeland on 9/14/14.
//  Copyright (c) 2014 Fred Kneeland. All rights reserved.
//

#import "AppDelegate.h"
#import "RootViewController.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    self.rootViewController = [[RootViewController alloc] initWithNibName:@"RootViewController" bundle:nil];
    
    // 2. Add the view controller to the Window's content view
    [self.window.contentView addSubview:self.rootViewController.view];
    self.rootViewController.view.frame = ((NSView*)self.window.contentView).bounds;
}

@end
