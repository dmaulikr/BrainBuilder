//
//  TrigCustomLog.h
//  BrainBuilderPro
//
//  Created by Fred Kneeland on 3/16/12.
//  Copyright (c) 2012 BLADE Enterprises LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

#define TRIGSCORE @"TRIGHighScore"
#define TRIGSCORE2 @"TRIGHighScore2"
#define TRIGSCORE9 @"TRIGSCORE9"
#define TRIGSCORE10 @"TRIGSCORE10"
#define TRIGSCORE18 @"TRIGSCORE18"

int base;
int power;
int randomAttempt;
int check;
int specialLogVar;
int theAnswer;
int thePowerVar;
int theBaseVar;
int incorrect1;
int incorrect2;
int incorrect3;
int knowIfRightlyAnswered;
int correctlyAnswered;
int inCorrectlyAnswered;
int totalAnswered;
float finalScore;
int totalHighScore;

BOOL negativeExpo;
BOOL positiveExpo;
BOOL logarithmic;

NSString *logerLabel;
NSString *baseLabel;
NSString *powerLabel;
NSString *conclusionLabel;
NSString *graduerLabel;
NSString *daAnswer;
NSString *daAnswer2;
NSString *wrongButton1;
NSString *wrongButton2;
NSString *wrongButton3;
NSString *wrongButton12;
NSString *wrongButton22;
NSString *wrongButton32;
NSString *numbRight;
NSString *buttonTitle;

NSDate *startTime;
NSDate *endTime;
NSTimeInterval elapsedTime;

@class TrigHighScoreQuick;

@interface TrigCustomLog : UIViewController
{
    IBOutlet UILabel *loger1;
    IBOutlet UILabel *loger2;
    IBOutlet UILabel *loger3;
    IBOutlet UILabel *baser1;
    IBOutlet UILabel *baser2;
    IBOutlet UILabel *baser3;
    IBOutlet UILabel *powerer1;
    IBOutlet UILabel *powerer2;
    IBOutlet UILabel *powerer3;
    IBOutlet UILabel *conclusio1;
    IBOutlet UILabel *conclusio2;
    IBOutlet UILabel *conclusio3;
    IBOutlet UILabel *graduer;
    IBOutlet UIButton *buttonA;
    IBOutlet UIButton *buttonB;
    IBOutlet UIButton *buttonC;
    IBOutlet UIButton *buttonD;
    IBOutlet UILabel *equals;
    IBOutlet UILabel *questionMark;
    IBOutlet TrigHighScoreQuick *highScore;
}

@property (retain, nonatomic) UILabel *loger1;
@property (retain, nonatomic) UILabel *loger2;
@property (retain, nonatomic) UILabel *loger3;
@property (retain, nonatomic) UILabel *baser1;
@property (retain, nonatomic) UILabel *baser2;
@property (retain, nonatomic) UILabel *baser3;
@property (retain, nonatomic) UILabel *powerer1;
@property (retain, nonatomic) UILabel *powerer2;
@property (retain, nonatomic) UILabel *powerer3;
@property (retain, nonatomic) UILabel *conclusio1;
@property (retain, nonatomic) UILabel *conclusio2;
@property (retain, nonatomic) UILabel *conclusio3;
@property (retain, nonatomic) UILabel *graduer;
@property (retain, nonatomic) UIButton *buttonA;
@property (retain, nonatomic) UIButton *buttonB;
@property (retain, nonatomic) UIButton *buttonC;
@property (retain, nonatomic) UIButton *buttonD;
@property (retain, nonatomic) UILabel *equals;
@property (retain, nonatomic) UILabel *questionMark;
@property (retain, nonatomic) TrigHighScoreQuick *highScore;


-(void) learnDaSettigs:(NSInteger)bases: (NSInteger)powers: (BOOL)negExponents: (BOOL)posExponents: (BOOL)logars;
-(void) setUp;
-(void) moveUp;
-(void) setUpButtons;
-(void) setUpSpecial;
-(void) AlertSetUp;
-(void) clear;

-(IBAction) buttonAPressed:(id)sender;
-(IBAction) buttonBPressed:(id)sender;
-(IBAction) buttonCPressed:(id)sender;
-(IBAction) buttonDPressed:(id)sender;

@end
