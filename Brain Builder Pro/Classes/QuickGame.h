//
//  QuickGame.h
//  Gr3y Matt3r 2.0
//
//  Created by Fred Kneeland on 6/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#define SCORE @"HighScore"
#define SCORE2 @"HighScore2"
float AA;
float BB;
float CC;
float DD;
float numb1;
float numb2;
float numb3;
float numb4;
float numb5;
float numb6;
float numb7;
float numb8;
float numb9;
float numb10;
float Sign;
float HighScorez;
int Sign2;
int Sign3;
int Sign4;
int Sign5;
float answr;
int answr2;
int answr3;
int answr4;
int answr5;
float choice;
int choice2;
int choice3;
int choice4;
int choice5;
int Result;
int Result2;
int Result3;
int Result4;
int Result5;
int fun;
int totalHighScore;
NSString *A;
NSString *B;
NSString *C;
NSString *D;
NSString *NUMBER1;
NSString *NUMBER2;
NSString *NUMBER3;
NSString *NUMBER4;
NSString *NUMBER5;
NSString *NUMBER6;
NSString *NUMBER7;
NSString *NUMBER8;
NSString *NUMBER9;
NSString *NUMBER10;
NSString *BUTTONA;
NSString *BUTTONB;
NSString *BUTTONC;
NSString *BUTTOND;
NSString *NUMBER11;
NSString *NUMBER12;
NSString *NewResult;
NSString *NewResult2;
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
NSString *buttonTitle;
float NUMB3;
float NUMB4;
float Newnumb3;
float Newnumb4;
float Newnumb5;
float Newnumb6;
float Newnumb7;
float Newnumb8;
float Newnumb9;
float Newnumb10;
float Newnumb11;
float Newnumb12;
float totalCorrect;
int totalInCorrect;
float finalScore;
float numbSpecial;
NSString *numbRight;
NSDate *startTime;
NSDate *endTime;
NSTimeInterval elapsedTime;

//@class Gr3y_Matt3r_2_0ViewController;
@class QuickGame;
@class HighScore;
@class RootViewController;
@class WrongAnswerGenerator;
//@class Flip3;
//@class Flip5;
//@class Flip2;

@interface QuickGame : UIViewController {
	IBOutlet QuickGame *samePage;
	IBOutlet HighScore *highScore;
	IBOutlet RootViewController *homePage;
    IBOutlet WrongAnswerGenerator *wrongAnswerGenerator;
	IBOutlet UILabel *number1;
	IBOutlet UILabel *number2;
	IBOutlet UILabel *sign;
	IBOutlet UILabel *result;
	IBOutlet UIButton *a;
	IBOutlet UIButton *b;
	IBOutlet UIButton *c;
	IBOutlet UIButton *d;
	IBOutlet UILabel *number3;
	IBOutlet UILabel *number4;
	IBOutlet UILabel *sign2;
	IBOutlet UILabel *result2;
	IBOutlet UILabel *number5;
	IBOutlet UILabel *number6;
	IBOutlet UILabel *sign3;
	IBOutlet UILabel *result3;
	IBOutlet UILabel *number7;
	IBOutlet UILabel *number8;
	IBOutlet UILabel *sign4;
	IBOutlet UILabel *result4;
	IBOutlet UILabel *number9;
	IBOutlet UILabel *number10;
	IBOutlet UILabel *sign5;
	IBOutlet UILabel *result5;
	IBOutlet UILabel *chosenAnswer;
	IBOutlet UILabel *chosenAnswer2;
	IBOutlet UILabel *equals;
	IBOutlet UILabel *equals2;
}

@property (retain, nonatomic) QuickGame *samePage;
@property (retain, nonatomic) RootViewController *homePage;
@property (retain, nonatomic) HighScore *highScore;
@property (retain, nonatomic) WrongAnswerGenerator *wrongAnswerGenerator;
@property (retain, nonatomic) UILabel *number1;
@property (retain, nonatomic) UILabel *number2;
@property (retain, nonatomic) UILabel *sign;
@property (retain, nonatomic) UILabel *result;
@property (retain, nonatomic) UIButton *a;
@property (retain, nonatomic) UIButton *b;
@property (retain, nonatomic) UIButton *c;
@property (retain, nonatomic) UIButton *d;
@property (retain, nonatomic) UILabel *number3;
@property (retain, nonatomic) UILabel *number4;
@property (retain, nonatomic) UILabel *sign2;
@property (retain, nonatomic) UILabel *result2;
@property (retain, nonatomic) UILabel *number5;
@property (retain, nonatomic) UILabel *number6;
@property (retain, nonatomic) UILabel *sign3;
@property (retain, nonatomic) UILabel *result3;
@property (retain, nonatomic) UILabel *number7;
@property (retain, nonatomic) UILabel *number8;
@property (retain, nonatomic) UILabel *sign4;
@property (retain, nonatomic) UILabel *result4;
@property (retain, nonatomic) UILabel *number9;
@property (retain, nonatomic) UILabel *number10;
@property (retain, nonatomic) UILabel *sign5;
@property (retain, nonatomic) UILabel *result5;
@property (retain, nonatomic) UILabel *chosenAnswer;
@property (retain, nonatomic) UILabel *chosenAnswer2;
@property (retain, nonatomic) UILabel *equals;
@property (retain, nonatomic) UILabel *equals2;

-(IBAction) setupProblemA:(id)sender;
-(IBAction) setupProblemB:(id)sender;
-(IBAction) setupProblemC:(id)sender;
-(IBAction) setupProblemD:(id)sender;

-(void) createProblem;
-(void) createProblem2;
-(void) alertsetUp;
-(void) setUp;

@end
