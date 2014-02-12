//
//  KeyboardCustom.h
//  Brain Builder Pro
//
//  Created by Fred Kneeland on 8/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#define SCORE10 @"HighScore10"
#define SCORE11 @"HighScore11"

NSDate *startTime;
NSDate *endTime;
NSTimeInterval  elapsedTime;
float totalCorrect;
int totalInCorrect;
float finalScore;
float totalHighScore;
bool adds;
bool timeses;
bool divides;
bool subtracts;
int number;
int selectedSegment;
int Outputs;
float Outputs1;
float Outputs2;
float Outputs3;
float Outputs4;
int fun;
int divide1;
float division1;
int numb1;
int numb2;
int numb3;
int numb4;
int SIGN3;
int SIGN4;
int decimal;
float answr;
float answr2;
int VariableNumb;
NSString *Sight;
NSString *SIGNS1;
NSString *SIGNS2;
NSString *SIGNS3;
NSString *SIGNS4;
NSString *NUMBER3;
NSString *NUMBER4;
NSString *NUMBER5;
NSString *NUMBER6;
NSString *ANSWRS;
NSString *Hello;
NSString *Hello2;
NSString *numbRight;
NSString *buttonTitle;
float total;
int fun;

@class HighScore;

@interface KeyboardCustom : UIViewController 
{
	IBOutlet HighScore *highScoreCustom;
	IBOutlet UILabel *number1;
	IBOutlet UILabel *number2;
	IBOutlet UILabel *number3;
	IBOutlet UILabel *number4;
	IBOutlet UILabel *number5;
	IBOutlet UILabel *number6;
	IBOutlet UILabel *sign1;
	IBOutlet UILabel *sign2;
	IBOutlet UILabel *sign3;
	IBOutlet UILabel *result1;
	IBOutlet UILabel *result2;
	IBOutlet UILabel *outPut;
	IBOutlet UILabel *equals;
	IBOutlet UILabel *endResult;
}

@property (retain, nonatomic) HighScore *highScoreCustom;
@property (retain, nonatomic) UILabel *number1;
@property (retain, nonatomic) UILabel *number2;
@property (retain, nonatomic) UILabel *number3;
@property (retain, nonatomic) UILabel *number4;
@property (retain, nonatomic) UILabel *number5;
@property (retain, nonatomic) UILabel *number6;
@property (retain, nonatomic) UILabel *sign1;
@property (retain, nonatomic) UILabel *sign2;
@property (retain, nonatomic) UILabel *sign3;
@property (retain, nonatomic) UILabel *result1;
@property (retain, nonatomic) UILabel *result2;
@property (retain, nonatomic) UILabel *outPut;
@property (retain, nonatomic) UILabel *equals;
@property (retain, nonatomic) UILabel *endResult;

-(IBAction) Uno:(id)sender;
-(IBAction) Dos:(id)sender;
-(IBAction) Tres:(id)sender;
-(IBAction) Cuatro:(id)sender;
-(IBAction) Cinco:(id)sender;
-(IBAction) Seis:(id)sender;
-(IBAction) Seite:(id)sender;
-(IBAction) Ocho:(id)sender;
-(IBAction) Nuevo:(id)sender;
-(IBAction) Diez:(id)sender;
-(IBAction) Delete:(id)sender;
-(IBAction) Done:(id)sender;

-(void) makeLifeEasy;
-(void) createProblem;
-(void) setUp;
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


@end
