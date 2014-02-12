//
//  TrigLogSettings.h
//  BrainBuilderPro
//
//  Created by Fred Kneeland on 3/16/12.
//  Copyright (c) 2012 BLADE Enterprises LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

#define SWITCH1 @"SWITCH1"
#define SWITCH2 @"SWITCH2"
#define SWITCH3 @"SWITCH3"
#define SLIDER1 @"SLIDER1"
#define SLIDER2 @"SLIDER2"
#define FIRSTLOAD @"FIRSTLOAD"

NSString *helper;
NSString *helper2;

int transformer;
int transformer2;
int firstLoad;
BOOL transformer3;
BOOL transformer4;
BOOL transformer5;

@class TrigCustomLog;

@interface TrigLogSettings : UIViewController
{
    IBOutlet UISlider *valueOfBases;
    IBOutlet UISlider *valueOfPowers;
    IBOutlet UISwitch *positiveExponents;
    IBOutlet UISwitch *negativeExponents;
    IBOutlet UISwitch *logs;
    IBOutlet UILabel *basesLabel;
    IBOutlet UILabel *powersLabel;
    IBOutlet TrigCustomLog *customLog;
}

@property (retain, nonatomic) UISlider *valueOfBases;
@property (retain, nonatomic) UISlider *valueOfPowers;
@property (retain, nonatomic) UISwitch *positiveExponents;
@property (retain, nonatomic) UISwitch *negativeExponents;
@property (retain, nonatomic) UISwitch *logs;
@property (retain, nonatomic) UILabel *basesLabel;
@property (retain, nonatomic) UILabel *powersLabel;
@property (retain, nonatomic) TrigCustomLog *customLog;

-(IBAction) upDateLabels:(id)sender;

@end
