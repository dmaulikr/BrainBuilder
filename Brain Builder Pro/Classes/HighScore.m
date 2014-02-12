//
//  HighScore.m
//  Gr3y Matt3r 2.0
//
//  Created by Fred Kneeland on 6/20/11.
//  Copyright 2011 Blade Linux LLC. All rights reserved.
//

#import "HighScore.h"
#import "QuickGame.h"
#import "Testing.h"

@implementation HighScore
@synthesize	quickGame;
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
@synthesize theScroller;
@synthesize customName1;
@synthesize customName2;
@synthesize customName3;
@synthesize customName4;
@synthesize customName5;
@synthesize customName6;
@synthesize customName7;
@synthesize customName8;
@synthesize customScore1;
@synthesize customScore2;
@synthesize customScore3;
@synthesize customScore4;
@synthesize customScore5;
@synthesize customScore6;
@synthesize customScore7;
@synthesize customScore8;
@synthesize theName;
@synthesize testing;

-(IBAction) loadQuickGame:(id)sender
{
	[self.view insertSubview:quickGame.view atIndex:123];
}
-(IBAction) loadCustomGame:(id)sender;
{
	[self.view insertSubview:testing.view atIndex:123];
}
-(IBAction) loadHomePage:(id)sender
{
	NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
	if (Know == 1)
	{
		[userDefaults setFloat:Score forKey:SCORE2];
		[userDefaults setFloat:Score2 forKey:SCORE3];
		[userDefaults setFloat:Score3 forKey:SCORE4];
		[userDefaults setFloat:Score4 forKey:SCORE5];
		[userDefaults setFloat:Score5 forKey:SCORE6];
		[userDefaults setFloat:Score6 forKey:SCORE7];
		[userDefaults setFloat:Score7 forKey:SCORE8];
		[userDefaults setFloat:Score8 forKey:SCORE9];
		[userDefaults setObject:name1.text forKey:NAME1];
		[userDefaults setObject:name2.text forKey:NAME2];
		[userDefaults setObject:name3.text forKey:NAME3];
		[userDefaults setObject:name4.text forKey:NAME4];
		[userDefaults setObject:name5.text forKey:NAME5];
		[userDefaults setObject:name6.text forKey:NAME6];
		[userDefaults setObject:name7.text forKey:NAME7];
		[userDefaults setObject:name8.text forKey:NAME8];
	}
	else
	{
		[userDefaults setFloat:Score2 forKey:SCORE2];
		[userDefaults setFloat:Score3 forKey:SCORE3];
		[userDefaults setFloat:Score4 forKey:SCORE4];
		[userDefaults setFloat:Score5 forKey:SCORE5];
		[userDefaults setFloat:Score6 forKey:SCORE6];
		[userDefaults setFloat:Score7 forKey:SCORE7];
		[userDefaults setFloat:Score8 forKey:SCORE8];
		[userDefaults setFloat:Score9 forKey:SCORE9];
		[userDefaults setObject:name1.text forKey:NAME1];
		[userDefaults setObject:name2.text forKey:NAME2];
		[userDefaults setObject:name3.text forKey:NAME3];
		[userDefaults setObject:name4.text forKey:NAME4];
		[userDefaults setObject:name5.text forKey:NAME5];
		[userDefaults setObject:name6.text forKey:NAME6];
		[userDefaults setObject:name7.text forKey:NAME7];
		[userDefaults setObject:name8.text forKey:NAME8];
	}
}

-(IBAction) loadGlobalPage:(id)sender
{
	NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
	if (Know == 1)
	{
		[userDefaults setFloat:Score forKey:SCORE2];
		[userDefaults setFloat:Score2 forKey:SCORE3];
		[userDefaults setFloat:Score3 forKey:SCORE4];
		[userDefaults setFloat:Score4 forKey:SCORE5];
		[userDefaults setFloat:Score5 forKey:SCORE6];
		[userDefaults setFloat:Score6 forKey:SCORE7];
		[userDefaults setFloat:Score7 forKey:SCORE8];
		[userDefaults setFloat:Score8 forKey:SCORE9];
		[userDefaults setObject:name1.text forKey:NAME1];
		[userDefaults setObject:name2.text forKey:NAME2];
		[userDefaults setObject:name3.text forKey:NAME3];
		[userDefaults setObject:name4.text forKey:NAME4];
		[userDefaults setObject:name5.text forKey:NAME5];
		[userDefaults setObject:name6.text forKey:NAME6];
		[userDefaults setObject:name7.text forKey:NAME7];
		[userDefaults setObject:name8.text forKey:NAME8];
	}
	else
	{
		[userDefaults setFloat:Score2 forKey:SCORE2];
		[userDefaults setFloat:Score3 forKey:SCORE3];
		[userDefaults setFloat:Score4 forKey:SCORE4];
		[userDefaults setFloat:Score5 forKey:SCORE5];
		[userDefaults setFloat:Score6 forKey:SCORE6];
		[userDefaults setFloat:Score7 forKey:SCORE7];
		[userDefaults setFloat:Score8 forKey:SCORE8];
		[userDefaults setFloat:Score9 forKey:SCORE9];	
		[userDefaults setObject:name1.text forKey:NAME1];
		[userDefaults setObject:name2.text forKey:NAME2];
		[userDefaults setObject:name3.text forKey:NAME3];
		[userDefaults setObject:name4.text forKey:NAME4];
		[userDefaults setObject:name5.text forKey:NAME5];
		[userDefaults setObject:name6.text forKey:NAME6];
		[userDefaults setObject:name7.text forKey:NAME7];
		[userDefaults setObject:name8.text forKey:NAME8];
	}
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
		if (highScore == 1)
		{
			NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
            [userDefaults setObject:theName.text forKey:NAME16];
        
			if (Know == 1)
			{
				if (Score < Score2 || Score2 == 0)
				{
					name1.text = theName.text;
					[userDefaults setFloat:Score forKey:SCORE2];
					[userDefaults setFloat:Score2 forKey:SCORE3];
					[userDefaults setFloat:Score3 forKey:SCORE4];
					[userDefaults setFloat:Score4 forKey:SCORE5];
					[userDefaults setFloat:Score5 forKey:SCORE6];
					[userDefaults setFloat:Score6 forKey:SCORE7];
					[userDefaults setFloat:Score7 forKey:SCORE8];
					[userDefaults setFloat:Score8 forKey:SCORE9];
					[userDefaults setObject:name1.text forKey:NAME1];
					[userDefaults setObject:name2.text forKey:NAME2];
					[userDefaults setObject:name3.text forKey:NAME3];
					[userDefaults setObject:name4.text forKey:NAME4];
					[userDefaults setObject:name5.text forKey:NAME5];
					[userDefaults setObject:name6.text forKey:NAME6];
					[userDefaults setObject:name7.text forKey:NAME7];
					[userDefaults setObject:name8.text forKey:NAME8];
					
				}
				else if (Score < Score3 || Score3 == 0)
				{
					name2.text = theName.text;
					[userDefaults setFloat:Score forKey:SCORE3];
					[userDefaults setFloat:Score2 forKey:SCORE2];
					[userDefaults setFloat:Score3 forKey:SCORE4];
					[userDefaults setFloat:Score4 forKey:SCORE5];
					[userDefaults setFloat:Score5 forKey:SCORE6];
					[userDefaults setFloat:Score6 forKey:SCORE7];
					[userDefaults setFloat:Score7 forKey:SCORE8];
					[userDefaults setFloat:Score8 forKey:SCORE9];
					[userDefaults setObject:name1.text forKey:NAME1];
					[userDefaults setObject:name2.text forKey:NAME2];
					[userDefaults setObject:name3.text forKey:NAME3];
					[userDefaults setObject:name4.text forKey:NAME4];
					[userDefaults setObject:name5.text forKey:NAME5];
					[userDefaults setObject:name6.text forKey:NAME6];
					[userDefaults setObject:name7.text forKey:NAME7];
					[userDefaults setObject:name8.text forKey:NAME8];
					
				}
				else if (Score < Score4 || Score4 == 0)
				{
					name3.text = theName.text;
					[userDefaults setFloat:Score forKey:SCORE4];
					[userDefaults setFloat:Score2 forKey:SCORE2];
					[userDefaults setFloat:Score3 forKey:SCORE3];
					[userDefaults setFloat:Score4 forKey:SCORE5];
					[userDefaults setFloat:Score5 forKey:SCORE6];
					[userDefaults setFloat:Score6 forKey:SCORE7];
					[userDefaults setFloat:Score7 forKey:SCORE8];
					[userDefaults setFloat:Score8 forKey:SCORE9];
					[userDefaults setObject:name1.text forKey:NAME1];
					[userDefaults setObject:name2.text forKey:NAME2];
					[userDefaults setObject:name3.text forKey:NAME3];
					[userDefaults setObject:name4.text forKey:NAME4];
					[userDefaults setObject:name5.text forKey:NAME5];
					[userDefaults setObject:name6.text forKey:NAME6];
					[userDefaults setObject:name7.text forKey:NAME7];
					[userDefaults setObject:name8.text forKey:NAME8];
					
				}
				else if (Score < Score5 || Score5 == 0)
				{
					name4.text = theName.text;
					[userDefaults setFloat:Score forKey:SCORE5];
					[userDefaults setFloat:Score2 forKey:SCORE2];
					[userDefaults setFloat:Score3 forKey:SCORE3];
					[userDefaults setFloat:Score4 forKey:SCORE4];
					[userDefaults setFloat:Score5 forKey:SCORE6];
					[userDefaults setFloat:Score6 forKey:SCORE7];
					[userDefaults setFloat:Score7 forKey:SCORE8];
					[userDefaults setFloat:Score8 forKey:SCORE9];
					[userDefaults setObject:name1.text forKey:NAME1];
					[userDefaults setObject:name2.text forKey:NAME2];
					[userDefaults setObject:name3.text forKey:NAME3];
					[userDefaults setObject:name4.text forKey:NAME4];
					[userDefaults setObject:name5.text forKey:NAME5];
					[userDefaults setObject:name6.text forKey:NAME6];
					[userDefaults setObject:name7.text forKey:NAME7];
					[userDefaults setObject:name8.text forKey:NAME8];
					
				}
				else if (Score < Score6 || Score6 == 0)
				{
					name5.text = theName.text;
					[userDefaults setFloat:Score forKey:SCORE6];
					[userDefaults setFloat:Score2 forKey:SCORE2];
					[userDefaults setFloat:Score3 forKey:SCORE3];
					[userDefaults setFloat:Score4 forKey:SCORE4];
					[userDefaults setFloat:Score5 forKey:SCORE5];
					[userDefaults setFloat:Score6 forKey:SCORE7];
					[userDefaults setFloat:Score7 forKey:SCORE8];
					[userDefaults setFloat:Score8 forKey:SCORE9];
					[userDefaults setObject:name1.text forKey:NAME1];
					[userDefaults setObject:name2.text forKey:NAME2];
					[userDefaults setObject:name3.text forKey:NAME3];
					[userDefaults setObject:name4.text forKey:NAME4];
					[userDefaults setObject:name5.text forKey:NAME5];
					[userDefaults setObject:name6.text forKey:NAME6];
					[userDefaults setObject:name7.text forKey:NAME7];
					[userDefaults setObject:name8.text forKey:NAME8];
					
				}
				else if (Score < Score7 || Score7 == 0)
				{
					name6.text = theName.text;
					[userDefaults setFloat:Score forKey:SCORE7];
					[userDefaults setFloat:Score2 forKey:SCORE2];
					[userDefaults setFloat:Score3 forKey:SCORE3];
					[userDefaults setFloat:Score4 forKey:SCORE4];
					[userDefaults setFloat:Score5 forKey:SCORE5];
					[userDefaults setFloat:Score6 forKey:SCORE6];
					[userDefaults setFloat:Score7 forKey:SCORE8];
					[userDefaults setFloat:Score8 forKey:SCORE9];
					[userDefaults setObject:name1.text forKey:NAME1];
					[userDefaults setObject:name2.text forKey:NAME2];
					[userDefaults setObject:name3.text forKey:NAME3];
					[userDefaults setObject:name4.text forKey:NAME4];
					[userDefaults setObject:name5.text forKey:NAME5];
					[userDefaults setObject:name6.text forKey:NAME6];
					[userDefaults setObject:name7.text forKey:NAME7];
					[userDefaults setObject:name8.text forKey:NAME8];
					
				}
				else if (Score < Score8 || Score8 == 0)
				{
					name7.text = theName.text;
					[userDefaults setFloat:Score forKey:SCORE8];
					[userDefaults setFloat:Score2 forKey:SCORE2];
					[userDefaults setFloat:Score3 forKey:SCORE3];
					[userDefaults setFloat:Score4 forKey:SCORE4];
					[userDefaults setFloat:Score5 forKey:SCORE5];
					[userDefaults setFloat:Score6 forKey:SCORE6];
					[userDefaults setFloat:Score7 forKey:SCORE7];
					[userDefaults setFloat:Score8 forKey:SCORE9];
					[userDefaults setObject:name1.text forKey:NAME1];
					[userDefaults setObject:name2.text forKey:NAME2];
					[userDefaults setObject:name3.text forKey:NAME3];
					[userDefaults setObject:name4.text forKey:NAME4];
					[userDefaults setObject:name5.text forKey:NAME5];
					[userDefaults setObject:name6.text forKey:NAME6];
					[userDefaults setObject:name7.text forKey:NAME7];
					[userDefaults setObject:name8.text forKey:NAME8];
					
				}
				else
				{
					name8.text = theName.text;
					[userDefaults setFloat:Score forKey:SCORE9];
					[userDefaults setFloat:Score2 forKey:SCORE2];
					[userDefaults setFloat:Score3 forKey:SCORE3];
					[userDefaults setFloat:Score4 forKey:SCORE4];
					[userDefaults setFloat:Score5 forKey:SCORE5];
					[userDefaults setFloat:Score6 forKey:SCORE6];
					[userDefaults setFloat:Score7 forKey:SCORE7];
					[userDefaults setFloat:Score8 forKey:SCORE8];
					[userDefaults setObject:name1.text forKey:NAME1];
					[userDefaults setObject:name2.text forKey:NAME2];
					[userDefaults setObject:name3.text forKey:NAME3];
					[userDefaults setObject:name4.text forKey:NAME4];
					[userDefaults setObject:name5.text forKey:NAME5];
					[userDefaults setObject:name6.text forKey:NAME6];
					[userDefaults setObject:name7.text forKey:NAME7];
					[userDefaults setObject:name8.text forKey:NAME8];
				}
			}			
		}
		else {
			NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
			customName1.text = theName.text;
			[userDefaults setFloat:Score forKey:SCORE2];
			[userDefaults setFloat:Score2 forKey:SCORE3];
			[userDefaults setFloat:Score3 forKey:SCORE4];
			[userDefaults setFloat:Score4 forKey:SCORE5];
			[userDefaults setFloat:Score5 forKey:SCORE6];
			[userDefaults setFloat:Score6 forKey:SCORE7];
			[userDefaults setFloat:Score7 forKey:SCORE8];
			[userDefaults setFloat:Score8 forKey:SCORE9];
			[userDefaults setObject:name1.text forKey:NAME1];
			[userDefaults setObject:name2.text forKey:NAME2];
			[userDefaults setObject:name3.text forKey:NAME3];
			[userDefaults setObject:name4.text forKey:NAME4];
			[userDefaults setObject:name5.text forKey:NAME5];
			[userDefaults setObject:name6.text forKey:NAME6];
			[userDefaults setObject:name7.text forKey:NAME7];
			[userDefaults setObject:name8.text forKey:NAME8];
		}

		
	}
	else {
		alertChoice = 0;
	}

}

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	self.navigationItem.title = @"High Scores!!";
	NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
	Score = [userDefaults floatForKey:SCORE];
	Score2 = [userDefaults floatForKey:SCORE2];
	Score3 = [userDefaults floatForKey:SCORE3];
	Score4 = [userDefaults floatForKey:SCORE4];
	Score5 = [userDefaults floatForKey:SCORE5];
	Score6 = [userDefaults floatForKey:SCORE6];
	Score7 = [userDefaults floatForKey:SCORE7];
	Score8 = [userDefaults floatForKey:SCORE8];
	Score9 = [userDefaults floatForKey:SCORE9];
	Names1 = [userDefaults stringForKey:NAME1];
	Names2 = [userDefaults stringForKey:NAME2];
	Names3 = [userDefaults stringForKey:NAME3];
	Names4 = [userDefaults stringForKey:NAME4];
	Names5 = [userDefaults stringForKey:NAME5];
	Names6 = [userDefaults stringForKey:NAME6];
	Names7 = [userDefaults stringForKey:NAME7];
	Names8 = [userDefaults stringForKey:NAME8];
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
		setHighScore.alertViewStyle = UIAlertViewStylePlainTextInput;
        theName = [setHighScore textFieldAtIndex:0];
        theName.autocapitalizationType = UITextAutocapitalizationTypeWords;
        theName.placeholder = @"Name";
        if ([userDefaults stringForKey:NAME16] == nil)
        {
            
        }
        else
        {
            theName.text = [userDefaults stringForKey:NAME16];
        }
		[setHighScore show];
    
		[setHighScore release];
		
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
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
	if (Know == 1)
	{
		[userDefaults setFloat:Score forKey:SCORE2];
		[userDefaults setFloat:Score2 forKey:SCORE3];
		[userDefaults setFloat:Score3 forKey:SCORE4];
		[userDefaults setFloat:Score4 forKey:SCORE5];
		[userDefaults setFloat:Score5 forKey:SCORE6];
		[userDefaults setFloat:Score6 forKey:SCORE7];
		[userDefaults setFloat:Score7 forKey:SCORE8];
		[userDefaults setFloat:Score8 forKey:SCORE9];
	}
	else
	{
		[userDefaults setFloat:Score2 forKey:SCORE2];
		[userDefaults setFloat:Score3 forKey:SCORE3];
		[userDefaults setFloat:Score4 forKey:SCORE4];
		[userDefaults setFloat:Score5 forKey:SCORE5];
		[userDefaults setFloat:Score6 forKey:SCORE6];
		[userDefaults setFloat:Score7 forKey:SCORE7];
		[userDefaults setFloat:Score8 forKey:SCORE8];
		[userDefaults setFloat:Score9 forKey:SCORE9];
	}
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [name1 release];
	[name2 release];
	[name3 release];
	[name4 release];
	[name5 release];
	[name6 release];
	[name7 release];
	[name8 release];
	[score1 release];
	[score2 release];
	[score3 release];
	[score4 release];
	[score5 release];
	[score6 release];
	[score7 release];
	[score8 release];
	[theScroller release];
	[customName1 release];
	[customName2 release];
	[customName3 release];
	[customName4 release]; 
	[customName5 release];
	[customName6 release];
	[customName7 release];
	[customName8 release];
	[customScore1 release];
	[customScore2 release];
	[customScore3 release];
	[customScore4 release];
	[customScore5 release];
	[customScore6 release];
	[customScore7 release];
	[customScore8 release];
	[theName release];
	[quickGame release];
	[testing release];
    [super dealloc];
}


@end
