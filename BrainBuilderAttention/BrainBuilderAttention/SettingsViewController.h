//
//  SettingsViewController.h
//  BrainBuilderAttention
//
//  Created by Fred Kneeland on 9/5/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import <UIKit/UIKit.h>
#define LEVEL @"LEVEL"
#define STARTLEVEL @"STARTLEVEL"
#define SELECTEDINDEX @"SELECTEDINDEX"

@interface SettingsViewController : UIViewController
{
    IBOutlet UISegmentedControl *startingLevel;
}

@property(retain, nonatomic) UISegmentedControl *startingLevel;

-(IBAction) newStartingLevel:(id)sender;

@end
