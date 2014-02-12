//
//  GamePage.h
//  BrainBuilderCalc
//
//  Created by Fred Kneeland on 11/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@class LimitsHolder;
@class HighScores;

int randomNumb;
int secondRandom;
int correctScoreHolder;
int rightCounter;
int wrongCounter;
int totalCounter;
int totalHighScore;

float finalScore;

NSString *RightResponses;
NSString *WrongResponses;
NSString *numbRight;
NSString *buttonTitle;

NSDate *startTime;
NSDate *endTime;
NSTimeInterval elapsedTime;

@interface GamePage : UIViewController <ADBannerViewDelegate>
{
    IBOutlet UILabel *rightAnswers;
    IBOutlet UILabel *wrongAnswers;
    IBOutlet UILabel *limit;
    IBOutlet UILabel *question;
    IBOutlet UIButton *buttonA;
    IBOutlet UIButton *buttonB;
    IBOutlet UIButton *buttonC;
    IBOutlet UIButton *buttonD;
    IBOutlet LimitsHolder *object;
    IBOutlet HighScores *highScore;
}

@property (retain, nonatomic) UILabel *rightAnswers;
@property (retain, nonatomic) UILabel *wrongAnswers;
@property (retain, nonatomic) UILabel *limit;
@property (retain, nonatomic) UILabel *question;
@property (retain, nonatomic) UIButton *buttonA;
@property (retain, nonatomic) UIButton *buttonB;
@property (retain, nonatomic) UIButton *buttonC;
@property (retain, nonatomic) UIButton *buttonD;
@property (retain, nonatomic) LimitsHolder *object;
@property (retain, nonatomic) HighScores *highScores;

-(void) setUpButtons;
-(void) upDate;
-(void) setUp;
-(void) alertSetUp;

-(IBAction) firstButton:(id)sender;
-(IBAction) secondButton:(id)sender;
-(IBAction) thirdButton:(id)sender;
-(IBAction) fourthButton:(id)sender;

@end
