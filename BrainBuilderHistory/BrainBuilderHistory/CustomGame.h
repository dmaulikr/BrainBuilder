//
//  CustomGame.h
//  BrainBuilderHistory
//
//  Created by Fred Kneeland on 6/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#define SCORE @"HighScore"
#define SCORE2 @"HighScore2"
#define SCORE9 @"SCORE9"

BOOL objectOne;
BOOL objectTwo;
BOOL objectThree;
BOOL objectFour;

int questionChooser;
int objectChooser;
int buttonPicker;
int rightChoice;
int rightChoice2;
int totalCorrect;
int totalWrong;
int totalQuestions;
float finalScore;
int totalHighScore;

NSString *question;
NSString *question2;
NSString *rightAnswer;
NSString *rightAnswer2;
NSString *firstWrongAnswer;
NSString *firstWrongAnswer2;
NSString *secondWrongAnswer;
NSString *secondWrongAnswer2;
NSString *thirdWrongAnswer;
NSString *thirdWrongAnswer2;
NSString *rightQuestionsHolder;
NSString *wrongQuestionsHolder;
NSString *numbRight;
NSString *buttonTitle;

NSDate *startTime;
NSDate *endTime;
NSTimeInterval elapsedTime;

@class DatesQuestions;
@class PlacesQuestions;
@class BattlesQuestions;
@class PeoplesQuestions;
@class HighScoreCustom;

@interface CustomGame : UIViewController
{
    IBOutlet UITextView *Question1;
    IBOutlet UITextView *Question2;
    IBOutlet UIButton *buttonA;
    IBOutlet UIButton *buttonB;
    IBOutlet UIButton *buttonC;
    IBOutlet UIButton *buttonD;
    IBOutlet DatesQuestions *dateQuestions;
    IBOutlet PlacesQuestions *placesQuestions;
    IBOutlet BattlesQuestions *battlesQuestions;
    IBOutlet PeoplesQuestions *peoplesQuestions;
    IBOutlet HighScoreCustom *highScoreCustom;
    IBOutlet UILabel *rightAnswered;
    IBOutlet UILabel *wrongAnswered;

}

@property (retain, nonatomic) UITextView *Question1;
@property (retain, nonatomic) UITextView *Question2;
@property (retain, nonatomic) DatesQuestions *dateQuestions;
@property (retain, nonatomic) BattlesQuestions *battlesQuestions;
@property (retain, nonatomic) PeoplesQuestions *peoplesQuestions;
@property (retain, nonatomic) HighScoreCustom *highScoreCustom;
@property (retain, nonatomic) UIButton *buttonA;
@property (retain, nonatomic) UIButton *buttonB;
@property (retain, nonatomic) UIButton *buttonC;
@property (retain, nonatomic) UIButton *buttonD;
@property (retain, nonatomic) PlacesQuestions *placesQuestions;
@property (retain, nonatomic) UILabel *rightAnswered;
@property (retain, nonatomic) UILabel *wrongAnswered;

-(IBAction) buttonAPressed:(id)sender;
-(IBAction) buttonBPressed:(id)sender;
-(IBAction) buttonCPressed:(id)sender;
-(IBAction) buttonDPressed:(id)sender;

-(void) objectChoice:(BOOL)firstObject: (BOOL)secondObject: (BOOL)thirdObject: (BOOL)fourthObject;
-(void) setUp;
-(void) giveButtonsTheirNames:(NSString *)name1: (NSString *)name2: (NSString *)name3: (NSString *)name4;
-(void) moveUp;
-(void) upDateScore:(BOOL)correct;
-(void) selfCheck;
-(void) endGameAlert;

@end
