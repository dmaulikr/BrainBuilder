//
//  CustomGame.h
//  Gr3y Matt3r 2.0
//
//  Created by Fred Kneeland on 6/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAD.h>

#define SWITCH1 @"OnOff1"
#define SWITCH2 @"OnOff2"
#define SWITCH3 @"OnOff3"
#define SWITCH4 @"OnOff4"
#define SLIDER @"Slider"
#define TEST @"HelloWorld"
#define SEGMENT @"SEGMENT"

int FirstLoad;
int Load;
NSString *title;
NSString *Data;
int segment;
int highScorez;

@class CustomPlay;
@class RootViewController;
@class HighScore;

@interface CustomGame : UIViewController <ADBannerViewDelegate>  {
	IBOutlet CustomPlay *gamePage;
	IBOutlet HighScore *highScore;
	IBOutlet RootViewController *homePage;
	IBOutlet UISlider *theSlider;
	IBOutlet UILabel *display;
	IBOutlet UISwitch *add;
	IBOutlet UISwitch *minus;
	IBOutlet UISwitch *times;
	IBOutlet UISwitch *divide;
	IBOutlet UISegmentedControl *numberofProblems;
	IBOutlet UIBarButtonItem *nextPage;
}

@property (retain, nonatomic) HighScore *highScore;
@property (retain, nonatomic) CustomPlay *gamePage;
@property (retain, nonatomic) RootViewController *homePage;
@property (retain, nonatomic) UISlider *theSlider;
@property (retain, nonatomic) UILabel *display;
@property (retain, nonatomic) UISwitch *add;
@property (retain, nonatomic) UISwitch *minus;
@property (retain, nonatomic) UISwitch *times;
@property (retain, nonatomic) UISwitch *divide;
@property (nonatomic, retain) UISegmentedControl *numberofProblems;
@property (retain, nonatomic)  UIBarButtonItem *nextPage;

-(IBAction) loadHomePage:(id)sender;
-(IBAction) loadGamePage:(id)sender;
-(IBAction) updateDisplay:(id)sender;
-(IBAction) KeepDaChanges:(id)sender;

-(void) keepChanges;
-(void) highScores;
-(void) updateHighScore;
-(void) normal;

@end
