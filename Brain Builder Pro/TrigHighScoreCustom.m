//
//  TrigHighScoreCustom.m
//  BrainBuilderPro
//
//  Created by Fred Kneeland on 3/16/12.
//  Copyright (c) 2012 BLADE Enterprises LLC. All rights reserved.
//

#import "TrigHighScoreCustom.h"

@implementation TrigHighScoreCustom
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

-(void) AlertOn
{
	Know = 1;
}
-(void) AlertOff
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
            if (Score10 < Score11 || Score11 == 0)
            {
                customName1.text = theName.text;
                [userDefaults setFloat:Score10 forKey:TRIGSCORE11];
                [userDefaults setFloat:Score11 forKey:TRIGSCORE12];
                [userDefaults setFloat:Score12 forKey:TRIGSCORE13];
                [userDefaults setFloat:Score13 forKey:TRIGSCORE14];
                [userDefaults setFloat:Score14 forKey:TRIGSCORE15];
                [userDefaults setFloat:Score15 forKey:TRIGSCORE16];
                [userDefaults setFloat:Score16 forKey:TRIGSCORE17];
                [userDefaults setFloat:Score17 forKey:TRIGSCORE18];
                [userDefaults setObject:customName1.text forKey:TRIGNAME9];
                [userDefaults setObject:customName2.text forKey:TRIGNAME10];
                [userDefaults setObject:customName3.text forKey:TRIGNAME11];
                [userDefaults setObject:customName4.text forKey:TRIGNAME12];
                [userDefaults setObject:customName5.text forKey:TRIGNAME13];
                [userDefaults setObject:customName6.text forKey:TRIGNAME14];
                [userDefaults setObject:customName7.text forKey:TRIGNAME15];
                [userDefaults setObject:customName8.text forKey:TRIGNAME16];
                
            }
            else if (Score10 < Score12 || Score12 == 0)
            {
                customName2.text = theName.text;
                [userDefaults setFloat:Score10 forKey:TRIGSCORE12];
                [userDefaults setFloat:Score11 forKey:TRIGSCORE11];
                [userDefaults setFloat:Score12 forKey:TRIGSCORE13];
                [userDefaults setFloat:Score13 forKey:TRIGSCORE14];
                [userDefaults setFloat:Score14 forKey:TRIGSCORE15];
                [userDefaults setFloat:Score15 forKey:TRIGSCORE16];
                [userDefaults setFloat:Score16 forKey:TRIGSCORE17];
                [userDefaults setFloat:Score17 forKey:TRIGSCORE18];
                [userDefaults setObject:customName1.text forKey:TRIGNAME9];
                [userDefaults setObject:customName2.text forKey:TRIGNAME10];
                [userDefaults setObject:customName3.text forKey:TRIGNAME11];
                [userDefaults setObject:customName4.text forKey:TRIGNAME12];
                [userDefaults setObject:customName5.text forKey:TRIGNAME13];
                [userDefaults setObject:customName6.text forKey:TRIGNAME14];
                [userDefaults setObject:customName7.text forKey:TRIGNAME15];
                [userDefaults setObject:customName8.text forKey:TRIGNAME16];
                
            }
            else if (Score10 < Score13 || Score13 == 0)
            {
                customName3.text = theName.text;
                [userDefaults setFloat:Score10 forKey:TRIGSCORE13];
                [userDefaults setFloat:Score11 forKey:TRIGSCORE11];
                [userDefaults setFloat:Score12 forKey:TRIGSCORE12];
                [userDefaults setFloat:Score13 forKey:TRIGSCORE14];
                [userDefaults setFloat:Score14 forKey:TRIGSCORE15];
                [userDefaults setFloat:Score15 forKey:TRIGSCORE16];
                [userDefaults setFloat:Score16 forKey:TRIGSCORE17];
                [userDefaults setFloat:Score17 forKey:TRIGSCORE18];
                [userDefaults setObject:customName1.text forKey:TRIGNAME9];
                [userDefaults setObject:customName2.text forKey:TRIGNAME10];
                [userDefaults setObject:customName3.text forKey:TRIGNAME11];
                [userDefaults setObject:customName4.text forKey:TRIGNAME12];
                [userDefaults setObject:customName5.text forKey:TRIGNAME13];
                [userDefaults setObject:customName6.text forKey:TRIGNAME14];
                [userDefaults setObject:customName7.text forKey:TRIGNAME15];
                [userDefaults setObject:customName8.text forKey:TRIGNAME16];
                
            }
            else if (Score10 < Score14 || Score14 == 0)
            {
                customName4.text = theName.text;
                [userDefaults setFloat:Score10 forKey:TRIGSCORE14];
                [userDefaults setFloat:Score11 forKey:TRIGSCORE11];
                [userDefaults setFloat:Score12 forKey:TRIGSCORE12];
                [userDefaults setFloat:Score13 forKey:TRIGSCORE13];
                [userDefaults setFloat:Score14 forKey:TRIGSCORE15];
                [userDefaults setFloat:Score15 forKey:TRIGSCORE16];
                [userDefaults setFloat:Score16 forKey:TRIGSCORE17];
                [userDefaults setFloat:Score17 forKey:TRIGSCORE18];
                [userDefaults setObject:customName1.text forKey:TRIGNAME9];
                [userDefaults setObject:customName2.text forKey:TRIGNAME10];
                [userDefaults setObject:customName3.text forKey:TRIGNAME11];
                [userDefaults setObject:customName4.text forKey:TRIGNAME12];
                [userDefaults setObject:customName5.text forKey:TRIGNAME13];
                [userDefaults setObject:customName6.text forKey:TRIGNAME14];
                [userDefaults setObject:customName7.text forKey:TRIGNAME15];
                [userDefaults setObject:customName8.text forKey:TRIGNAME16];
                
            }
            else if (Score10 < Score15 || Score15 == 0)
            {
                customName5.text = theName.text;
                [userDefaults setFloat:Score10 forKey:TRIGSCORE15];
                [userDefaults setFloat:Score11 forKey:TRIGSCORE11];
                [userDefaults setFloat:Score12 forKey:TRIGSCORE12];
                [userDefaults setFloat:Score13 forKey:TRIGSCORE13];
                [userDefaults setFloat:Score14 forKey:TRIGSCORE14];
                [userDefaults setFloat:Score15 forKey:TRIGSCORE16];
                [userDefaults setFloat:Score16 forKey:TRIGSCORE17];
                [userDefaults setFloat:Score17 forKey:TRIGSCORE18];
                [userDefaults setObject:customName1.text forKey:TRIGNAME9];
                [userDefaults setObject:customName2.text forKey:TRIGNAME10];
                [userDefaults setObject:customName3.text forKey:TRIGNAME11];
                [userDefaults setObject:customName4.text forKey:TRIGNAME12];
                [userDefaults setObject:customName5.text forKey:TRIGNAME13];
                [userDefaults setObject:customName6.text forKey:TRIGNAME14];
                [userDefaults setObject:customName7.text forKey:TRIGNAME15];
                [userDefaults setObject:customName8.text forKey:TRIGNAME16];
                
            }
            else if (Score10 < Score16 || Score16 == 0)
            {
                customName6.text = theName.text;
                [userDefaults setFloat:Score10 forKey:TRIGSCORE16];
                [userDefaults setFloat:Score11 forKey:TRIGSCORE11];
                [userDefaults setFloat:Score12 forKey:TRIGSCORE12];
                [userDefaults setFloat:Score13 forKey:TRIGSCORE13];
                [userDefaults setFloat:Score14 forKey:TRIGSCORE14];
                [userDefaults setFloat:Score15 forKey:TRIGSCORE15];
                [userDefaults setFloat:Score16 forKey:TRIGSCORE17];
                [userDefaults setFloat:Score17 forKey:TRIGSCORE18];
                [userDefaults setObject:customName1.text forKey:TRIGNAME9];
                [userDefaults setObject:customName2.text forKey:TRIGNAME10];
                [userDefaults setObject:customName3.text forKey:TRIGNAME11];
                [userDefaults setObject:customName4.text forKey:TRIGNAME12];
                [userDefaults setObject:customName5.text forKey:TRIGNAME13];
                [userDefaults setObject:customName6.text forKey:TRIGNAME14];
                [userDefaults setObject:customName7.text forKey:TRIGNAME15];
                [userDefaults setObject:customName8.text forKey:TRIGNAME16];
                
            }
            else if (Score10 < Score17 || Score17 == 0)
            {
                customName7.text = theName.text;
                [userDefaults setFloat:Score10 forKey:TRIGSCORE17];
                [userDefaults setFloat:Score11 forKey:TRIGSCORE11];
                [userDefaults setFloat:Score12 forKey:TRIGSCORE12];
                [userDefaults setFloat:Score13 forKey:TRIGSCORE13];
                [userDefaults setFloat:Score14 forKey:TRIGSCORE14];
                [userDefaults setFloat:Score15 forKey:TRIGSCORE15];
                [userDefaults setFloat:Score16 forKey:TRIGSCORE16];
                [userDefaults setFloat:Score17 forKey:TRIGSCORE18];
                [userDefaults setObject:customName1.text forKey:TRIGNAME9];
                [userDefaults setObject:customName2.text forKey:TRIGNAME10];
                [userDefaults setObject:customName3.text forKey:TRIGNAME11];
                [userDefaults setObject:customName4.text forKey:TRIGNAME12];
                [userDefaults setObject:customName5.text forKey:TRIGNAME13];
                [userDefaults setObject:customName6.text forKey:TRIGNAME14];
                [userDefaults setObject:customName7.text forKey:TRIGNAME15];
                [userDefaults setObject:customName8.text forKey:TRIGNAME16];
                
            }
            else
            {
                customName8.text = theName.text;
                [userDefaults setFloat:Score forKey:TRIGSCORE18];
                [userDefaults setFloat:Score2 forKey:TRIGSCORE11];
                [userDefaults setFloat:Score3 forKey:TRIGSCORE12];
                [userDefaults setFloat:Score4 forKey:TRIGSCORE13];
                [userDefaults setFloat:Score5 forKey:TRIGSCORE14];
                [userDefaults setFloat:Score6 forKey:TRIGSCORE15];
                [userDefaults setFloat:Score7 forKey:TRIGSCORE16];
                [userDefaults setFloat:Score8 forKey:TRIGSCORE17];
                [userDefaults setObject:customName1.text forKey:TRIGNAME9];
                [userDefaults setObject:customName2.text forKey:TRIGNAME10];
                [userDefaults setObject:customName3.text forKey:TRIGNAME11];
                [userDefaults setObject:customName4.text forKey:TRIGNAME12];
                [userDefaults setObject:customName5.text forKey:TRIGNAME13];
                [userDefaults setObject:customName6.text forKey:TRIGNAME14];
                [userDefaults setObject:customName7.text forKey:TRIGNAME15];
                [userDefaults setObject:customName8.text forKey:TRIGNAME16];
            }
		}
	}
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
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
    self.navigationItem.title = @"High Scores Custom";
	NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
	Score10 = [userDefaults floatForKey:TRIGSCORE10];
	Score11 = [userDefaults floatForKey:TRIGSCORE11];
	Score12 = [userDefaults floatForKey:TRIGSCORE12];
	Score13 = [userDefaults floatForKey:TRIGSCORE13];
	Score14 = [userDefaults floatForKey:TRIGSCORE14];
	Score15 = [userDefaults floatForKey:TRIGSCORE15];
	Score16 = [userDefaults floatForKey:TRIGSCORE16];
	Score17 = [userDefaults floatForKey:TRIGSCORE17];
	Score18 = [userDefaults floatForKey:TRIGSCORE18];
	Names9 = [userDefaults stringForKey:TRIGNAME9];
	Names10 = [userDefaults stringForKey:TRIGNAME10];
	Names11 = [userDefaults stringForKey:TRIGNAME11];
	Names12 = [userDefaults stringForKey:TRIGNAME12];
	Names13 = [userDefaults stringForKey:TRIGNAME13];
	Names14 = [userDefaults stringForKey:TRIGNAME14];
	Names15 = [userDefaults stringForKey:TRIGNAME15];
	Names16 = [userDefaults stringForKey:TRIGNAME16];
	
	TheScore10 = [[NSString alloc] initWithFormat:@"%1.2f", Score10];
	TheScore11 = [[NSString alloc] initWithFormat:@"%1.2f", Score11];
	TheScore12 = [[NSString alloc] initWithFormat:@"%1.2f", Score12];
	TheScore13 = [[NSString alloc] initWithFormat:@"%1.2f", Score13];
	TheScore14 = [[NSString alloc] initWithFormat:@"%1.2f", Score14];
	TheScore15 = [[NSString alloc] initWithFormat:@"%1.2f", Score15];
	TheScore16 = [[NSString alloc] initWithFormat:@"%1.2f", Score16];
	TheScore17 = [[NSString alloc] initWithFormat:@"%1.2f", Score17];
	TheScore18 = [[NSString alloc] initWithFormat:@"%1.2f", Score18];
	
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
		
		if ((Score10 < Score11) || (Score11 == 0))
		{
			customScore1.text = TheScore10;
			customScore2.text = TheScore11;
			customScore3.text = TheScore12;
			customScore4.text = TheScore13;
			customScore5.text = TheScore14;
			customScore6.text = TheScore15;
			customScore7.text = TheScore16;
			customScore8.text = TheScore17;
			
			customName2.text = Names9;
			customName3.text = Names10;
			customName4.text = Names11;
			customName5.text = Names12;
			customName6.text = Names13;
			customName7.text = Names14;
			customName8.text = Names15;
		}
		else if ((Score10 < Score12) || (Score12 == 0))
		{
			customScore1.text = TheScore11;
			customScore2.text = TheScore10;
			customScore3.text = TheScore12;
			customScore4.text = TheScore13;
			customScore5.text = TheScore14;
			customScore6.text = TheScore15;
			customScore7.text = TheScore16;
			customScore8.text = TheScore17;
			
			customName1.text = Names9;
			customName3.text = Names10;
			customName4.text = Names11;
			customName5.text = Names12;
			customName6.text = Names13;
			customName7.text = Names14;
			customName8.text = Names15;
			
		}
		else if ((Score10 < Score13) || (Score13 == 0))
		{
			customScore1.text = TheScore11;
			customScore2.text = TheScore12;
			customScore3.text = TheScore10;
			customScore4.text = TheScore13;
			customScore5.text = TheScore14;
			customScore6.text = TheScore15;
			customScore7.text = TheScore16;
			customScore8.text = TheScore17;
			
			customName1.text = Names9;
			customName2.text = Names10;
			customName4.text = Names11;
			customName5.text = Names12;
			customName6.text = Names13;
			customName7.text = Names14;
			customName8.text = Names15;
			
		}
		else if ((Score10 < Score14) || (Score14 == 0))
		{
			customScore1.text = TheScore11;
			customScore2.text = TheScore12;
			customScore3.text = TheScore13;
			customScore4.text = TheScore10;
			customScore5.text = TheScore14;
			customScore6.text = TheScore15;
			customScore7.text = TheScore16;
			customScore8.text = TheScore17;
			
			customName1.text = Names9;
			customName2.text = Names10;
			customName3.text = Names11;
			customName5.text = Names12;
			customName6.text = Names13;
			customName7.text = Names14;
			customName8.text = Names15;
		}
		else if ((Score10 < Score15) || (Score15 == 0))
		{
			customScore1.text = TheScore11;
			customScore2.text = TheScore12;
			customScore3.text = TheScore13;
			customScore4.text = TheScore14;
			customScore5.text = TheScore10;
			customScore6.text = TheScore15;
			customScore7.text = TheScore16;
			customScore8.text = TheScore17;
			
			customName1.text = Names9;
			customName2.text = Names10;
			customName3.text = Names11;
			customName4.text = Names12;
			customName6.text = Names13;
			customName7.text = Names14;
			customName8.text = Names15;
		}
		else if ((Score10 < Score16) || (Score16 == 0))
		{
			customScore1.text = TheScore11;
			customScore2.text = TheScore12;
			customScore3.text = TheScore13;
			customScore4.text = TheScore14;
			customScore5.text = TheScore15;
			customScore6.text = TheScore10;
			customScore7.text = TheScore16;
			customScore8.text = TheScore17;
			
			customName1.text = Names9;
			customName2.text = Names10;
			customName3.text = Names11;
			customName4.text = Names12;
			customName5.text = Names13;
			customName7.text = Names14;
			customName8.text = Names15;
			
		}
		else if ((Score10 < Score17) || (Score17 == 0))
		{
			customScore1.text = TheScore11;
			customScore2.text = TheScore12;
			customScore3.text = TheScore13;
			customScore4.text = TheScore14;
			customScore5.text = TheScore15;
			customScore6.text = TheScore16;
			customScore7.text = TheScore10;
			customScore8.text = TheScore17;
			
			customName1.text = Names9;
			customName2.text = Names10;
			customName3.text = Names11;
			customName4.text = Names12;
			customName5.text = Names13;
			customName6.text = Names14; 
			customName8.text = Names15;
		}
		else 
		{
			customScore1.text = TheScore11;
			customScore2.text = TheScore12;
			customScore3.text = TheScore13;
			customScore4.text = TheScore14;
			customScore5.text = TheScore15;
			customScore6.text = TheScore16;
			customScore7.text = TheScore17;
			customScore8.text = TheScore10;
			
			customName1.text = Names9;
			customName2.text = Names10;
			customName3.text = Names11;
			customName4.text = Names12;
			customName5.text = Names13;
			customName6.text = Names14; 
			customName7.text = Names15;
		}
	}
	else 
	{
		customScore1.text = TheScore11;
		customScore2.text = TheScore12;
		customScore3.text = TheScore13;
		customScore4.text = TheScore14;
		customScore5.text = TheScore15;
		customScore6.text = TheScore16;
		customScore7.text = TheScore17;
		customScore8.text = TheScore18;
		customName1.text = Names9;
		customName2.text = Names10;
		customName3.text = Names11;
		customName4.text = Names12;
		customName5.text = Names13;
		customName6.text = Names14;
		customName7.text = Names15;
		customName8.text = Names16;
	}
	
	if ([customScore8.text isEqualToString:@"0.00"])
	{
		customScore8.text = @"";
	}
	if ([customScore1.text isEqualToString:@"0.00"])
	{
		customScore1.text = @"";
	}
	if ([customScore2.text isEqualToString:@"0.00"])
	{
		customScore2.text = @"";
	}
	if ([customScore3.text isEqualToString:@"0.00"])
	{
		customScore3.text = @"";
	}
	if ([customScore4.text isEqualToString:@"0.00"])
	{
		customScore4.text = @"";
	}
	if ([customScore5.text isEqualToString:@"0.00"])
	{
		customScore5.text = @"";
	}
	if ([customScore6.text isEqualToString:@"0.00"])
	{
		customScore6.text = @"";
	}
	if ([customScore7.text isEqualToString:@"0.00"])
	{
		customScore7.text = @"";
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
