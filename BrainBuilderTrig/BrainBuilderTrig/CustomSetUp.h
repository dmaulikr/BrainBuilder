//
//  CustomSetUp.h
//  BrainBuilderTrig
//
//  Created by Fred Kneeland on 3/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
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

@class CustomGame;

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
int rad2;

@interface CustomSetUp : UIViewController
{
    IBOutlet CustomGame *customGame2;
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
    IBOutlet UISwitch *rad;
}

@property (retain, nonatomic) CustomGame *customGame2;
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
@property (retain, nonatomic) UISwitch *rad;

-(IBAction) loadCustomGamePage:(id)sender;
-(IBAction) upDate:(id)sender;
-(IBAction) saveData:(id)sender;

-(void) helper;

@end
