//
//  TrigCustomSetUp.h
//  BrainBuilderPro
//
//  Created by Fred Kneeland on 3/16/12.
//  Copyright (c) 2012 BLADE Enterprises LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

#define SIN32 @"SIN32"
#define COS32 @"COS32"
#define TAN32 @"TAN32"
#define SEC32 @"SEC32"
#define CSC32 @"CSC32"
#define COT32 @"COT32"
#define QUAD132 @"QUAD132"
#define QUAD232 @"QUAD232"
#define QUAD332 @"QUAD332"
#define QUAD432 @"QUAD432"
#define THEFIRST @"THEFIRST"

int sin2;
int cos2;
int tan2;
int csc2;
int sec2;
int cot2;
int quad12;
int quad22;
int quad32;
int quad42;
int firstSave;

@class TrigCustomGame;
@class TrigLogSettings;

@interface TrigCustomSetUp : UIViewController
{
    IBOutlet TrigCustomGame *customGame2;
    IBOutlet TrigLogSettings *logSettings;
    IBOutlet UISwitch *sin;
    IBOutlet UISwitch *cos;
    IBOutlet UISwitch *tan;
    IBOutlet UISwitch *csc;
    IBOutlet UISwitch *sec;
    IBOutlet UISwitch *cot;
    IBOutlet UISwitch *quad1;
    IBOutlet UISwitch *quad2;
    IBOutlet UISwitch *quad3;
    IBOutlet UISwitch *quad4;
    IBOutlet UIView *funcDetails;
    IBOutlet UISegmentedControl *choice;
}

@property (retain, nonatomic) TrigCustomGame *customGame2;
@property (retain, nonatomic) TrigLogSettings *logSettings;
@property (retain, nonatomic) UISwitch *sin;
@property (retain, nonatomic) UISwitch *cos;
@property (retain, nonatomic) UISwitch *tan;
@property (retain, nonatomic) UISwitch *csc;
@property (retain, nonatomic) UISwitch *sec;
@property (retain, nonatomic) UISwitch *cot;
@property (retain, nonatomic) UISwitch *quad1;
@property (retain, nonatomic) UISwitch *quad2;
@property (retain, nonatomic) UISwitch *quad3;
@property (retain, nonatomic) UISwitch *quad4;
@property (retain, nonatomic) UIView *funcDetails;
@property (retain, nonatomic) UISegmentedControl *choice;

-(IBAction) loadCustomGamePage:(id)sender;
-(IBAction) upDate:(id)sender;
-(IBAction) exchangeDetailView:(id)sender;
-(IBAction) saveData:(id)sender;

-(void) helper;

@end
