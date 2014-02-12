//
//  FirstDerivitivePage.h
//  BrainBuilderCalc
//
//  Created by Fred Kneeland on 11/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@class FirstDervHolder;
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
NSString *buttonTitle;
NSString *numbRight;

NSDate *startTime;
NSDate *endTime;
NSTimeInterval elapsedTime;

@interface FirstDerivitivePage : UIViewController <ADBannerViewDelegate>
{
    IBOutlet UILabel *rightAnswers;
    IBOutlet UILabel *wrongAnswers;
    IBOutlet UILabel *function;
    IBOutlet UIButton *buttonA;
    IBOutlet UIButton *buttonB;
    IBOutlet UIButton *buttonC;
    IBOutlet UIButton *buttonD;
    IBOutlet FirstDervHolder *object;
    IBOutlet HighScores *highScore;
}

-(void) upDate;
-(void) setUpButtons;
-(void) alertsetUp;
-(void) setUp;

@property (retain, nonatomic) UILabel *rightAnswers;
@property (retain, nonatomic) UILabel *wrongAnswers;
@property (retain, nonatomic) UILabel *function;
@property (retain, nonatomic) UIButton *buttonA;
@property (retain, nonatomic) UIButton *buttonB;
@property (retain, nonatomic) UIButton *buttonC;
@property (retain, nonatomic) UIButton *buttonD;
@property (retain, nonatomic) FirstDervHolder *object;
@property (retain, nonatomic) HighScores *highScores;

-(IBAction) firstButton:(id)sender;
-(IBAction) secondButton:(id)sender;
-(IBAction) thirdButton:(id)sender;
-(IBAction) fourthButton:(id)sender;

@end
