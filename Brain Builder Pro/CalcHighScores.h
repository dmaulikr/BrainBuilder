//
//  CalcHighScores.h
//  BrainBuilderPro
//
//  Created by Fred Kneeland on 6/30/13.
//  Copyright (c) 2013 BLADE Enterprises LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

#define CALCSCORE @"CALCHighScore"
#define CALCSCORE2 @"CALCHighScore2"
#define CALCSCORE3 @"CALCHighScore3"
#define CALCSCORE4 @"CALCHighScore4"
#define CALCSCORE5 @"CALCHighScore5"
#define CALCSCORE6 @"CALCHighScore6"
#define CALCSCORE7 @"CALCHighScore7"
#define CALCSCORE8 @"CALCHighScore8"
#define CALCSCORE9 @"CALCHighScore9"
#define CALCSCORE10 @"CALCHighScore10"
#define CALCSCORE11 @"CALCHighScore11"
#define CALCSCORE12 @"CALCHighScore12"
#define CALCSCORE13 @"CALCHighScore13"
#define CALCSCORE14 @"CALCHighScore14"
#define CALCSCORE15 @"CALCHighScore15"
#define CALCSCORE16 @"CALCHighScore16"
#define CALCSCORE17 @"CALCHighScore17"
#define CALCSCORE18 @"CALCHighScore18"
#define CALCNAME1 @"CALCNAME1"
#define CALCNAME2 @"CALCNAME2"
#define CALCNAME3 @"CALCNAME3"
#define CALCNAME4 @"CALCNAME4"
#define CALCNAME5 @"CALCNAME5"
#define CALCNAME6 @"CALCNAME6"
#define CALCNAME7 @"CALCNAME7"
#define CALCNAME8 @"CALCNAME8"
#define CALCNAME9 @"CALCNAME9"
#define CALCNAME10 @"CALCNAME10"
#define CALCNAME11 @"CALCNAME11"
#define CALCNAME12 @"CALCNAME12"
#define CALCNAME13 @"CALCNAME13"
#define CALCNAME14 @"CALCNAME14"
#define CALCNAME15 @"CALCNAME15"
#define CALCNAME16 @"CALCNAME16"
#define CALCNEW @"CALCNEW"
#define CALCTYPE @"CALCTYPE"
#define CALCTYPE2 @"CALCTYPE2"
#define CALCTYPE3 @"CALCTYPE3"
#define CALCTYPE4 @"CALCTYPE4"
#define CALCTYPE5 @"CALCTYPE5"
#define CALCTYPE6 @"CALCTYPE6"
#define CALCTYPE7 @"CALCTYPE7"
#define CALCTYPE8 @"CALCTYPE8"
#define CALCTYPE9 @"CALCTYPE9"

#define WRONGANSWERPENALTY 20

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
NSString *Type1;
NSString *Type2;
NSString *Type3;
NSString *Type4;
NSString *Type5;
NSString *Type6;
NSString *Type7;
NSString *Type8;
NSString *Type9;


@interface CalcHighScores : UIViewController
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
    IBOutlet UILabel *type1;
    IBOutlet UILabel *type2;
    IBOutlet UILabel *type3;
    IBOutlet UILabel *type4;
    IBOutlet UILabel *type5;
    IBOutlet UILabel *type6;
    IBOutlet UILabel *type7;
    IBOutlet UILabel *type8;
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
@property (retain, nonatomic) UILabel *type1;
@property (retain, nonatomic) UILabel *type2;
@property (retain, nonatomic) UILabel *type3;
@property (retain, nonatomic) UILabel *type4;
@property (retain, nonatomic) UILabel *type5;
@property (retain, nonatomic) UILabel *type6;
@property (retain, nonatomic) UILabel *type7;
@property (retain, nonatomic) UILabel *type8;
@property (retain, nonatomic) UITextField *theName;

-(void) highScoreQuick;
-(void) highScoreCustom;
-(void) alertOn;
-(void) alertOff;


@end
