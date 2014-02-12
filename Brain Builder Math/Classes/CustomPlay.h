//
//  CustomPlay.h
//  Gr3y Matt3r 2.0
//
//  Created by Fred Kneeland on 6/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

#define SCORE10 @"HighScore10"
#define SCORE11 @"HighScore11"

bool adds;
bool timeses;
bool divides;
bool subtracts;
int number;
NSDate *startTime;
NSDate *endTime;
NSTimeInterval  elapsedTime;
NSString *SIGNS1;
NSString *SIGNS2;
NSString *SIGNS3;
NSString *SIGNS4;
NSString *theNumber;
NSString *NUMBER3;
NSString *NUMBER4;
NSString *NUMBER5;
NSString *NUMBER6;
NSString *NUMBER7;
NSString *NUMBER8;
NSString *NUMBER9;
NSString *NUMBER10;
NSString *NUMBER11;
NSString *NUMBER12;
NSString *BUTTONA;
NSString *BUTTONB;
NSString *BUTTONC;
NSString *BUTTOND;
NSString *NewResult;
NSString *NewNumb1;
NSString *NewNumb2;
NSString *NewNumb3;
NSString *NewNumb4;
NSString *NewNumb5;
NSString *NewNumb6;
NSString *NewNumb7;
NSString *NewNumb8;
NSString *NewNumb9;
NSString *NewNumb10;
NSString *NewSign1;
NSString *NewSign2;
NSString *NewSign3;
NSString *NewSign4;
NSString *numbRight;
NSString *buttonTitle;
NSString *Test;
NSString *Test2;
NSString *TheAnswer;
int numb1;
int numb2;
int numb3;
int numb4;
int numb5; 
int numb6;
int numb7;
int numb8;
int numb9;
int numb10;
int SIGN1;
int SIGN2;
int SIGN3;
int SIGN4;
int SIGN5;
float answr;
int choice;
float AA;
float BB;
float CC;
float DD;
float Result;
float totalHighScore;
int fun;
int Newnumb3;
int Newnumb4;
int Newnumb5;
int Newnumb6;
int Newnumb7;
int Newnumb8; 
int Newnumb9;
int Newnumb10;
int Newnumb11;
int Newnumb12;
float totalCorrect;
int totalInCorrect;
float finalScore;
int selectedSegment;
float numbofSeconds;
NSDate *dates;
int numbSpecial;
int divide1;
float division1;
float answr2;

@class CustomGame;
@class HighScoreCustom;
@class CustomPlay;

@interface CustomPlay : UIViewController <ADBannerViewDelegate>
{
	IBOutlet CustomGame *customGame;
	IBOutlet HighScoreCustom *highScoreCustom;
	IBOutlet CustomPlay *same;
	IBOutlet UILabel *sign1;
	IBOutlet UILabel *sign2;
	IBOutlet UILabel *sign3;
	IBOutlet UILabel *sign4;
	IBOutlet UILabel *sign5;
	IBOutlet UILabel *result1;
	IBOutlet UILabel *result2;
	IBOutlet UILabel *result3;
	IBOutlet UILabel *number1;
	IBOutlet UILabel *number2;
	IBOutlet UILabel *number3;
	IBOutlet UILabel *number4;
	IBOutlet UILabel *number5;
	IBOutlet UILabel *number6;
	IBOutlet UILabel *number7;
	IBOutlet UILabel *number8;
	IBOutlet UILabel *number9;
	IBOutlet UILabel *number10;
	IBOutlet UILabel *number11;
	IBOutlet UILabel *number12;
	IBOutlet UIButton *a;
	IBOutlet UIButton *b;
	IBOutlet UIButton *c;
	IBOutlet UIButton *d;
	IBOutlet UILabel *Tester;
	IBOutlet UILabel *chosenAnswer;
	IBOutlet UILabel *chosenAnswer2;
    IBOutlet UILabel *equals;
    IBOutlet UILabel *equals2;
}

@property (retain, nonatomic) CustomGame *customGame;
@property (retain, nonatomic) HighScoreCustom *highScoreCustom;
@property (retain, nonatomic) CustomPlay *same;
@property (retain, nonatomic) UILabel *sign1; 
@property (retain, nonatomic) UILabel *sign2;
@property (retain, nonatomic) UILabel *sign3;
@property (retain, nonatomic) UILabel *sign4;
@property (retain, nonatomic) UILabel *sign5;
@property (retain, nonatomic) UILabel *number1;
@property (retain, nonatomic) UILabel *number2;
@property (retain, nonatomic) UILabel *number3;
@property (retain, nonatomic) UILabel *number4;
@property (retain, nonatomic) UILabel *number5;
@property (retain, nonatomic) UILabel *number6;
@property (retain, nonatomic) UILabel *number7;
@property (retain, nonatomic) UILabel *number8;
@property (retain, nonatomic) UILabel *number9;
@property (retain, nonatomic) UILabel *number10;
@property (retain, nonatomic) UILabel *number11;
@property (retain, nonatomic) UILabel *number12;
@property (retain, nonatomic) UILabel *result1;
@property (retain, nonatomic) UILabel *result2;
@property (retain, nonatomic) UILabel *result3;
@property (retain, nonatomic) UIButton *a; 
@property (retain, nonatomic) UIButton *b;
@property (retain, nonatomic) UIButton *c;
@property (retain, nonatomic) UIButton *d;
@property (retain, nonatomic) UILabel *Tester;
@property (retain, nonatomic) UILabel *chosenAnswer;
@property (retain, nonatomic) UILabel *chosenAnswer2;
@property (retain, nonatomic) UILabel *equals;
@property (retain, nonatomic) UILabel *equals2;

-(IBAction) createProblemA:(id)sender;
-(IBAction) createProblemB:(id)sender;
-(IBAction) createProblemC:(id)sender;
-(IBAction) createProblemD:(id)sender;

-(void) createProblem;
-(void) createProblem2;

-(void) AddOn;
-(void) AddOff;
-(void) subOn;
-(void) subOff;
-(void) timesOn;
-(void) timesOff;
-(void) divideOn;
-(void) divideOff;
-(void) numb1;
-(void) numb2;
-(void) numb3;
-(void) numb4;
-(void) numb5;
-(void) numb6;
-(void) numb7;
-(void) numb8;
-(void) numb9;
-(void) numb10;
-(void) numb11;
-(void) numb12;
-(void) numb13;
-(void) numb14;
-(void) numb15;
-(void) numb16;
-(void) numb17;
-(void) numb18;
-(void) numb19;
-(void) numb20;
-(void) numb21;
-(void) numb22;
-(void) numb23;
-(void) numb24;
-(void) numb25;
-(void) segment1;
-(void) segment2;
-(void) segment3;
-(void) segment4;
-(void) setUp;

@end
