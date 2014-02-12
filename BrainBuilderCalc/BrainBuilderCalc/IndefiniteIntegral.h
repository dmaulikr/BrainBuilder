//
//  IndefiniteIntegral.h
//  BrainBuilderCalc
//
//  Created by Fred Kneeland on 3/29/13.
//
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@class IndefiniteIntegralHolder;
@class DefiniteIntegralHolder;
@class HighScores;

int randomNumb;
int secondRandom;
int correctScoreHolder;
int rightCounter;
int wrongCounter;
int IntegrationType;
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

@interface IndefiniteIntegral : UIViewController <ADBannerViewDelegate>
{
    IBOutlet UILabel *rightAnswers;
    IBOutlet UILabel *wrongAnswers;
    IBOutlet UILabel *upperLimit;
    IBOutlet UILabel *lowerLimit;
    IBOutlet UILabel *function;
    IBOutlet UIButton *buttonA;
    IBOutlet UIButton *buttonB;
    IBOutlet UIButton *buttonC;
    IBOutlet UIButton *buttonD;
    IBOutlet IndefiniteIntegralHolder *object;
    IBOutlet DefiniteIntegralHolder *object2;
    IBOutlet HighScores *highScore;
}

@property (retain, nonatomic) UILabel *rightAnswers;
@property (retain, nonatomic) UILabel *wrongAnswers;
@property (retain, nonatomic) UILabel *upperLimit;
@property (retain, nonatomic) UILabel *lowerLimit;
@property (retain, nonatomic) UILabel *function;
@property (retain, nonatomic) UIButton *buttonA;
@property (retain, nonatomic) UIButton *buttonB;
@property (retain, nonatomic) UIButton *buttonC;
@property (retain, nonatomic) UIButton *buttonD;
@property (retain, nonatomic) IndefiniteIntegralHolder *object;
@property (retain, nonatomic) DefiniteIntegralHolder *object2;
@property (retain, nonatomic) HighScores *highScores;

-(IBAction) firstButton:(id)sender;
-(IBAction) secondButton:(id)sender;
-(IBAction) thirdButton:(id)sender;
-(IBAction) fourthButton:(id)sender;

-(void) upDate;
-(void) UpDate2;
-(void) setUpButtons;
-(void) GameChoice:(NSInteger)type;
-(void) setUp;
-(void) alertSetUp;


@end
