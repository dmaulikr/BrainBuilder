//
//  HighScoreViewController.m
//  BrainBuilderGeometry
//
//  Created by Fred Kneeland on 8/13/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import "HighScoreViewController.h"

@interface HighScoreViewController ()

@end

@implementation HighScoreViewController
@synthesize name1;
@synthesize name2;
@synthesize name3;
@synthesize name4;
@synthesize name5;
@synthesize name6;
@synthesize name7;
@synthesize name8;
@synthesize score1;
@synthesize score2;
@synthesize score3;
@synthesize score4;
@synthesize score5;
@synthesize score6;
@synthesize score7;
@synthesize score8;
@synthesize type1, type2, type3, type4, type5, type6, type7, type8;
@synthesize theName;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void) highScoreQuick
{
	highScore = 1;
}
-(void) highScoreCustom
{
	highScore = 2;
}
-(void) alertOn
{
	Know = 1;
}
-(void) alertOff
{
	Know = 2;
}

-(void) alertView:(UIAlertView *) alertView
clickedButtonAtIndex:(NSInteger)buttonIndex
{
	NSString *buttonTitle = [alertView buttonTitleAtIndex:buttonIndex];
	
	if ([buttonTitle isEqualToString:@"Ok"])
	{
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        if (Know == 1)
        {
            if (Score < Score2 || Score2 == 0)
            {
                name1.text = theName.text;
                [userDefaults setFloat:Score forKey:GEOMSCORE2];
                [userDefaults setFloat:Score2 forKey:GEOMSCORE3];
                [userDefaults setFloat:Score3 forKey:GEOMSCORE4];
                [userDefaults setFloat:Score4 forKey:GEOMSCORE5];
                [userDefaults setFloat:Score5 forKey:GEOMSCORE6];
                [userDefaults setFloat:Score6 forKey:GEOMSCORE7];
                [userDefaults setFloat:Score7 forKey:GEOMSCORE8];
                [userDefaults setFloat:Score8 forKey:GEOMSCORE9];
                
                [userDefaults setObject:name1.text forKey:GEOMNAME1];
                [userDefaults setObject:name2.text forKey:GEOMNAME2];
                [userDefaults setObject:name3.text forKey:GEOMNAME3];
                [userDefaults setObject:name4.text forKey:GEOMNAME4];
                [userDefaults setObject:name5.text forKey:GEOMNAME5];
                [userDefaults setObject:name6.text forKey:GEOMNAME6];
                [userDefaults setObject:name7.text forKey:GEOMNAME7];
                [userDefaults setObject:name8.text forKey:GEOMNAME8];
                
                [userDefaults setObject:Type1 forKey:GEOMTYPE2];
                [userDefaults setObject:Type2 forKey:GEOMTYPE3];
                [userDefaults setObject:Type3 forKey:GEOMTYPE4];
                [userDefaults setObject:Type4 forKey:GEOMTYPE5];
                [userDefaults setObject:Type5 forKey:GEOMTYPE6];
                [userDefaults setObject:Type6 forKey:GEOMTYPE7];
                [userDefaults setObject:Type7 forKey:GEOMTYPE8];
                [userDefaults setObject:Type8 forKey:GEOMTYPE9];
                
            }
            else if (Score < Score3 || Score3 == 0)
            {
                name2.text = theName.text;
                [userDefaults setFloat:Score forKey:GEOMSCORE3];
                [userDefaults setFloat:Score2 forKey:GEOMSCORE2];
                [userDefaults setFloat:Score3 forKey:GEOMSCORE4];
                [userDefaults setFloat:Score4 forKey:GEOMSCORE5];
                [userDefaults setFloat:Score5 forKey:GEOMSCORE6];
                [userDefaults setFloat:Score6 forKey:GEOMSCORE7];
                [userDefaults setFloat:Score7 forKey:GEOMSCORE8];
                [userDefaults setFloat:Score8 forKey:GEOMSCORE9];
                
                [userDefaults setObject:name1.text forKey:GEOMNAME1];
                [userDefaults setObject:name2.text forKey:GEOMNAME2];
                [userDefaults setObject:name3.text forKey:GEOMNAME3];
                [userDefaults setObject:name4.text forKey:GEOMNAME4];
                [userDefaults setObject:name5.text forKey:GEOMNAME5];
                [userDefaults setObject:name6.text forKey:GEOMNAME6];
                [userDefaults setObject:name7.text forKey:GEOMNAME7];
                [userDefaults setObject:name8.text forKey:GEOMNAME8];
                
                [userDefaults setObject:Type1 forKey:GEOMTYPE3];
                [userDefaults setObject:Type2 forKey:GEOMTYPE2];
                [userDefaults setObject:Type3 forKey:GEOMTYPE4];
                [userDefaults setObject:Type4 forKey:GEOMTYPE5];
                [userDefaults setObject:Type5 forKey:GEOMTYPE6];
                [userDefaults setObject:Type6 forKey:GEOMTYPE7];
                [userDefaults setObject:Type7 forKey:GEOMTYPE8];
                [userDefaults setObject:Type8 forKey:GEOMTYPE9];
                
            }
            else if (Score < Score4 || Score4 == 0)
            {
                name3.text = theName.text;
                [userDefaults setFloat:Score forKey:GEOMSCORE4];
                [userDefaults setFloat:Score2 forKey:GEOMSCORE2];
                [userDefaults setFloat:Score3 forKey:GEOMSCORE3];
                [userDefaults setFloat:Score4 forKey:GEOMSCORE5];
                [userDefaults setFloat:Score5 forKey:GEOMSCORE6];
                [userDefaults setFloat:Score6 forKey:GEOMSCORE7];
                [userDefaults setFloat:Score7 forKey:GEOMSCORE8];
                [userDefaults setFloat:Score8 forKey:GEOMSCORE9];
                
                [userDefaults setObject:name1.text forKey:GEOMNAME1];
                [userDefaults setObject:name2.text forKey:GEOMNAME2];
                [userDefaults setObject:name3.text forKey:GEOMNAME3];
                [userDefaults setObject:name4.text forKey:GEOMNAME4];
                [userDefaults setObject:name5.text forKey:GEOMNAME5];
                [userDefaults setObject:name6.text forKey:GEOMNAME6];
                [userDefaults setObject:name7.text forKey:GEOMNAME7];
                [userDefaults setObject:name8.text forKey:GEOMNAME8];
                
                [userDefaults setObject:Type1 forKey:GEOMTYPE4];
                [userDefaults setObject:Type2 forKey:GEOMTYPE2];
                [userDefaults setObject:Type3 forKey:GEOMTYPE3];
                [userDefaults setObject:Type4 forKey:GEOMTYPE5];
                [userDefaults setObject:Type5 forKey:GEOMTYPE6];
                [userDefaults setObject:Type6 forKey:GEOMTYPE7];
                [userDefaults setObject:Type7 forKey:GEOMTYPE8];
                [userDefaults setObject:Type8 forKey:GEOMTYPE9];
                
            }
            else if (Score < Score5 || Score5 == 0)
            {
                name4.text = theName.text;
                [userDefaults setFloat:Score forKey:GEOMSCORE5];
                [userDefaults setFloat:Score2 forKey:GEOMSCORE2];
                [userDefaults setFloat:Score3 forKey:GEOMSCORE3];
                [userDefaults setFloat:Score4 forKey:GEOMSCORE4];
                [userDefaults setFloat:Score5 forKey:GEOMSCORE6];
                [userDefaults setFloat:Score6 forKey:GEOMSCORE7];
                [userDefaults setFloat:Score7 forKey:GEOMSCORE8];
                [userDefaults setFloat:Score8 forKey:GEOMSCORE9];
                
                [userDefaults setObject:name1.text forKey:GEOMNAME1];
                [userDefaults setObject:name2.text forKey:GEOMNAME2];
                [userDefaults setObject:name3.text forKey:GEOMNAME3];
                [userDefaults setObject:name4.text forKey:GEOMNAME4];
                [userDefaults setObject:name5.text forKey:GEOMNAME5];
                [userDefaults setObject:name6.text forKey:GEOMNAME6];
                [userDefaults setObject:name7.text forKey:GEOMNAME7];
                [userDefaults setObject:name8.text forKey:GEOMNAME8];
                
                [userDefaults setObject:Type1 forKey:GEOMTYPE5];
                [userDefaults setObject:Type2 forKey:GEOMTYPE2];
                [userDefaults setObject:Type3 forKey:GEOMTYPE3];
                [userDefaults setObject:Type4 forKey:GEOMTYPE4];
                [userDefaults setObject:Type5 forKey:GEOMTYPE6];
                [userDefaults setObject:Type6 forKey:GEOMTYPE7];
                [userDefaults setObject:Type7 forKey:GEOMTYPE8];
                [userDefaults setObject:Type8 forKey:GEOMTYPE9];
                
            }
            else if (Score < Score6 || Score6 == 0)
            {
                name5.text = theName.text;
                [userDefaults setFloat:Score forKey:GEOMSCORE6];
                [userDefaults setFloat:Score2 forKey:GEOMSCORE2];
                [userDefaults setFloat:Score3 forKey:GEOMSCORE3];
                [userDefaults setFloat:Score4 forKey:GEOMSCORE4];
                [userDefaults setFloat:Score5 forKey:GEOMSCORE5];
                [userDefaults setFloat:Score6 forKey:GEOMSCORE7];
                [userDefaults setFloat:Score7 forKey:GEOMSCORE8];
                [userDefaults setFloat:Score8 forKey:GEOMSCORE9];
                
                [userDefaults setObject:name1.text forKey:GEOMNAME1];
                [userDefaults setObject:name2.text forKey:GEOMNAME2];
                [userDefaults setObject:name3.text forKey:GEOMNAME3];
                [userDefaults setObject:name4.text forKey:GEOMNAME4];
                [userDefaults setObject:name5.text forKey:GEOMNAME5];
                [userDefaults setObject:name6.text forKey:GEOMNAME6];
                [userDefaults setObject:name7.text forKey:GEOMNAME7];
                [userDefaults setObject:name8.text forKey:GEOMNAME8];
                
                [userDefaults setObject:Type1 forKey:GEOMTYPE6];
                [userDefaults setObject:Type2 forKey:GEOMTYPE2];
                [userDefaults setObject:Type3 forKey:GEOMTYPE3];
                [userDefaults setObject:Type4 forKey:GEOMTYPE4];
                [userDefaults setObject:Type5 forKey:GEOMTYPE5];
                [userDefaults setObject:Type6 forKey:GEOMTYPE7];
                [userDefaults setObject:Type7 forKey:GEOMTYPE8];
                [userDefaults setObject:Type8 forKey:GEOMTYPE9];
                
            }
            else if (Score < Score7 || Score7 == 0)
            {
                name6.text = theName.text;
                [userDefaults setFloat:Score forKey:GEOMSCORE7];
                [userDefaults setFloat:Score2 forKey:GEOMSCORE2];
                [userDefaults setFloat:Score3 forKey:GEOMSCORE3];
                [userDefaults setFloat:Score4 forKey:GEOMSCORE4];
                [userDefaults setFloat:Score5 forKey:GEOMSCORE5];
                [userDefaults setFloat:Score6 forKey:GEOMSCORE6];
                [userDefaults setFloat:Score7 forKey:GEOMSCORE8];
                [userDefaults setFloat:Score8 forKey:GEOMSCORE9];
                
                [userDefaults setObject:name1.text forKey:GEOMNAME1];
                [userDefaults setObject:name2.text forKey:GEOMNAME2];
                [userDefaults setObject:name3.text forKey:GEOMNAME3];
                [userDefaults setObject:name4.text forKey:GEOMNAME4];
                [userDefaults setObject:name5.text forKey:GEOMNAME5];
                [userDefaults setObject:name6.text forKey:GEOMNAME6];
                [userDefaults setObject:name7.text forKey:GEOMNAME7];
                [userDefaults setObject:name8.text forKey:GEOMNAME8];
                
                [userDefaults setObject:Type1 forKey:GEOMTYPE7];
                [userDefaults setObject:Type2 forKey:GEOMTYPE2];
                [userDefaults setObject:Type3 forKey:GEOMTYPE3];
                [userDefaults setObject:Type4 forKey:GEOMTYPE4];
                [userDefaults setObject:Type5 forKey:GEOMTYPE5];
                [userDefaults setObject:Type6 forKey:GEOMTYPE6];
                [userDefaults setObject:Type7 forKey:GEOMTYPE8];
                [userDefaults setObject:Type8 forKey:GEOMTYPE9];
                
            }
            else if (Score < Score8 || Score8 == 0)
            {
                name7.text = theName.text;
                [userDefaults setFloat:Score forKey:GEOMSCORE8];
                [userDefaults setFloat:Score2 forKey:GEOMSCORE2];
                [userDefaults setFloat:Score3 forKey:GEOMSCORE3];
                [userDefaults setFloat:Score4 forKey:GEOMSCORE4];
                [userDefaults setFloat:Score5 forKey:GEOMSCORE5];
                [userDefaults setFloat:Score6 forKey:GEOMSCORE6];
                [userDefaults setFloat:Score7 forKey:GEOMSCORE7];
                [userDefaults setFloat:Score8 forKey:GEOMSCORE9];
                
                [userDefaults setObject:name1.text forKey:GEOMNAME1];
                [userDefaults setObject:name2.text forKey:GEOMNAME2];
                [userDefaults setObject:name3.text forKey:GEOMNAME3];
                [userDefaults setObject:name4.text forKey:GEOMNAME4];
                [userDefaults setObject:name5.text forKey:GEOMNAME5];
                [userDefaults setObject:name6.text forKey:GEOMNAME6];
                [userDefaults setObject:name7.text forKey:GEOMNAME7];
                [userDefaults setObject:name8.text forKey:GEOMNAME8];
                
                [userDefaults setObject:Type1 forKey:GEOMTYPE8];
                [userDefaults setObject:Type2 forKey:GEOMTYPE2];
                [userDefaults setObject:Type3 forKey:GEOMTYPE3];
                [userDefaults setObject:Type4 forKey:GEOMTYPE4];
                [userDefaults setObject:Type5 forKey:GEOMTYPE5];
                [userDefaults setObject:Type6 forKey:GEOMTYPE6];
                [userDefaults setObject:Type7 forKey:GEOMTYPE7];
                [userDefaults setObject:Type8 forKey:GEOMTYPE9];
                
            }
            else
            {
                name8.text = theName.text;
                [userDefaults setFloat:Score forKey:GEOMSCORE9];
                [userDefaults setFloat:Score2 forKey:GEOMSCORE2];
                [userDefaults setFloat:Score3 forKey:GEOMSCORE3];
                [userDefaults setFloat:Score4 forKey:GEOMSCORE4];
                [userDefaults setFloat:Score5 forKey:GEOMSCORE5];
                [userDefaults setFloat:Score6 forKey:GEOMSCORE6];
                [userDefaults setFloat:Score7 forKey:GEOMSCORE7];
                [userDefaults setFloat:Score8 forKey:GEOMSCORE8];
                
                [userDefaults setObject:name1.text forKey:GEOMNAME1];
                [userDefaults setObject:name2.text forKey:GEOMNAME2];
                [userDefaults setObject:name3.text forKey:GEOMNAME3];
                [userDefaults setObject:name4.text forKey:GEOMNAME4];
                [userDefaults setObject:name5.text forKey:GEOMNAME5];
                [userDefaults setObject:name6.text forKey:GEOMNAME6];
                [userDefaults setObject:name7.text forKey:GEOMNAME7];
                [userDefaults setObject:name8.text forKey:GEOMNAME8];
                
                [userDefaults setObject:Type1 forKey:GEOMTYPE9];
                [userDefaults setObject:Type2 forKey:GEOMTYPE2];
                [userDefaults setObject:Type3 forKey:GEOMTYPE3];
                [userDefaults setObject:Type4 forKey:GEOMTYPE4];
                [userDefaults setObject:Type5 forKey:GEOMTYPE5];
                [userDefaults setObject:Type6 forKey:GEOMTYPE6];
                [userDefaults setObject:Type7 forKey:GEOMTYPE7];
                [userDefaults setObject:Type8 forKey:GEOMTYPE8];
            }
		}
	}
	else
    {
		alertChoice = 0;
	}
    
}


- (void)viewDidLoad
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
	Score = [userDefaults floatForKey:GEOMSCORE];
	Score2 = [userDefaults floatForKey:GEOMSCORE2];
	Score3 = [userDefaults floatForKey:GEOMSCORE3];
	Score4 = [userDefaults floatForKey:GEOMSCORE4];
	Score5 = [userDefaults floatForKey:GEOMSCORE5];
	Score6 = [userDefaults floatForKey:GEOMSCORE6];
	Score7 = [userDefaults floatForKey:GEOMSCORE7];
	Score8 = [userDefaults floatForKey:GEOMSCORE8];
	Score9 = [userDefaults floatForKey:GEOMSCORE9];
	Names1 = [userDefaults stringForKey:GEOMNAME1];
	Names2 = [userDefaults stringForKey:GEOMNAME2];
	Names3 = [userDefaults stringForKey:GEOMNAME3];
	Names4 = [userDefaults stringForKey:GEOMNAME4];
	Names5 = [userDefaults stringForKey:GEOMNAME5];
	Names6 = [userDefaults stringForKey:GEOMNAME6];
	Names7 = [userDefaults stringForKey:GEOMNAME7];
	Names8 = [userDefaults stringForKey:GEOMNAME8];
    Type1 = [userDefaults stringForKey:GEOMTYPE];
    Type2 = [userDefaults stringForKey:GEOMTYPE2];
    Type3 = [userDefaults stringForKey:GEOMTYPE3];
    Type4 = [userDefaults stringForKey:GEOMTYPE4];
    Type5 = [userDefaults stringForKey:GEOMTYPE5];
    Type6 = [userDefaults stringForKey:GEOMTYPE6];
    Type7 = [userDefaults stringForKey:GEOMTYPE7];
    Type8 = [userDefaults stringForKey:GEOMTYPE8];
    Type9 = [userDefaults stringForKey:GEOMTYPE9];
	TheScore1 = [[NSString alloc] initWithFormat:@"%1.2f", Score];
	TheScore2 = [[NSString alloc] initWithFormat:@"%1.2f", Score2];
	TheScore3 = [[NSString alloc] initWithFormat:@"%1.2f", Score3];
	TheScore4 = [[NSString alloc] initWithFormat:@"%1.2f", Score4];
	TheScore5 = [[NSString alloc] initWithFormat:@"%1.2f", Score5];
	TheScore6 = [[NSString alloc] initWithFormat:@"%1.2f", Score6];
	TheScore7 = [[NSString alloc] initWithFormat:@"%1.2f", Score7];
	TheScore8 = [[NSString alloc] initWithFormat:@"%1.2f", Score8];
	TheScore9 = [[NSString alloc] initWithFormat:@"%1.2f", Score9];
	if (Know == 1)
	{
		NSString *alertMessage;
		NSString *name;
		UIAlertView *setHighScore;
		
		name = [[NSString alloc] initWithFormat:@"Tom"];
		
		alertMessage = [[NSString alloc] initWithFormat:@"Name:																							"];
		setHighScore = [[UIAlertView alloc]
						initWithTitle:@"Set Score"
						message:alertMessage
						delegate:self
						cancelButtonTitle:@"Ok"
						otherButtonTitles:nil];
		theName = [[UITextField alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 150.0f, 30.0f)];
		theName.borderStyle = UITextBorderStyleRoundedRect;
		theName.tag = 1;
		theName.placeholder = @"Name";
		theName.clearButtonMode = UITextFieldViewModeWhileEditing;
		theName.keyboardType = UIKeyboardTypeAlphabet;
		theName.keyboardAppearance = UIKeyboardAppearanceAlert;
		theName.autocapitalizationType = UITextAutocapitalizationTypeWords;
		theName.autocorrectionType = UITextAutocorrectionTypeNo;
		theName.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
		[setHighScore show];
		
		if (CGRectEqualToRect(setHighScore.bounds, CGRectZero))
        {
            
        }
		
		CGRect bounds = setHighScore.bounds;
		theName.center = CGPointMake(bounds.size.width + 200.0f, bounds.size.height + 55.0f);
		
		[setHighScore addSubview:theName];
		
		
		
		if ((Score < Score2) || (Score2 == 0))
		{
			score1.text = TheScore1;
			score2.text = TheScore2;
			score3.text = TheScore3;
			score4.text = TheScore4;
			score5.text = TheScore5;
			score6.text = TheScore6;
			score7.text = TheScore7;
			score8.text = TheScore8;
			
			name2.text = Names1;
			name3.text = Names2;
			name4.text = Names3;
			name5.text = Names4;
			name6.text = Names5;
			name7.text = Names6;
			name8.text = Names7;
            
            type1.text = Type1;
            type2.text = Type2;
            type3.text = Type3;
            type4.text = Type4;
            type5.text = Type5;
            type6.text = Type6;
            type7.text = Type7;
            type8.text = Type8;
		}
		else if ((Score < Score3) || (Score3 == 0))
		{
			score1.text = TheScore2;
			score2.text = TheScore1;
			score3.text = TheScore3;
			score4.text = TheScore4;
			score5.text = TheScore5;
			score6.text = TheScore6;
			score7.text = TheScore7;
			score8.text = TheScore8;
            
			name1.text = Names1;
			name3.text = Names2;
			name4.text = Names3;
			name5.text = Names4;
			name6.text = Names5;
			name7.text = Names6;
			name8.text = Names7;
            
            type1.text = Type2;
            type2.text = Type1;
            type3.text = Type3;
            type4.text = Type4;
            type5.text = Type5;
            type6.text = Type6;
            type7.text = Type7;
            type8.text = Type8;
			
		}
		else if ((Score < Score4) || (Score4 == 0))
		{
			score1.text = TheScore2;
			score2.text = TheScore3;
			score3.text = TheScore1;
			score4.text = TheScore4;
			score5.text = TheScore5;
			score6.text = TheScore6;
			score7.text = TheScore7;
			score8.text = TheScore8;
			
			name1.text = Names1;
			name2.text = Names2;
			name4.text = Names3;
			name5.text = Names4;
			name6.text = Names5;
			name7.text = Names6;
			name8.text = Names7;
            
            type1.text = Type2;
            type2.text = Type3;
            type3.text = Type1;
            type4.text = Type4;
            type5.text = Type5;
            type6.text = Type6;
            type7.text = Type7;
            type8.text = Type8;
			
		}
		else if ((Score < Score5) || (Score5 == 0))
		{
			score1.text = TheScore2;
			score2.text = TheScore3;
			score3.text = TheScore4;
			score4.text = TheScore1;
			score5.text = TheScore5;
			score6.text = TheScore6;
			score7.text = TheScore7;
			score8.text = TheScore8;
			
			name1.text = Names1;
			name2.text = Names2;
			name3.text = Names3;
			name5.text = Names4;
			name6.text = Names5;
			name7.text = Names6;
			name8.text = Names7;
            
            type1.text = Type2;
            type2.text = Type3;
            type3.text = Type4;
            type4.text = Type1;
            type5.text = Type5;
            type6.text = Type6;
            type7.text = Type7;
            type8.text = Type8;
		}
		else if ((Score < Score6) || (Score6 == 0))
		{
			score1.text = TheScore2;
			score2.text = TheScore3;
			score3.text = TheScore4;
			score4.text = TheScore5;
			score5.text = TheScore1;
			score6.text = TheScore6;
			score7.text = TheScore7;
			score8.text = TheScore8;
            
			name1.text = Names1;
			name2.text = Names2;
			name3.text = Names3;
			name4.text = Names4;
			name6.text = Names5;
			name7.text = Names6;
			name8.text = Names7;
            
            type1.text = Type2;
            type2.text = Type3;
            type3.text = Type4;
            type4.text = Type5;
            type5.text = Type1;
            type6.text = Type6;
            type7.text = Type7;
            type8.text = Type8;
		}
		else if ((Score < Score7) || (Score7 == 0))
		{
			score1.text = TheScore2;
			score2.text = TheScore3;
			score3.text = TheScore4;
			score4.text = TheScore5;
			score5.text = TheScore6;
			score6.text = TheScore1;
			score7.text = TheScore7;
			score8.text = TheScore8;
			
			name1.text = Names1;
			name2.text = Names2;
			name3.text = Names3;
			name4.text = Names4;
			name5.text = Names5;
			name7.text = Names6;
			name8.text = Names7;
			
            type1.text = Type2;
            type2.text = Type3;
            type3.text = Type4;
            type4.text = Type5;
            type5.text = Type6;
            type6.text = Type1;
            type7.text = Type7;
            type8.text = Type8;
		}
		else if ((Score < Score8) || (Score8 == 0))
		{
			score1.text = TheScore2;
			score2.text = TheScore3;
			score3.text = TheScore4;
			score4.text = TheScore5;
			score5.text = TheScore6;
			score6.text = TheScore7;
			score7.text = TheScore1;
			score8.text = TheScore8;
			
			name1.text = Names1;
			name2.text = Names2;
			name3.text = Names3;
			name4.text = Names4;
			name5.text = Names5;
			name6.text = Names6;
			name8.text = Names7;
            
            type1.text = Type2;
            type2.text = Type3;
            type3.text = Type4;
            type4.text = Type5;
            type5.text = Type6;
            type6.text = Type7;
            type7.text = Type1;
            type8.text = Type8;
		}
		else
		{
			score1.text = TheScore2;
			score2.text = TheScore3;
			score3.text = TheScore4;
			score4.text = TheScore5;
			score5.text = TheScore6;
			score6.text = TheScore7;
			score7.text = TheScore8;
			score8.text = TheScore1;
			
			name1.text = Names1;
			name2.text = Names2;
			name3.text = Names3;
			name4.text = Names4;
			name5.text = Names5;
			name6.text = Names6;
			name7.text = Names7;
            
            type1.text = Type2;
            type2.text = Type3;
            type3.text = Type4;
            type4.text = Type5;
            type5.text = Type6;
            type6.text = Type7;
            type7.text = Type8;
            type8.text = Type1;
		}
	}
	else
	{
		score1.text = TheScore2;
		score2.text = TheScore3;
		score3.text = TheScore4;
		score4.text = TheScore5;
		score5.text = TheScore6;
		score6.text = TheScore7;
		score7.text = TheScore8;
		score8.text = TheScore9;
		name1.text = Names1;
		name2.text = Names2;
		name3.text = Names3;
		name4.text = Names4;
		name5.text = Names5;
		name6.text = Names6;
		name7.text = Names7;
		name8.text = Names8;
        type1.text = Type2;
        type2.text = Type3;
        type3.text = Type4;
        type4.text = Type5;
        type5.text = Type6;
        type6.text = Type7;
        type7.text = Type8;
        type8.text = Type9;
	}
	
	if ([score8.text isEqualToString:@"0.00"])
	{
		score8.text = @"";
	}
	if ([score1.text isEqualToString:@"0.00"])
	{
		score1.text = @"";
	}
	if ([score2.text isEqualToString:@"0.00"])
	{
		score2.text = @"";
	}
	if ([score3.text isEqualToString:@"0.00"])
	{
		score3.text = @"";
	}
	if ([score4.text isEqualToString:@"0.00"])
	{
		score4.text = @"";
	}
	if ([score5.text isEqualToString:@"0.00"])
	{
		score5.text = @"";
	}
	if ([score6.text isEqualToString:@"0.00"])
	{
		score6.text = @"";
	}
	if ([score7.text isEqualToString:@"0.00"])
	{
		score7.text = @"";
	}

    self.navigationItem.title = @"High Scores";
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
