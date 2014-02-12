//
//  RootViewController.h
//  BrainBuilder
//
//  Created by Fred Kneeland on 8/19/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

#define FIRSTLOAD @"FIRSTLOAD"

@interface RootViewController : UIViewController <ADBannerViewDelegate>
{
    int firstLoad;
}

-(IBAction) loadMemoryPage:(id)sender;
-(IBAction) loadHighScores:(id)sender;
-(IBAction) loadInstructions:(id)sender;
-(IBAction) loadWebPage:(id)sender;

@end
