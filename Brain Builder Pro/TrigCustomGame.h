//
//  TrigCustomGame.h
//  BrainBuilderPro
//
//  Created by Fred Kneeland on 3/16/12.
//  Copyright (c) 2012 BLADE Enterprises LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

// saved highScores
#define TRIGSCORE @"TRIGHighScore"
#define TRIGSCORE2 @"TRIGHighScore2"
#define TRIGSCORE9 @"TRIGSCORE9"
#define TRIGSCORE10 @"TRIGSCORE10"
#define TRIGSCORE18 @"TRIGSCORE18"

// all of the COS values
#define COS0 @"√3 / 2"
#define COS1 @"√2 / 2"
#define COS2 @"1 / 2"
#define COS3 @"1"
#define COS4 @"0"
#define COS5 @"-1 / 2"
#define COS6 @"-√2 / 2"
#define COS7 @"-√3 / 2"
#define COS8 @"-1"
#define COS9 @"-√3 / 2"
#define COS10 @"-√2 / 2"
#define COS11 @"-1 / 2"
#define COS12 @"0"
#define COS13 @"1 / 2"
#define COS14 @"√2 / 2"
#define COS15 @"√3 / 2"

// all of the Sec Values
#define SEC0 @"2√3 / 3"
#define SEC1 @"2√2 / 2"
#define SEC2 @"2"
#define SEC3 @"1"
#define SEC4 @"0"
#define SEC5 @"-2"
#define SEC6 @"-2√2 / 2"
#define SEC7 @"-2√3 / 3"
#define SEC8 @"-1"
#define SEC9 @"-2√3 / 3"
#define SEC10 @"-2√2 / 2"
#define SEC11 @"-2"
#define SEC12 @"0"
#define SEC13 @"2"
#define SEC14 @"2√2 / 2"
#define SEC15 @"2√3 / 3"

// all of the Sin Values
#define SIN0 @"1 / 2"
#define SIN1 @"√2 / 2"
#define SIN2 @"√3 / 2"
#define SIN3 @"0"
#define SIN4 @"1"
#define SIN5 @"√3 / 2"
#define SIN6 @"√2 / 2"
#define SIN7 @"1 / 2"
#define SIN8 @"0"
#define SIN9 @"-1 / 2"
#define SIN10 @"-√2 / 2"
#define SIN11 @"-√3 / 2"
#define SIN12 @"-1"
#define SIN13 @"-√3 / 2"
#define SIN14 @"-√2 / 2"
#define SIN15 @"-1 / 2"

// all of the Tan Values
#define TAN0 @"√3 / 3"
#define TAN1 @"1"
#define TAN2 @"√3"
#define TAN3 @"0"
#define TAN4 @"undefined"
#define TAN5 @"-√3"
#define TAN6 @"-1"
#define TAN7 @"-√3 / 3"
#define TAN8 @"0"
#define TAN9 @"√3 / 3"
#define TAN10 @"1"
#define TAN11 @"√3"
#define TAN12 @"undefined"
#define TAN13 @"-√3"
#define TAN14 @"-1"
#define TAN15 @"-√3 / 3"

// all of the COT Values
#define COT0 @"3√3 / 3"
#define COT1 @"1"
#define COT2 @"√3 / 3"
#define COT3 @"0"
#define COT4 @"undefined"
#define COT5 @"-√3 / 3"
#define COT6 @"-1"
#define COT7 @"-3√3 / 3"
#define COT8 @"0"
#define COT9 @"3√3 / 3"
#define COT10 @"1"
#define COT11 @"√3 / 3"
#define COT12 @"undefined"
#define COT13 @"-√3 / 3"
#define COT14 @"-1"
#define COT15 @"-3√3 / 3"

// all of the csc Values
#define CSC0 @"2"
#define CSC1 @"2√2 / 2"
#define CSC2 @"2√3 / 3"
#define CSC3 @"0"
#define CSC4 @"1"
#define CSC5 @"2√3 / 3"
#define CSC6 @"2√2 / 2"
#define CSC7 @"2"
#define CSC8 @"0"
#define CSC9 @"-2"
#define CSC10 @"-2√2 / 2"
#define CSC11 @"-2√3 / 3"
#define CSC12 @"-1"
#define CSC13 @"-2√3 / 3"
#define CSC14 @"-2√2 / 2"
#define CSC15 @"-2"

NSString *func;
NSString *numb;
NSString *collect;
NSString *conclusion;
NSString *outPut;
NSString *helper;
NSString *answer;
NSString *answer2;
NSString *answer3;
NSDate *startTime;
NSDate *endTime;
NSTimeInterval elapsedTime;
NSString *numbRight;
NSString *buttonTitle;
NSString *firstButton;
NSString *secondButton;
NSString *thirdButton;
NSString *fourthButton;
NSString *wrongString;

int randNumb;
int newRandNumb;
int correctAnswer;
int correctAnswer2;
int correctAnswer3;
int correctlyAnswered;
int inCorrectlyAnswered;
int totalQuestions;
float finalScore;
int totalHighScore;
int wrongRandom;


BOOL sin22;
BOOL cos22;
BOOL tan22;
BOOL csc22;
BOOL sec22;
BOOL cot22;
BOOL quad122;
BOOL quad222;
BOOL quad322;
BOOL quad422;
NSString *message;

@class TrigHighScoreQuick;

@interface TrigCustomGame : UIViewController
{
    IBOutlet UILabel *question1;
    IBOutlet UILabel *question2;
    IBOutlet UILabel *question3;
    IBOutlet UILabel *question4;
    IBOutlet UILabel *question5;
    IBOutlet UILabel *equals;
    IBOutlet UILabel *equals2;
    IBOutlet UILabel *equals3;
    IBOutlet UILabel *equals4;
    IBOutlet UILabel *equals5;
    IBOutlet UILabel *questionMark;
    IBOutlet UILabel *questionMark2;
    IBOutlet UILabel *questionMark3;
    IBOutlet UILabel *questionMark4;
    IBOutlet UILabel *questionMark5;
    IBOutlet UILabel *result;
    IBOutlet UILabel *result2;
    IBOutlet UIButton *answerA;
    IBOutlet UIButton *answerB;
    IBOutlet UIButton *answerC;
    IBOutlet UIButton *answerD;
    IBOutlet TrigHighScoreQuick *highScoreCustom;
}

@property (retain, nonatomic) UILabel *question1;
@property (retain, nonatomic) UILabel *question2;
@property (retain, nonatomic) UILabel *question3;
@property (retain, nonatomic) UILabel *question4;
@property (retain, nonatomic) UILabel *question5;
@property (retain, nonatomic) UILabel *equals;
@property (retain, nonatomic) UILabel *equals2;
@property (retain, nonatomic) UILabel *equals3;
@property (retain, nonatomic) UILabel *equals4;
@property (retain, nonatomic) UILabel *equals5;
@property (retain, nonatomic) UILabel *questionMark;
@property (retain, nonatomic) UILabel *questionMark2;
@property (retain, nonatomic) UILabel *questionMark3;
@property (retain, nonatomic) UILabel *questionMark4;
@property (retain, nonatomic) UILabel *questionMark5;
@property (retain, nonatomic) UILabel *result;
@property (retain, nonatomic) UILabel *result2;
@property (retain, nonatomic) UIButton *answerA;
@property (retain, nonatomic) UIButton *answerB;
@property (retain, nonatomic) UIButton *answerC;
@property (retain, nonatomic) UIButton *answerD;
@property (retain, nonatomic) TrigHighScoreQuick *highScoreCustom;

-(void) learnSettings:(NSInteger)sin: (NSInteger)cos: (NSInteger)tan: (NSInteger)csc: (NSInteger)sec: (NSInteger)cot: (NSInteger)quad1: (NSInteger)quad2: (NSInteger) quad3: (NSInteger)quad4;
-(void) setUp;
-(id) calcAnswer:(NSString *)Chooser;
-(void) moveUp;
-(void) setButtonTitles;
-(void) upDateResponse;
-(void) alertSetUp;
-(void) clear;
-(void) setUpWrongButtons;
-(void) calcRandomFunc;
-(void) sineOption:(NSInteger)sineOkay;
-(void) cosOption:(NSInteger)cosOkay;
-(void) tanOption:(NSInteger)tanOkay;
-(void) cscOption:(NSInteger)cscOkay;
-(void) secOption:(NSInteger)secOkay;
-(void) cotOption:(NSInteger)cotOkay;
-(void) quad1Option:(NSInteger)quad1Okay;
-(void) quad2Option:(NSInteger)quad2Okay;
-(void) quad3Option:(NSInteger)quad3Okay;
-(void) quad4Option:(NSInteger)quad4Okay;

-(IBAction) ButtonA:(id)sender;
-(IBAction) ButtonB:(id)sender;
-(IBAction) ButtonC:(id)sender;
-(IBAction) ButtonD:(id)sender;


@end
