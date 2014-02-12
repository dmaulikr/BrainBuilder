//
//  TrigHighScoreQuick.h
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
#define TRIGSCORE9 @"TRIGHighScore9"
#define TRIGSCORE10 @"TRIGHighScore10"
#define TRIGSCORE11 @"TRIGHighScore11"
#define TRIGSCORE12 @"TRIGHighScore12"
#define TRIGSCORE13 @"TRIGHighScore13"
#define TRIGSCORE14 @"TRIGHighScore14"
#define TRIGSCORE15 @"TRIGHighScore15"
#define TRIGSCORE16 @"TRIGHighScore16"
#define TRIGSCORE17 @"TRIGHighScore17"
#define TRIGSCORE18 @"TRIGHighScore18"
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

@interface TrigHighScoreQuick : UIViewController
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
