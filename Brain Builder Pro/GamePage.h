//
//  GamePage.h
//  BrainBuilderPro
//
//  Created by Fred Kneeland on 6/25/13.
//  Copyright (c) 2013 BLADE Enterprises LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

NSString *LimPreVal;
NSString *QuestionVal;
NSString *UpperLimitVal;
NSString *LowerLimitVal;
NSString *RightResponses;
NSString *WrongResponses;
NSString *numbRight;
NSString *buttonTitle;
NSString *Button1;
NSString *Button2;
NSString *Button3;
NSString *Button4;

int randomNumb;
int secondRandom;
int thirdRandom;
int correctScoreHolder;
int rightCounter;
int wrongCounter;
int totalCounter;
int totalHighScore;
int chooser;
float finalScore;
int fourthRandomNumber;

NSDate *startTime;
NSDate *endTime;
NSTimeInterval elapsedTime;

@class LimitsHolder;
@class FirstDervHolder;
@class SecondDervHolder;
@class IndefiniteIntegralHolder;
@class DefiniteIntegralHolder;
@class CalcHighScores;

@interface GamePage : UIViewController
{
    IBOutlet UILabel *integral;
    IBOutlet UILabel *derivitive;
    IBOutlet UILabel *function;
    IBOutlet UILabel *firstQuestionMark;
    IBOutlet UILabel *secondQuestionMark;
    IBOutlet UILabel *limit;
    IBOutlet UILabel *xapproaching;
    IBOutlet UILabel *xValue;
    IBOutlet UILabel *equals;
    IBOutlet UILabel *upperLimit;
    IBOutlet UILabel *lowerLimit;
    IBOutlet UILabel *question;
    IBOutlet UILabel *rightAnswers;
    IBOutlet UILabel *wrongAnswers;
    IBOutlet LimitsHolder *object1;
    IBOutlet FirstDervHolder *object2;
    IBOutlet SecondDervHolder *object3;
    IBOutlet IndefiniteIntegralHolder *object4;
    IBOutlet DefiniteIntegralHolder *object5;
    IBOutlet CalcHighScores *highScores;
    IBOutlet UIButton *buttonA;
    IBOutlet UIButton *buttonB;
    IBOutlet UIButton *buttonC;
    IBOutlet UIButton *buttonD;
}

@property (retain, nonatomic) UILabel *integral;
@property (retain, nonatomic) UILabel *derivitive;
@property (retain, nonatomic) UILabel *function;
@property (retain, nonatomic) UILabel *firstQuestionMark;
@property (retain, nonatomic) UILabel *secondQuestionMark;
@property (retain, nonatomic) UILabel *limit;
@property (retain, nonatomic) UILabel *xapproaching;
@property (retain, nonatomic) UILabel *xValue;
@property (retain, nonatomic) UILabel *equals;
@property (retain, nonatomic) UILabel *upperLimit;
@property (retain, nonatomic) UILabel *lowerLimit;
@property (retain, nonatomic) UILabel *question;
@property (retain, nonatomic) LimitsHolder *object1;
@property (retain, nonatomic) FirstDervHolder *object2;
@property (retain, nonatomic) SecondDervHolder *object3;
@property (retain, nonatomic) IndefiniteIntegralHolder *object4;
@property (retain, nonatomic) DefiniteIntegralHolder *object5;
@property (retain, nonatomic) UILabel *rightAnswers;
@property (retain, nonatomic) UILabel *wrongAnswers;
@property (retain, nonatomic) UIButton *buttonA;
@property (retain, nonatomic) UIButton *buttonB;
@property (retain, nonatomic) UIButton *buttonC;
@property (retain, nonatomic) UIButton *buttonD;
@property (retain, nonatomic) CalcHighScores *highScores;

+(void) GameChoice:(NSInteger)choice;
-(void) SetUpLabels:(NSInteger)choice;
-(void) setUpButtons;
-(void) upDate;
-(void) setUp;
-(void) alertSetUp;

-(IBAction) firstButton:(id)sender;
-(IBAction) secondButton:(id)sender;
-(IBAction) thirdButton:(id)sender;
-(IBAction) fourthButton:(id)sender;

@end
