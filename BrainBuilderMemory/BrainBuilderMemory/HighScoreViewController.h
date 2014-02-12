//
//  HighScoreViewController.h
//  BrainBuilder
//
//  Created by Fred Kneeland on 8/24/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import <UIKit/UIKit.h>

#define SCORE @"HighScore"
#define SCORE2 @"HighScore2"
#define SCORE3 @"HighScore3"
#define SCORE4 @"HighScore4"
#define SCORE5 @"HighScore5"
#define SCORE6 @"HighScore6"
#define SCORE7 @"HighScore7"
#define SCORE8 @"HighScore8"
#define SCORE9 @"HighScore9"
#define SCORE10 @"HighScore10"
#define SCORE11 @"HighScore11"
#define SCORE12 @"HighScore12"
#define SCORE13 @"HighScore13"
#define SCORE14 @"HighScore14"
#define SCORE15 @"HighScore15"
#define SCORE16 @"HighScore16"
#define SCORE17 @"HighScore17"
#define SCORE18 @"HighScore18"
#define NAME1 @"NAME1"
#define NAME2 @"NAME2"
#define NAME3 @"NAME3"
#define NAME4 @"NAME4"
#define NAME5 @"NAME5"
#define NAME6 @"NAME6"
#define NAME7 @"NAME7"
#define NAME8 @"NAME8"
#define NAME9 @"NAME9"
#define NAME10 @"NAME10"
#define NAME11 @"NAME11"
#define NAME12 @"NAME12"
#define NAME13 @"NAME13"
#define NAME14 @"NAME14"
#define NAME15 @"NAME15"
#define NAME16 @"NAME16"
#define NEW @"NEW"

int Know;
int highScore;
int alertChoice;
int newHighScore;
float Score;
float Score2;
float Score3;
float Score4;
float Score5;
float Score6;
float Score7;
float Score8;
float Score9;
float Score10;
float Score11;
float Score12;
float Score13;
float Score14;
float Score15;
float Score16;
float Score17;
float Score18;
NSString *TheScore1;
NSString *TheScore2;
NSString *TheScore3;
NSString *TheScore4;
NSString *TheScore5;
NSString *TheScore6;
NSString *TheScore7;
NSString *TheScore8;
NSString *TheScore9;
NSString *TheScore10;
NSString *TheScore11;
NSString *TheScore12;
NSString *TheScore13;
NSString *TheScore14;
NSString *TheScore15;
NSString *TheScore16;
NSString *TheScore17;
NSString *TheScore18;
NSString *Names1;
NSString *Names2;
NSString *Names3;
NSString *Names4;
NSString *Names5;
NSString *Names6;
NSString *Names7;
NSString *Names8;
NSString *Names9;
NSString *Names10;
NSString *Names11;
NSString *Names12;
NSString *Names13;
NSString *Names14;
NSString *Names15;
NSString *Names16;
NSString *nameSpecial;


@interface HighScoreViewController : UIViewController
{
    IBOutlet UILabel *name1;
	IBOutlet UILabel *name2;
	IBOutlet UILabel *name3;
	IBOutlet UILabel *name4;
	IBOutlet UILabel *name5;
	IBOutlet UILabel *name6;
	IBOutlet UILabel *name7;
	IBOutlet UILabel *name8;
	IBOutlet UILabel *score1;
	IBOutlet UILabel *score2;
	IBOutlet UILabel *score3;
	IBOutlet UILabel *score4;
	IBOutlet UILabel *score5;
	IBOutlet UILabel *score6;
	IBOutlet UILabel *score7;
	IBOutlet UILabel *score8;
    IBOutlet UITextField *theName;
}

@property (retain, nonatomic) UILabel *name1;
@property (retain, nonatomic) UILabel *name2;
@property (retain, nonatomic) UILabel *name3;
@property (retain, nonatomic) UILabel *name4;
@property (retain, nonatomic) UILabel *name5;
@property (retain, nonatomic) UILabel *name6;
@property (retain, nonatomic) UILabel *name7;
@property (retain, nonatomic) UILabel *name8;
@property (retain, nonatomic) UILabel *score1;
@property (retain, nonatomic) UILabel *score2;
@property (retain, nonatomic) UILabel *score3;
@property (retain, nonatomic) UILabel *score4;
@property (retain, nonatomic) UILabel *score5;
@property (retain, nonatomic) UILabel *score6;
@property (retain, nonatomic) UILabel *score7;
@property (retain, nonatomic) UILabel *score8;
@property (retain, nonatomic) UITextField *theName;

-(void) highScoreQuick;
-(void) highScoreCustom;
-(void) alertOn;
-(void) alertOff;


@end
