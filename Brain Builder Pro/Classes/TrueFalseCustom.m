//
//  TrueFalseCustom.m
//  Brain Builder Pro
//
//  Created by Fred Kneeland on 8/21/11.
//  Copyright 2011 Blade Linux LLC. All rights reserved.
//

#import "TrueFalseCustom.h"
#import "HighScore.h"

@implementation TrueFalseCustom
@synthesize highScoreCustom;
@synthesize sign1;
@synthesize sign2;
@synthesize sign3;
@synthesize sign4;
@synthesize sign5;
@synthesize result1;
@synthesize result2;
@synthesize number1;
@synthesize number2;
@synthesize number3;
@synthesize number4;
@synthesize number5;
@synthesize number6;
@synthesize number7;
@synthesize number8;
@synthesize number9;
@synthesize number10;
@synthesize number11;
@synthesize number12;
@synthesize number13;
@synthesize number14;
@synthesize number15;
@synthesize yep;
@synthesize nope;
@synthesize equals;
@synthesize equals2;


-(void) AddOn
{
	adds = TRUE;
}
-(void) AddOff
{
	adds = FALSE;
}
-(void) subOn
{
	subtracts = TRUE;
}
-(void) subOff
{
	subtracts = FALSE;
}
-(void) timesOn
{
	timeses = TRUE;
}
-(void) timesOff 
{
	timeses = FALSE;
}
-(void) divideOn
{
	divides = TRUE;
}
-(void) divideOff
{
	divides = FALSE;
}
-(void) numb1
{
	number = 1;
}
-(void) numb2
{
	number = 1;
}
-(void) numb3
{
	number = 3;
}
-(void) numb4
{
	number = 4;
}
-(void) numb5
{
	number = 5;
}
-(void) numb6
{
	number = 6;
}
-(void) numb7
{
	number = 7;
}
-(void) numb8
{
	number = 8;
}
-(void) numb9
{
	number = 9;
}
-(void) numb10
{
	number = 10;
}
-(void) numb11
{
	number = 11;
}
-(void) numb12
{
	number = 12;
}
-(void) numb13
{
	number = 13;
}
-(void) numb14
{
	number = 14;
}
-(void) numb15
{
	number = 15;
}
-(void) numb16
{
	number = 16;
}
-(void) numb17
{
	number = 17;
}
-(void) numb18
{
	number = 18;
}
-(void) numb19
{
	number = 19;
}
-(void) numb20
{
	number = 20;
}
-(void) numb21
{
	number = 21;
}
-(void) numb22
{
	number = 22;
}
-(void) numb23
{
	number = 23;
}
-(void) numb24
{
	number = 24;
}
-(void) numb25
{
	number = 25;
}
-(void) segment1
{
	selectedSegment = 1;
}
-(void) segment2
{
	selectedSegment = 2;
}
-(void) segment3
{
	selectedSegment = 3;
}
-(void) segment4
{
	selectedSegment = 4;
}

-(void) setUp
{
	startTime = [[NSDate alloc] init];
	totalCorrect = 0;
	totalInCorrect = 0;
	fun = 1;
	
	sign1.text = @"";
	sign2.text = @"";
	result1.text = @"";
	result2.text = @"";
	number1.text = @"";
	number2.text = @"";
	number3.text = @"";
	number4.text = @"";
	number11.text = @"";
	number12.text = @"";
	equals.text = @"";
	equals2.text = @"";
	
	numb5 = arc4random()%number + 1;
	numb6 = arc4random()%number + 1;
	numb7 = arc4random()%number + 1;
	numb8 = arc4random()%number + 1;
	numb9 = arc4random()%number + 1;
	numb10 = arc4random()%number + 1;
	
	NUMBER5 = [[NSString alloc] initWithFormat:@"%i", numb5];
	NUMBER6 = [[NSString alloc] initWithFormat:@"%i", numb6];
	NUMBER7 = [[NSString alloc] initWithFormat:@"%i", numb7];
	NUMBER8 = [[NSString alloc] initWithFormat:@"%i", numb8];
	NUMBER9 = [[NSString alloc] initWithFormat:@"%i", numb9];
	NUMBER10 = [[NSString alloc] initWithFormat:@"%i", numb10];
	
	number5.text = NUMBER5;
	number6.text = NUMBER6;
	number7.text = NUMBER7;
	number8.text = NUMBER8;
	number9.text = NUMBER9;
	number10.text = NUMBER10;
	
	SIGN3 = arc4random()%4;
	SIGN4 = arc4random()%4;
	SIGN5 = arc4random()%4;
	
	if (SIGN3 == 0)
	{
		sign3.text = SIGNS1;
	}
	else if (SIGN3 == 1)
	{
		sign3.text = SIGNS2;
	}
	else if (SIGN3 == 2)
	{
		sign3.text = SIGNS3;
	}
	else 
	{
		sign3.text = SIGNS4;
	}
	
	if ([sign3.text isEqualToString:@"-"] && (numb6 > numb5))
	{
		numbSpecial = numb5;
		numb5 = numb6;
		numb6 = numbSpecial;
		NUMBER5 = [[NSString alloc] initWithFormat:@"%i", numb5];
		NUMBER6 = [[NSString alloc] initWithFormat:@"%i", numb6];
		number5.text = NUMBER5;
		number6.text = NUMBER6;
	}
	if ([sign3.text isEqualToString:@"/"])
	{
		answr2 = (float)numb5 / (float)numb6;
		divide1 = answr2;
		division1 = answr2;
		if ((divide1 * 10) == (division1 * 10))
		{
		}
		else 
		{
			while (TRUE) 
			{
				numb5 = arc4random()%number + 1;
				numb6 = arc4random()%number + 1;
				answr2 = (float)numb5 / (float)numb6;
				divide1 = answr2;
				division1 = answr2;
				if ((divide1 * 10) == (division1 * 10))
				{
					NUMBER5 = [[NSString alloc ]initWithFormat:@"%i", numb5];
					NUMBER6 = [[NSString alloc]initWithFormat:@"%i", numb6];
					number5.text = NUMBER5;
					number6.text = NUMBER6;
					break;
				}
			}
		}
	}	
	
	if (SIGN4 == 0)
	{
		sign4.text = SIGNS1;
	}
	else if (SIGN4 == 1)
	{
		sign4.text = SIGNS2;
	}
	else if (SIGN4 == 2)
	{
		sign4.text = SIGNS3;
	}
	else 
	{
		sign4.text = SIGNS4;
	}
	
	if ([sign4.text isEqualToString:@"-"] && (numb8 > numb7))
	{
		numbSpecial = numb7;
		numb7 = numb8;
		numb8 = numbSpecial;
		NUMBER7 = [[NSString alloc] initWithFormat:@"%i", numb7];
		NUMBER8 = [[NSString alloc] initWithFormat:@"%i", numb8];
		number7.text = NUMBER7;
		number8.text = NUMBER8;
	}
	if ([sign4.text isEqualToString:@"/"])
	{
		answr2 = (float)numb7 / (float)numb8;
		divide1 = answr2;
		division1 = answr2;
		if ((divide1 * 10) == (division1 * 10))
		{
		}
		else 
		{
			while (TRUE) 
			{
				numb7 = arc4random()%number + 1;
				numb8 = arc4random()%number + 1;
				answr2 = (float)numb7 / (float)numb8;
				divide1 = answr2;
				division1 = answr2;
				if ((divide1 * 10) == (division1 * 10))
				{
					NUMBER7 = [[NSString alloc ]initWithFormat:@"%i", numb7];
					NUMBER8 = [[NSString alloc]initWithFormat:@"%i", numb8];
					number7.text = NUMBER7;
					number8.text = NUMBER8;
					break;
				}
			}
		}
	}	
	
	if (SIGN5 == 0)
	{
		sign5.text = SIGNS1;
	}
	else if (SIGN5 == 1)
	{
		sign5.text = SIGNS2;
	}
	else if (SIGN5 == 2)
	{
		sign5.text = SIGNS3;
	}
	else 
	{
		sign5.text = SIGNS4;
	}
	
	if ([sign5.text isEqualToString:@"-"] && (numb10 > numb9))
	{
		numbSpecial = numb9;
		numb9 = numb10;
		numb10 = numbSpecial;
		NUMBER9 = [[NSString alloc] initWithFormat:@"%i", numb9];
		NUMBER10 = [[NSString alloc] initWithFormat:@"%i", numb10];
		number9.text = NUMBER9;
		number10.text = NUMBER10;
	}
	if ([sign5.text isEqualToString:@"/"])
	{
		answr2 = (float)numb9 / (float)numb10;
		divide1 = answr2;
		division1 = answr2;
		if ((divide1 * 10) == (division1 * 10))
		{
		}
		else 
		{
			while (TRUE) 
			{
				numb9 = arc4random()%number + 1;
				numb10 = arc4random()%number + 1;
				answr2 = (float)numb9 / (float)numb10;
				divide1 = answr2;
				division1 = answr2;
				if ((divide1 * 10) == (division1 * 10))
				{
					NUMBER9 = [[NSString alloc ]initWithFormat:@"%i", numb9];
					NUMBER10 = [[NSString alloc]initWithFormat:@"%i", numb10];
					number9.text = NUMBER9;
					number10.text = NUMBER10;
					break;
				}
			}
		}
	}	
	
	if ([sign3.text isEqualToString:@"+"])
	{
		answr = numb5 + numb6;
	}
	else if ([sign3.text isEqualToString:@"-"])
	{
		answr = numb5 - numb6;
	}
	else if ([sign3.text isEqualToString:@"x"])
	{
		answr = numb5 * numb6;
	}
	else 
	{
		answr = (float)numb5 / numb6;
	}
	
	TrueOrFalse = arc4random()%2;
	
	// This determines whether the problem will be right or wrong
	
	if (TrueOrFalse == 0)
	{
		// this variable is stored and when the user presses a button it will say whether they were right or wrong
		right = 1;
		if ([sign3.text isEqualToString:@"+"])
		{
			numb13 = numb5 + numb6;
		}
		else if ([sign3.text isEqualToString:@"-"])
		{
			numb13 = numb5 - numb6;
		}
		else if ([sign3.text isEqualToString:@"x"])
		{
			numb13 =  numb5 * numb6;
		}
		else if ([sign3.text isEqualToString:@"/"])
		{
			numb13 = (float)numb5 / numb6;
		}
	}
	else if (TrueOrFalse == 1)
	{
		right = 2;
		if ([sign3.text isEqualToString:@"+"])
		{
			numb13 = numb5 + numb6 - arc4random()%15 + 1;
		}
		else if ([sign3.text isEqualToString:@"-"])
		{
			numb13 = numb5 - numb6 + (arc4random()%15 + 1);
		}
		else if ([sign3.text isEqualToString:@"x"])
		{
			numb13 =  numb5 * numb6 - arc4random()%15 + 1;
		}
		else if ([sign3.text isEqualToString:@"/"])
		{
			numb13 = (float)numb5 / numb6 + (arc4random()%15 + 1);
		}
		
	}
	TrueOrFalse = arc4random()%2;
	
	// This determines whether the problem will be right or wrong
	
	if (TrueOrFalse == 0)
	{
		// this variable is stored and when the user presses a button it will say whether they were right or wrong
		right2 = 1;
		if ([sign4.text isEqualToString:@"+"])
		{
			numb14 = numb7 + numb8;
		}
		else if ([sign4.text isEqualToString:@"-"])
		{
			numb14 = numb7 - numb8;
		}
		else if ([sign4.text isEqualToString:@"x"])
		{
			numb14 =  numb7 * numb8;
		}
		else if ([sign4.text isEqualToString:@"/"])
		{
			numb14 = (float)numb7 / numb8;
		}
	}
	else if (TrueOrFalse == 1)
	{
		right2 = 2;
		if ([sign4.text isEqualToString:@"+"])
		{
			numb14 = numb7 + numb8 + arc4random()%15 + 1;
		}
		else if ([sign4.text isEqualToString:@"-"])
		{
			numb14 = numb7 - numb8 - (arc4random()%15 + 1);
		}
		else if ([sign4.text isEqualToString:@"x"])
		{
			numb14 =  numb7 * numb8 + arc4random()%15 + 1;
		}
		else if ([sign4.text isEqualToString:@"/"])
		{
			numb14 = (float)numb7 / numb8 - (arc4random()%15 + 1);
		}
		
	}
	
	TrueOrFalse = arc4random()%2;
	
	// This determines whether the problem will be right or wrong
	
	if (TrueOrFalse == 0)
	{
		// this variable is stored and when the user presses a button it will say whether they were right or wrong
		right3 = 1;
		if ([sign5.text isEqualToString:@"+"])
		{
			numb15 = numb9 + numb10;
		}
		else if ([sign5.text isEqualToString:@"-"])
		{
			numb15 = numb9 - numb10;
		}
		else if ([sign5.text isEqualToString:@"x"])
		{
			numb15 =  numb9 * numb10;
		}
		else if ([sign5.text isEqualToString:@"/"])
		{
			numb15 = (float)numb9 / numb10;
		}
	}
	else if (TrueOrFalse == 1)
	{
		right3 = 2;
		if ([sign5.text isEqualToString:@"+"])
		{
			numb15 = numb9 + numb10 + (arc4random()%15 + 1);
		}
		else if ([sign5.text isEqualToString:@"-"])
		{
			numb15 = numb9 - numb10 - (arc4random()%15 + 1);
		}
		else if ([sign5.text isEqualToString:@"x"])
		{
			numb15 =  numb9 * numb10 + arc4random()%15 + 1;
		}
		else if ([sign5.text isEqualToString:@"/"])
		{
			numb15 = (float)numb9 / numb10 - (arc4random()%15 + 1);
		}
		
	}
	
	if ([sign3.text isEqualToString:@"/"])
	{
		NUMBER15 = [[NSString alloc] initWithFormat:@"%1.0f", numb13];

	}
	else 
	{
		NUMBER15 = [[NSString alloc] initWithFormat:@"%1.0f", numb13];

	}
	if ([sign4.text isEqualToString:@"/"])
	{
		NUMBER16 = [[NSString alloc] initWithFormat:@"%1.0f", numb14];

	}
	else 
	{
		NUMBER16 = [[NSString alloc] initWithFormat:@"%1.0f", numb14];

	}
	if ([sign5.text isEqualToString:@"/"])
	{
		NUMBER17 = [[NSString alloc] initWithFormat:@"%1.0f", numb15];
	}
	else 
	{
		NUMBER17 = [[NSString alloc] initWithFormat:@"%1.0f", numb15];
	}

	number13.text = NUMBER15;
	number14.text = NUMBER16;
	number15.text = NUMBER17;
	
}

-(IBAction) Correct:(id)sender
{
	
	[self createProblem];
	if (right == 1)
	{ 
		result2.text = @"Bingo!";
		result2.textColor = [UIColor greenColor];
		totalCorrect++;
	}
	else 
	{
		result2.text = @"Oops";
		result2.textColor = [UIColor redColor];
		totalInCorrect++;
	}
	[self createProblem2];
}

-(IBAction) InCorrect:(id)sender
{
	[self createProblem];
	if (right == 2)
	{ 
		result2.text = @"Bingo!";
		result2.textColor = [UIColor greenColor];
		totalCorrect++;
	}
	else 
	{
		result2.text = @"Oops";
		result2.textColor = [UIColor redColor];
		totalInCorrect++;
	}
	[self createProblem2];
}

-(void) createProblem
{
		number11.text = number12.text;
		number12.text = number13.text;
		number13.text = number14.text;
		number14.text = number15.text;
		NewSign1 = sign2.text;
		NewSign2 = sign3.text;
		NewSign3 = sign4.text;
		NewSign4 = sign5.text;
		sign1.text = NewSign1;
		sign2.text = NewSign2;
		sign3.text = NewSign3;
		sign4.text = NewSign4;
		NUMBER3 = number3.text;
		NUMBER4 = number4.text;
		NUMBER5 = number5.text;
		NUMBER6 = number6.text;
		NUMBER7 = number7.text;
		NUMBER8 = number8.text;
		NUMBER9 = number9.text;
		NUMBER10 = number10.text;
		result1.text = result2.text;
	    equals2.text = @"=";
		if (fun == 2)
		{
			equals.text = @"=";
		}
		if ([result1.text isEqualToString:@"Bingo!"])
		{
			result1.textColor = [UIColor greenColor];
		}
		else
		{
			result1.textColor = [UIColor redColor];
		}
		number1.text = NUMBER3;
		number2.text = NUMBER4;
		number3.text = NUMBER5;
		number4.text = NUMBER6;
		number5.text = NUMBER7;
		number6.text = NUMBER8;
		number7.text = NUMBER9;
		number8.text = NUMBER10;
	
		numb9 = arc4random()%number;
		numb10 = arc4random()%number + 1;
		NUMBER9 = [[NSString alloc] initWithFormat:@"%i", numb9];
		NUMBER10 = [[NSString alloc] initWithFormat:@"%i", numb10];
		number9.text = NUMBER9;
		number10.text = NUMBER10;
		SIGN5 = arc4random()%4;
	
		if (SIGN5 == 0)
		{
			sign5.text = SIGNS1;
		}
		else if (SIGN5 == 1)
		{
			sign5.text = SIGNS2;
		}
		else if (SIGN5 == 2)
		{
			sign5.text = SIGNS3;
		}
	else 
	{
		sign5.text = SIGNS4;
	}
	if ([sign5.text isEqualToString:@"-"] && (numb10 > numb9))
	{
		numbSpecial = numb9;
		numb9 = numb10;
		numb10 = numbSpecial;
		NUMBER9 = [[NSString alloc] initWithFormat:@"%i", numb9];
		NUMBER10 = [[NSString alloc] initWithFormat:@"%i", numb10];
		number9.text = NUMBER9;
		number10.text = NUMBER10;
	}
	if ([sign5.text isEqualToString:@"/"])
	{
		answr2 = (float)numb9 / (float)numb10;
		divide1 = answr2;
		division1 = answr2;
		if ((divide1 * 10) == (division1 * 10))
		{
		}
		else 
		{
			while (TRUE) 
			{
				numb9 = arc4random()%number + 1;
				numb10 = arc4random()%number + 1;
				answr2 = (float)numb9 / (float)numb10;
				divide1 = answr2;
				division1 = answr2;
				if ((divide1 * 10) == (division1 * 10))
				{
					NUMBER9 = [[NSString alloc ]initWithFormat:@"%i", numb9];
					NUMBER10 = [[NSString alloc]initWithFormat:@"%i", numb10];
					number9.text = NUMBER9;
					number10.text = NUMBER10;
					break;
				}
			}
		}
	}
}

-(void) createProblem2
{
	right = right2;
	right2 = right3;
	TrueOrFalse = arc4random()%2;
	
	// This determines whether the problem will be right or wrong
	
	if (TrueOrFalse == 0)
	{
		// this variable is stored and when the user presses a button it will say whether they were right or wrong
		right3 = 1;
		if ([sign5.text isEqualToString:@"+"])
		{
			numb15 = numb9 + numb10;
		}
		else if ([sign5.text isEqualToString:@"-"])
		{
			numb15 = numb9 - numb10;
		}
		else if ([sign5.text isEqualToString:@"x"])
		{
			numb15 =  numb9 * numb10;
		}
		else if ([sign5.text isEqualToString:@"/"])
		{
			numb15 = (float)numb9 / numb10;
		}
	}
	else if (TrueOrFalse == 1)
	{
		right3 = 2;
		if ([sign5.text isEqualToString:@"+"])
		{
			numb15 = numb9 + numb10 + arc4random()%15 + 1;
		}
		else if ([sign5.text isEqualToString:@"-"])
		{
			numb15 = numb9 - numb10 + (arc4random()%15 + 1);
		}
		else if ([sign5.text isEqualToString:@"x"])
		{
			numb15 =  numb9 * numb10 - arc4random()%15 + 1;
		}
		else if ([sign5.text isEqualToString:@"/"])
		{
			numb15 = (float)numb9 / numb10 + (arc4random()%15 + 1);
		}
		
	}
	
	if ([sign5.text isEqualToString:@"/"])
	{
		NUMBER17 = [[NSString alloc] initWithFormat:@"%1.0f", numb15];
	}
	else 
	{
		NUMBER17 = [[NSString alloc] initWithFormat:@"%1.0f", numb15];
	}
	
	number15.text = NUMBER17;
	fun++;
	
	if (fun > (selectedSegment * 25))
	{
		NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
		UIAlertView *alertDialog;
		
		// have variable totalHighScore equal to a saved value
		if ([userDefaults floatForKey:SCORE9] > 0)
		{
			totalHighScore = [userDefaults floatForKey:SCORE9];
		}
		else {
			totalHighScore = 10909090909.00;
		}
		
		
		endTime = [[NSDate alloc] init];
		
		elapsedTime = [startTime timeIntervalSinceDate:endTime];
		
		finalScore = (6 * totalInCorrect) + fabs(elapsedTime);
		
		if (selectedSegment == 1)
		{
			[userDefaults setFloat:finalScore forKey:SCORE];
		}
		else if (selectedSegment == 2)
		{
			finalScore = finalScore / 2;
			[userDefaults setFloat:finalScore forKey:SCORE];
		}
		else if (selectedSegment == 3)
		{
			finalScore = finalScore / 3;
			[userDefaults setFloat:finalScore forKey:SCORE];
		}
		else {
			finalScore = finalScore / 4;
			[userDefaults setFloat:finalScore forKey:SCORE];
		}
		
		if (finalScore < totalHighScore)
		{
			
			
			numbRight = [[NSString alloc] initWithFormat:@"you got %1.0f right, and missed %i in %1.2f seconds!  Your final score was %1.2f!!", totalCorrect, totalInCorrect, fabs(elapsedTime), finalScore];
			
			alertDialog = [[UIAlertView alloc]
						   initWithTitle:@"New High Score!!" 
						   message:numbRight
						   delegate:self
						   cancelButtonTitle:@"Back"
						   otherButtonTitles:@"Again", @"Save Score", nil];
			[alertDialog show];
			[alertDialog release];
		}
		else {
			numbRight = [[NSString alloc] initWithFormat:@"you got %1.0f right, and missed %i in %1.2f seconds!  Your final score was %1.2f!!", totalCorrect, totalInCorrect, fabs(elapsedTime), finalScore];
			
			alertDialog = [[UIAlertView alloc]
						   initWithTitle:@"Congragulations!!" 
						   message:numbRight
						   delegate:self
						   cancelButtonTitle:@"Back"
						   otherButtonTitles:@"Again", nil];
			[alertDialog show];
			[alertDialog release];
		}
		
		
	}
	
	
}

-(void) alertView:(UIAlertView *)alertView
clickedButtonAtIndex:(NSInteger)buttonIndex
{
	buttonTitle = [alertView buttonTitleAtIndex:buttonIndex];
	if ([buttonTitle isEqualToString:@"Back"])
	{
		[self.navigationController popViewControllerAnimated:YES];
	}
	else if ([buttonTitle isEqualToString:@"Save Score"])
	{
		[highScoreCustom alertOn];
        [highScoreCustom highScoreQuick];
		[self.view insertSubview:highScoreCustom.view atIndex:223];
	}
	else 
	{
		[self setUp];
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
	self.navigationItem.title = @"True or False";
	fun = 1;
	if (adds && subtracts && timeses && divides)
	{
		SIGNS1 = @"+";
		SIGNS2 = @"-";
		SIGNS3 = @"x";
		SIGNS4 = @"/";
	}
	else if (adds && subtracts && timeses)
	{
		SIGNS1 = @"+";
		SIGNS2 = @"-";
		SIGNS3 = @"x";
		SIGNS4 = @"+";
	}
	else if (adds && subtracts && divides)
	{
		SIGNS1 = @"+";
		SIGNS2 = @"-";
		SIGNS3 = @"+";
		SIGNS4 = @"/";
	}
	else if (adds && timeses && divides)
	{
		SIGNS1 = @"+";
		SIGNS2 = @"+";
		SIGNS3 = @"x";
		SIGNS4 = @"/";
	}
	else if (subtracts && divides && timeses)
	{
		SIGNS1 = @"x";
		SIGNS2 = @"-";
		SIGNS3 = @"x";
		SIGNS4 = @"/";
	}
	else if (adds && subtracts)
	{
		SIGNS1 = @"+";
		SIGNS2 = @"-";
		SIGNS3 = @"+";
		SIGNS4 = @"-";
	}
	else if (adds && timeses)
	{
		SIGNS1 = @"+";
		SIGNS2 = @"+";
		SIGNS3 = @"x";
		SIGNS4 = @"x";
	}
	else if (adds && divides)
	{
		SIGNS1 = @"+";
		SIGNS2 = @"/";
		SIGNS3 = @"+";
		SIGNS4 = @"/";
	}
	else if (subtracts && timeses)
	{
		SIGNS1 = @"x";
		SIGNS2 = @"-";
		SIGNS3 = @"x";
		SIGNS4 = @"-";
	}
	else if (subtracts && divides)
	{
		SIGNS1 = @"/";
		SIGNS2 = @"-";
		SIGNS3 = @"-";
		SIGNS4 = @"/";
	}
	else if (timeses && divides)
	{
		SIGNS1 = @"x";
		SIGNS2 = @"/";
		SIGNS3 = @"x";
		SIGNS4 = @"/";
	}
	else if (adds)
	{
		SIGNS1 = @"+";
		SIGNS2 = @"+";
		SIGNS3 = @"+";
		SIGNS4 = @"+";
	}
	else if (timeses)
	{
		SIGNS1 = @"x";
		SIGNS2 = @"x";
		SIGNS3 = @"x";
		SIGNS4 = @"x";
	}
	else if (subtracts)
	{
		SIGNS1 = @"-";
		SIGNS2 = @"-";
		SIGNS3 = @"-";
		SIGNS4 = @"-";
	}
	else if (divides)
	{
		SIGNS1 = @"/";
		SIGNS2 = @"/";
		SIGNS3 = @"/";
		SIGNS4 = @"/";
	}
	
	[self setUp];
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
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[sign1 release];
	[sign2 release];
	[sign3 release];
	[sign4 release];
	[sign5 release];
	[result1 release];
	[result2 release];
	[number1 release];
	[number2 release];
	[number3 release];
	[number4 release];
	[number5 release];
	[number6 release];
	[number7 release];
	[number8 release];
	[number9 release];
	[number10 release];
	[number11 release];
	[number12 release];
	[number13 release];
	[number14 release];
	[number15 release];
	[highScoreCustom release];
	[yep release];
	[nope release];
	[equals release];
	[equals2 release];
    [super dealloc];
}


@end
