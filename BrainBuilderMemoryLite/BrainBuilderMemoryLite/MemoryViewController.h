//
//  MemoryViewController.h
//  BrainBuilder
//
//  Created by Fred Kneeland on 8/19/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

#define deg2rad (3.1415926/180.0)
#define ROUND @"ROUND"

@class HighScoreViewController;

@interface MemoryViewController : UIViewController <ADBannerViewDelegate>
{
    IBOutlet UIView *tester;
    IBOutlet UIButton *button1;
    IBOutlet UIButton *button2;
    IBOutlet UIButton *button3;
    IBOutlet UIButton *button4;
    IBOutlet UIButton *button5;
    IBOutlet UIButton *button6;
    IBOutlet UIButton *button7;
    IBOutlet UIButton *button8;
    IBOutlet UIButton *button9;
    IBOutlet UIButton *button10;
    IBOutlet UIButton *button11;
    IBOutlet UIButton *button12;
    IBOutlet UIButton *button13;
    IBOutlet UIButton *button14;
    IBOutlet UIButton *button15;
    IBOutlet UIButton *button16;
    IBOutlet UIButton *button17;
    IBOutlet UIButton *button18;
    IBOutlet UIButton *button19;
    IBOutlet UIButton *button20;
    IBOutlet UIView *gameView;
    IBOutlet HighScoreViewController *highScores;
    
    int assist;
    int rightButton1;
    int rightButton2;
    int rightButton3;
    int rightButton4;
    int rightButton5;
    int rightButton6;
    int rightButton7;
    int rightButton8;
    int rightButton9;
    int rightButton10;
    int buttonPressed1;
    int buttonPressed2;
    int buttonPressed3;
    int buttonPressed4;
    int buttonPressed5;
    int buttonPressed6;
    int buttonPressed7;
    int buttonPressed8;
    int buttonPressed9;
    int buttonPressed10;
    int buttonPressed11;
    int buttonPressed12;
    int buttonPressed13;
    int buttonPressed14;
    int buttonPressed15;
    int buttonPressed16;
    int buttonPressed17;
    int buttonPressed18;
    int buttonPressed19;
    int buttonPressed20;
    int rightCounter;
    NSString *message;
    NSString *title;
    NSString *buttonTitle;
    int level;
    int round;
    int randomTurns;
    int numbWrong;
    int score;
    int totalHighScore;
}

@property (retain, nonatomic) UIButton *button1;
@property (retain, nonatomic) UIButton *button2;
@property (retain, nonatomic) UIButton *button3;
@property (retain, nonatomic) UIButton *button4;
@property (retain, nonatomic) UIButton *button5;
@property (retain, nonatomic) UIButton *button6;
@property (retain, nonatomic) UIButton *button7;
@property (retain, nonatomic) UIButton *button8;
@property (retain, nonatomic) UIButton *button9;
@property (retain, nonatomic) UIButton *button10;
@property (retain, nonatomic) UIButton *button11;
@property (retain, nonatomic) UIButton *button12;
@property (retain, nonatomic) UIButton *button13;
@property (retain, nonatomic) UIButton *button14;
@property (retain, nonatomic) UIButton *button15;
@property (retain, nonatomic) UIButton *button16;
@property (retain, nonatomic) UIButton *button17;
@property (retain, nonatomic) UIButton *button18;
@property (retain, nonatomic) UIButton *button19;
@property (retain, nonatomic) UIButton *button20;
@property (retain, nonatomic) UIView *tester;
@property (retain, nonatomic) UIView *gameView;
@property (retain, nonatomic) HighScoreViewController *highScores;

-(void) returnButtons;
-(void) setButtons;
-(void) determineCorrect:(NSInteger)helper;
-(void) AlertView;
-(void) AlertView2;
-(void) AlertView3;
-(Boolean) aCorrectNumb:(NSInteger)helper;
-(NSInteger) LevelValue;
-(void) coverUpButtons;
-(void) printValues;
-(void) distractButtons;

-(IBAction)Button1:(id)sender;
-(IBAction)Button2:(id)sender;
-(IBAction)Button3:(id)sender;
-(IBAction)Button4:(id)sender;
-(IBAction)Button5:(id)sender;
-(IBAction)Button6:(id)sender;
-(IBAction)Button7:(id)sender;
-(IBAction)Button8:(id)sender;
-(IBAction)Button9:(id)sender;
-(IBAction)Button10:(id)sender;
-(IBAction)Button11:(id)sender;
-(IBAction)Button12:(id)sender;
-(IBAction)Button13:(id)sender;
-(IBAction)Button14:(id)sender;
-(IBAction)Button15:(id)sender;
-(IBAction)Button16:(id)sender;
-(IBAction)Button17:(id)sender;
-(IBAction)Button18:(id)sender;
-(IBAction)Button19:(id)sender;
-(IBAction)Button20:(id)sender;
-(IBAction)loadInstructions:(id)sender;

-(IBAction)upRound:(id)sender;
-(IBAction)upLevel:(id)sender;
-(IBAction)StartTimer:(id)sender;

@end
