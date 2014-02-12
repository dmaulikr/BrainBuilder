//
//  TrigHighScoreQuick.m
//  BrainBuilderPro
//
//  Created by Fred Kneeland on 3/16/12.
//  Copyright (c) 2012 BLADE Enterprises LLC. All rights reserved.
//

#import "TrigHighScoreQuick.h"

@implementation TrigHighScoreQuick
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
                [userDefaults setFloat:Score forKey:TRIGSCORE2];
                [userDefaults setFloat:Score2 forKey:TRIGSCORE3];
                [userDefaults setFloat:Score3 forKey:TRIGSCORE4];
                [userDefaults setFloat:Score4 forKey:TRIGSCORE5];
                [userDefaults setFloat:Score5 forKey:TRIGSCORE6];
                [userDefaults setFloat:Score6 forKey:TRIGSCORE7];
                [userDefaults setFloat:Score7 forKey:TRIGSCORE8];
                [userDefaults setFloat:Score8 forKey:TRIGSCORE9];
                [userDefaults setObject:name1.text forKey:TRIGNAME1];
                [userDefaults setObject:name2.text forKey:TRIGNAME2];
                [userDefaults setObject:name3.text forKey:TRIGNAME3];
                [userDefaults setObject:name4.text forKey:TRIGNAME4];
                [userDefaults setObject:name5.text forKey:TRIGNAME5];
                [userDefaults setObject:name6.text forKey:TRIGNAME6];
                [userDefaults setObject:name7.text forKey:TRIGNAME7];
                [userDefaults setObject:name8.text forKey:TRIGNAME8];
                
            }
            else if (Score < Score3 || Score3 == 0)
            {
                name2.text = theName.text;
                [userDefaults setFloat:Score forKey:TRIGSCORE3];
                [userDefaults setFloat:Score2 forKey:TRIGSCORE2];
                [userDefaults setFloat:Score3 forKey:TRIGSCORE4];
                [userDefaults setFloat:Score4 forKey:TRIGSCORE5];
                [userDefaults setFloat:Score5 forKey:TRIGSCORE6];
                [userDefaults setFloat:Score6 forKey:TRIGSCORE7];
                [userDefaults setFloat:Score7 forKey:TRIGSCORE8];
                [userDefaults setFloat:Score8 forKey:TRIGSCORE9];
                [userDefaults setObject:name1.text forKey:TRIGNAME1];
                [userDefaults setObject:name2.text forKey:TRIGNAME2];
                [userDefaults setObject:name3.text forKey:TRIGNAME3];
                [userDefaults setObject:name4.text forKey:TRIGNAME4];
                [userDefaults setObject:name5.text forKey:TRIGNAME5];
                [userDefaults setObject:name6.text forKey:TRIGNAME6];
                [userDefaults setObject:name7.text forKey:TRIGNAME7];
                [userDefaults setObject:name8.text forKey:TRIGNAME8];
                
            }
            else if (Score < Score4 || Score4 == 0)
            {
                name3.text = theName.text;
                [userDefaults setFloat:Score forKey:TRIGSCORE4];
                [userDefaults setFloat:Score2 forKey:TRIGSCORE2];
                [userDefaults setFloat:Score3 forKey:TRIGSCORE3];
                [userDefaults setFloat:Score4 forKey:TRIGSCORE5];
                [userDefaults setFloat:Score5 forKey:TRIGSCORE6];
                [userDefaults setFloat:Score6 forKey:TRIGSCORE7];
                [userDefaults setFloat:Score7 forKey:TRIGSCORE8];
                [userDefaults setFloat:Score8 forKey:TRIGSCORE9];
                [userDefaults setObject:name1.text forKey:TRIGNAME1];
                [userDefaults setObject:name2.text forKey:TRIGNAME2];
                [userDefaults setObject:name3.text forKey:TRIGNAME3];
                [userDefaults setObject:name4.text forKey:TRIGNAME4];
                [userDefaults setObject:name5.text forKey:TRIGNAME5];
                [userDefaults setObject:name6.text forKey:TRIGNAME6];
                [userDefaults setObject:name7.text forKey:TRIGNAME7];
                [userDefaults setObject:name8.text forKey:TRIGNAME8];
                
            }
            else if (Score < Score5 || Score5 == 0)
            {
                name4.text = theName.text;
                [userDefaults setFloat:Score forKey:TRIGSCORE5];
                [userDefaults setFloat:Score2 forKey:TRIGSCORE2];
                [userDefaults setFloat:Score3 forKey:TRIGSCORE3];
                [userDefaults setFloat:Score4 forKey:TRIGSCORE4];
                [userDefaults setFloat:Score5 forKey:TRIGSCORE6];
                [userDefaults setFloat:Score6 forKey:TRIGSCORE7];
                [userDefaults setFloat:Score7 forKey:TRIGSCORE8];
                [userDefaults setFloat:Score8 forKey:TRIGSCORE9];
                [userDefaults setObject:name1.text forKey:TRIGNAME1];
                [userDefaults setObject:name2.text forKey:TRIGNAME2];
                [userDefaults setObject:name3.text forKey:TRIGNAME3];
                [userDefaults setObject:name4.text forKey:TRIGNAME4];
                [userDefaults setObject:name5.text forKey:TRIGNAME5];
                [userDefaults setObject:name6.text forKey:TRIGNAME6];
                [userDefaults setObject:name7.text forKey:TRIGNAME7];
                [userDefaults setObject:name8.text forKey:TRIGNAME8];
                
            }
            else if (Score < Score6 || Score6 == 0)
            {
                name5.text = theName.text;
                [userDefaults setFloat:Score forKey:TRIGSCORE6];
                [userDefaults setFloat:Score2 forKey:TRIGSCORE2];
                [userDefaults setFloat:Score3 forKey:TRIGSCORE3];
                [userDefaults setFloat:Score4 forKey:TRIGSCORE4];
                [userDefaults setFloat:Score5 forKey:TRIGSCORE5];
                [userDefaults setFloat:Score6 forKey:TRIGSCORE7];
                [userDefaults setFloat:Score7 forKey:TRIGSCORE8];
                [userDefaults setFloat:Score8 forKey:TRIGSCORE9];
                [userDefaults setObject:name1.text forKey:TRIGNAME1];
                [userDefaults setObject:name2.text forKey:TRIGNAME2];
                [userDefaults setObject:name3.text forKey:TRIGNAME3];
                [userDefaults setObject:name4.text forKey:TRIGNAME4];
                [userDefaults setObject:name5.text forKey:TRIGNAME5];
                [userDefaults setObject:name6.text forKey:TRIGNAME6];
                [userDefaults setObject:name7.text forKey:TRIGNAME7];
                [userDefaults setObject:name8.text forKey:TRIGNAME8];
                
            }
            else if (Score < Score7 || Score7 == 0)
            {
                name6.text = theName.text;
                [userDefaults setFloat:Score forKey:TRIGSCORE7];
                [userDefaults setFloat:Score2 forKey:TRIGSCORE2];
                [userDefaults setFloat:Score3 forKey:TRIGSCORE3];
                [userDefaults setFloat:Score4 forKey:TRIGSCORE4];
                [userDefaults setFloat:Score5 forKey:TRIGSCORE5];
                [userDefaults setFloat:Score6 forKey:TRIGSCORE6];
                [userDefaults setFloat:Score7 forKey:TRIGSCORE8];
                [userDefaults setFloat:Score8 forKey:TRIGSCORE9];
                [userDefaults setObject:name1.text forKey:TRIGNAME1];
                [userDefaults setObject:name2.text forKey:TRIGNAME2];
                [userDefaults setObject:name3.text forKey:TRIGNAME3];
                [userDefaults setObject:name4.text forKey:TRIGNAME4];
                [userDefaults setObject:name5.text forKey:TRIGNAME5];
                [userDefaults setObject:name6.text forKey:TRIGNAME6];
                [userDefaults setObject:name7.text forKey:TRIGNAME7];
                [userDefaults setObject:name8.text forKey:TRIGNAME8];
                
            }
            else if (Score < Score8 || Score8 == 0)
            {
                name7.text = theName.text;
                [userDefaults setFloat:Score forKey:TRIGSCORE8];
                [userDefaults setFloat:Score2 forKey:TRIGSCORE2];
                [userDefaults setFloat:Score3 forKey:TRIGSCORE3];
                [userDefaults setFloat:Score4 forKey:TRIGSCORE4];
                [userDefaults setFloat:Score5 forKey:TRIGSCORE5];
                [userDefaults setFloat:Score6 forKey:TRIGSCORE6];
                [userDefaults setFloat:Score7 forKey:TRIGSCORE7];
                [userDefaults setFloat:Score8 forKey:TRIGSCORE9];
                [userDefaults setObject:name1.text forKey:TRIGNAME1];
                [userDefaults setObject:name2.text forKey:TRIGNAME2];
                [userDefaults setObject:name3.text forKey:TRIGNAME3];
                [userDefaults setObject:name4.text forKey:TRIGNAME4];
                [userDefaults setObject:name5.text forKey:TRIGNAME5];
                [userDefaults setObject:name6.text forKey:TRIGNAME6];
                [userDefaults setObject:name7.text forKey:TRIGNAME7];
                [userDefaults setObject:name8.text forKey:TRIGNAME8];
                
            }
            else
            {
                name8.text = theName.text;
                [userDefaults setFloat:Score forKey:TRIGSCORE9];
                [userDefaults setFloat:Score2 forKey:TRIGSCORE2];
                [userDefaults setFloat:Score3 forKey:TRIGSCORE3];
                [userDefaults setFloat:Score4 forKey:TRIGSCORE4];
                [userDefaults setFloat:Score5 forKey:TRIGSCORE5];
                [userDefaults setFloat:Score6 forKey:TRIGSCORE6];
                [userDefaults setFloat:Score7 forKey:TRIGSCORE7];
                [userDefaults setFloat:Score8 forKey:TRIGSCORE8];
                [userDefaults setObject:name1.text forKey:TRIGNAME1];
                [userDefaults setObject:name2.text forKey:TRIGNAME2];
                [userDefaults setObject:name3.text forKey:TRIGNAME3];
                [userDefaults setObject:name4.text forKey:TRIGNAME4];
                [userDefaults setObject:name5.text forKey:TRIGNAME5];
                [userDefaults setObject:name6.text forKey:TRIGNAME6];
                [userDefaults setObject:name7.text forKey:TRIGNAME7];
                [userDefaults setObject:name8.text forKey:TRIGNAME8];
            }
		}
	}
	else 
    {
		alertChoice = 0;
	}
    
}



- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    self.navigationItem.title = @"High Scores!!";
	NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
	Score = [userDefaults floatForKey:TRIGSCORE];
	Score2 = [userDefaults floatForKey:TRIGSCORE2];
	Score3 = [userDefaults floatForKey:TRIGSCORE3];
	Score4 = [userDefaults floatForKey:TRIGSCORE4];
	Score5 = [userDefaults floatForKey:TRIGSCORE5];
	Score6 = [userDefaults floatForKey:TRIGSCORE6];
	Score7 = [userDefaults floatForKey:TRIGSCORE7];
	Score8 = [userDefaults floatForKey:TRIGSCORE8];
	Score9 = [userDefaults floatForKey:TRIGSCORE9];
	Names1 = [userDefaults stringForKey:TRIGNAME1];
	Names2 = [userDefaults stringForKey:TRIGNAME2];
	Names3 = [userDefaults stringForKey:TRIGNAME3];
	Names4 = [userDefaults stringForKey:TRIGNAME4];
	Names5 = [userDefaults stringForKey:TRIGNAME5];
	Names6 = [userDefaults stringForKey:TRIGNAME6];
	Names7 = [userDefaults stringForKey:TRIGNAME7];
	Names8 = [userDefaults stringForKey:TRIGNAME8];
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

    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
