//
//  SecondDerivitive.h
//  BrainBuilderCalc
//
//  Created by Fred Kneeland on 11/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@class SecondDervHolder;
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

@interface SecondDerivitive : UIViewController <ADBannerViewDelegate>
{
    IBOutlet UILabel *rightAnswers;
    IBOutlet UILabel *wrongAnswers;
    IBOutlet UILabel *function;
    IBOutlet UIButton *buttonA;
    IBOutlet UIButton *buttonB;
    IBOutlet UIButton *buttonC;
    IBOutlet UIButton *buttonD;
    IBOutlet SecondDervHolder *object;
    IBOutlet HighScores *highScore;
}

-(void) upDate;
-(void) setUpButtons;
-(void) setUp;
-(void) alertSetUp;

@property (retain, nonatomic) UILabel *rightAnswers;
@property (retain, nonatomic) UILabel *wrongAnswers;
@property (retain, nonatomic) UILabel *function;
@property (retain, nonatomic) UIButton *buttonA;
@property (retain, nonatomic) UIButton *buttonB;
@property (retain, nonatomic) UIButton *buttonC;
@property (retain, nonatomic) UIButton *buttonD;
@property (retain, nonatomic) SecondDervHolder *object;
@property (retain, nonatomic) HighScores *highScores;

-(IBAction) firstButton:(id)sender;
-(IBAction) secondButton:(id)sender;
-(IBAction) thirdButton:(id)sender;
-(IBAction) fourthButton:(id)sender;

@end
