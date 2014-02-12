//
//  HighScoreViewController.h
//  BrainBuilderGeometry
//
//  Created by Fred Kneeland on 8/13/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import <UIKit/UIKit.h>

#define GEOMSCORE @"GEOMHighScore"
#define GEOMSCORE2 @"GEOMHighScore2"
#define GEOMSCORE3 @"GEOMHighScore3"
#define GEOMSCORE4 @"GEOMHighScore4"
#define GEOMSCORE5 @"GEOMHighScore5"
#define GEOMSCORE6 @"GEOMHighScore6"
#define GEOMSCORE7 @"GEOMHighScore7"
#define GEOMSCORE8 @"GEOMHighScore8"
#define GEOMSCORE9 @"GEOMHighScore9"
#define GEOMSCORE10 @"GEOMHighScore10"
#define GEOMSCORE11 @"GEOMHighScore11"
#define GEOMSCORE12 @"GEOMHighScore12"
#define GEOMSCORE13 @"GEOMHighScore13"
#define GEOMSCORE14 @"GEOMHighScore14"
#define GEOMSCORE15 @"GEOMHighScore15"
#define GEOMSCORE16 @"GEOMHighScore16"
#define GEOMSCORE17 @"GEOMHighScore17"
#define GEOMSCORE18 @"GEOMHighScore18"
#define GEOMNAME1 @"GEOMNAME1"
#define GEOMNAME2 @"GEOMNAME2"
#define GEOMNAME3 @"GEOMNAME3"
#define GEOMNAME4 @"GEOMNAME4"
#define GEOMNAME5 @"GEOMNAME5"
#define GEOMNAME6 @"GEOMNAME6"
#define GEOMNAME7 @"GEOMNAME7"
#define GEOMNAME8 @"GEOMNAME8"
#define GEOMNAME9 @"GEOMNAME9"
#define GEOMNAME10 @"GEOMNAME10"
#define GEOMNAME11 @"GEOMNAME11"
#define GEOMNAME12 @"GEOMNAME12"
#define GEOMNAME13 @"GEOMNAME13"
#define GEOMNAME14 @"GEOMNAME14"
#define GEOMNAME15 @"GEOMNAME15"
#define GEOMNAME16 @"GEOMNAME16"
#define GEOMNEW @"GEOMNEW"
#define GEOMTYPE @"GEOMTYPE"
#define GEOMTYPE2 @"GEOMTYPE2"
#define GEOMTYPE3 @"GEOMTYPE3"
#define GEOMTYPE4 @"GEOMTYPE4"
#define GEOMTYPE5 @"GEOMTYPE5"
#define GEOMTYPE6 @"GEOMTYPE6"
#define GEOMTYPE7 @"GEOMTYPE7"
#define GEOMTYPE8 @"GEOMTYPE8"
#define GEOMTYPE9 @"GEOMTYPE9"

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
