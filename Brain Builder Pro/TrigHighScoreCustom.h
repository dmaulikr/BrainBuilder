//
//  TrigHighScoreCustom.h
//  BrainBuilderPro
//
//  Created by Fred Kneeland on 3/16/12.
//  Copyright (c) 2012 BLADE Enterprises LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

#define TRIGSCORE @"TRIGHighScore"
#define TRIGSCORE2 @"TRIGHighScore2"
#define TRIGSCORE3 @"TRIGHighScore3"
#define TRIGSCORE4 @"TRIGHighScore4"
#define TRIGSCORE5 @"TRIGHighScore5"
#define TRIGSCORE6 @"TRIGHighScore6"
#define TRIGSCORE7 @"TRIGHighScore7"
#define TRIGSCORE8 @"TRIGHighScore8"
//#define TRIGSCORE9 @"TRIGSCORE9"
#define TRIGSCORE10 @"TRIGSCORE10"
#define TRIGSCORE11 @"TRIGHighScore11"
#define TRIGSCORE12 @"TRIGHighScore12"
#define TRIGSCORE13 @"TRIGHighScore13"
#define TRIGSCORE14 @"TRIGHighScore14"
#define TRIGSCORE15 @"TRIGHighScore15"
#define TRIGSCORE16 @"TRIGHighScore16"
#define TRIGSCORE17 @"TRIGHighScore17"
#define TRIGSCORE18 @"TRIGSCORE18"
#define TRIGNAME1 @"TRIGNAME1"
#define TRIGNAME2 @"TRIGNAME2"
#define TRIGNAME3 @"TRIGNAME3"
#define TRIGNAME4 @"TRIGNAME4"
#define TRIGNAME5 @"TRIGNAME5"
#define TRIGNAME6 @"TRIGNAME6"
#define TRIGNAME7 @"TRIGNAME7"
#define TRIGNAME8 @"TRIGNAME8"
#define TRIGNAME9 @"TRIGNAME9"
#define TRIGNAME10 @"TRIGNAME10"
#define TRIGNAME11 @"TRIGNAME11"
#define TRIGNAME12 @"TRIGNAME12"
#define TRIGNAME13 @"TRIGNAME13"
#define TRIGNAME14 @"TRIGNAME14"
#define TRIGNAME15 @"TRIGNAME15"
#define TRIGNAME16 @"TRIGNAME16"
#define TRIGNEW @"TRIGNEW"

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


@interface TrigHighScoreCustom : UIViewController
{
    IBOutlet UILabel *customName1;
	IBOutlet UILabel *customName2;
	IBOutlet UILabel *customName3;
	IBOutlet UILabel *customName4;
	IBOutlet UILabel *customName5;
	IBOutlet UILabel *customName6;
	IBOutlet UILabel *customName7;
	IBOutlet UILabel *customName8;
	IBOutlet UILabel *customScore1;
	IBOutlet UILabel *customScore2;
	IBOutlet UILabel *customScore3;
	IBOutlet UILabel *customScore4;
	IBOutlet UILabel *customScore5;
	IBOutlet UILabel *customScore6;
	IBOutlet UILabel *customScore7;
	IBOutlet UILabel *customScore8;
	IBOutlet UITextField *theName;
}

@property (retain, nonatomic) UILabel *customName1;
@property (retain, nonatomic) UILabel *customName2;
@property (retain, nonatomic) UILabel *customName3;
@property (retain, nonatomic) UILabel *customName4;
@property (nonatomic, retain) UILabel *customName5;
@property (nonatomic, retain) UILabel *customName6;
@property (nonatomic, retain) UILabel *customName7;
@property (nonatomic, retain) UILabel *customName8;
@property (nonatomic, retain) UILabel *customScore1; 
@property (nonatomic, retain) UILabel *customScore2;
@property (nonatomic, retain) UILabel *customScore3;
@property (nonatomic, retain) UILabel *customScore4;
@property (nonatomic, retain) UILabel *customScore5;
@property (nonatomic, retain) UILabel *customScore6;
@property (nonatomic, retain) UILabel *customScore7;
@property (nonatomic, retain) UILabel *customScore8;
@property (nonatomic, retain) UITextField *theName;

-(void) AlertOn;
-(void) AlertOff;

@end
