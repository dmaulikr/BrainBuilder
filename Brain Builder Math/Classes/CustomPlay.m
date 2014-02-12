//
//  CustomPlay.m
//  Gr3y Matt3r 2.0
//
//  Created by Fred Kneeland on 6/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CustomPlay.h"
#import "CustomGame.h"
#import "HighScoreCustom.h"

@interface CustomPlay ()

@property (nonatomic, strong) IBOutlet UIView *contentView;

@end

@implementation CustomPlay
{
    ADBannerView *_bannerView;
}

@synthesize chosenAnswer;
@synthesize chosenAnswer2;
@synthesize customGame;
@synthesize highScoreCustom;
@synthesize sign1;
@synthesize sign2;
@synthesize sign3;
@synthesize sign4;
@synthesize sign5;
@synthesize result1;
@synthesize result2;
@synthesize result3;
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
@synthesize a;
@synthesize b;
@synthesize c;
@synthesize d;
@synthesize Tester;
@synthesize same;
@synthesize equals;
@synthesize equals2;

-(IBAction) startOver:(id)sender
{
	//[self.view insertSubview:customGame.view atIndex:121];
	//[self.view insertSubview:same.view atIndex:122];
}

-(IBAction) createProblemA:(id)sender
{
	[self createProblem2];
	
	chosenAnswer.text = chosenAnswer2.text;
	
	if (Result == 1)
	{
		result2.text = @"BINGO!";
		result2.textColor = [UIColor greenColor];
		totalCorrect++;
	}
	else {
		result2.text = @"Oops?!?";
		result2.textColor = [UIColor redColor];
		totalInCorrect++;
	}
	
	chosenAnswer2.text = BUTTONA;
	
	[self createProblem];

}
-(IBAction) createProblemB:(id)sender
{
	[self createProblem2];
	
	chosenAnswer.text = chosenAnswer2.text;
	
	if (Result == 2)
	{
		result2.text = @"BINGO!";
		result2.textColor = [UIColor greenColor];
		totalCorrect++;
	}
	else {
		result2.text = @"Oops?!?";
		result2.textColor = [UIColor redColor];
		totalInCorrect += 1;
	}
	
	chosenAnswer2.text = BUTTONB;
	
	[self createProblem];
	
}
-(IBAction) createProblemC:(id)sender
{
	[self createProblem2];
	
	chosenAnswer.text = chosenAnswer2.text;
	
	if (Result == 3)
	{
		result2.text = @"BINGO!";
		result2.textColor = [UIColor greenColor];
		totalCorrect++;
	}
	else {
		result2.text = @"Oops?!?";
		result2.textColor = [UIColor redColor];
		totalInCorrect += 1;
	}
	
	chosenAnswer2.text = BUTTONC;
	
	[self createProblem];
	
}
-(IBAction) createProblemD:(id)sender
{
	[self createProblem2];
	
	chosenAnswer.text = chosenAnswer2.text;
	
	if (Result == 4)
	{
		result2.text = @"BINGO!";
		result2.textColor = [UIColor greenColor];
		totalCorrect++;
	}
	else {
		result2.text = @"Oops?!?";
		result2.textColor = [UIColor redColor];
		totalInCorrect += 1;
	}
	
	chosenAnswer2.text = BUTTOND;
	
	[self createProblem];
	
}

-(void) createProblem
{
	if (fun > 0)
	{
        if (fun == 1)
        {
            equals.text = @"=";
        }
        else if (fun == 2)
        {
            equals2.text = @"=";
        }
		numb9 = arc4random()%number + 1;
		numb10 = arc4random()%number + 1;
	
		NUMBER11 = [[NSString alloc] initWithFormat:@"%i", numb9];
		NUMBER12 = [[NSString alloc] initWithFormat:@"%i", numb10];
		NewNumb9 = NUMBER11;
		NewNumb10 = NUMBER12;
		number9.text = NUMBER11;
		number10.text = NUMBER12;
	
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
		
		if ([sign5.text isEqualToString:@"-"])
		{
			if ((numb10 > numb9))
			{
				numbSpecial = numb9;
				numb9 = numb10;
				numb10 = numbSpecial;
				NUMBER9 = [[NSString alloc] initWithFormat:@"%i", numb9];
				NUMBER10 = [[NSString alloc] initWithFormat:@"%i", numb10];
				number9.text = NUMBER9;
				number10.text = NUMBER10;
			}
		}
		
		else if ([sign5.text isEqualToString:@"/"])
		{
			answr2 = (float)numb9 / (float)numb10;
			divide1 = answr2;
			division1 = answr2;
			//Hello = [[NSString alloc] initWithFormat:@"%i", divide1];
			//Hello2 = [[NSString alloc] initWithFormat:@"%1.3f", division1];
			//number1.text = Hello;
			//number2.text = Hello2;
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
			answr = Newnumb7 + Newnumb8;
		}
		else if ([sign3.text isEqualToString:@"-"])
		{
			answr = abs(Newnumb7 - Newnumb8);
		}
		else if ([sign3.text isEqualToString:@"x"])
		{
			answr = Newnumb7 * Newnumb8;
		}
		else if ([sign3.text isEqualToString:@"/"])
		{
			answr = (float)Newnumb7 / (float)Newnumb8;
		}
		choice = arc4random()%4;
	
		if (answr != 0)
		{
			if (choice == 0)
			{
				AA = answr;
				CC = answr - (arc4random()%10 + 1);
				BB = answr + (arc4random()%10 + 1);
				DD = (answr * (arc4random()%3 + 2)) + 1;
				Result = 1;
			}
			else if (choice == 1)
			{
				AA = (answr * (arc4random()%3 + 2)) + 1;
				BB = answr;
				CC = answr + (arc4random()%10 + 1);
				DD = answr - (arc4random()%10 + 1);
				Result = 2;
			}
			else if (choice == 2)
			{
				AA = answr - (arc4random()%10 + 1);
				BB = (answr * (arc4random()%3 + 2)) + 1;
				CC = answr;
				DD = answr + (arc4random()%10 + 1);
				Result = 3;
			}
			else 
			{
				AA = answr + (arc4random()%10 + 1);
				BB = answr - (arc4random()%10 + 1);
				CC = (answr * (arc4random()%3 + 2)) + 1;
				DD = answr;
				Result = 4;
			}
		}
		else 
		{
			if (choice == 0) 
			{
				AA = answr + (arc4random()%10 + 1);
				BB = answr;
				CC = answr + (arc4random()%3 + 2);
				DD = answr - (arc4random()%10 + 1);
				Result = 2;
			}
			else if (choice == 1)
			{
				AA = answr;
				BB = answr + arc4random()%10 + 1;
				CC = answr - (arc4random()%10 + 1);
				DD = answr - (arc4random()%3 + 2);
				Result = 1;
				
			}
			else if (choice == 2)
			{
				AA = answr + (arc4random()%3 + 2);
				BB = answr  - (arc4random()%10 + 1);
				CC = answr;
				DD = answr + (arc4random()%10 + 1);
				Result = 3;
				
			}
			else if (choice == 3)
			{
				AA = answr - (arc4random()%10 + 1);
				BB = answr - (arc4random()%3 + 2);
				CC = answr + (arc4random()%10 + 1);
				DD = answr;
				Result = 4;
			}
		}

		BUTTONA = [[NSString alloc] initWithFormat:@"%1.0f", AA];
		BUTTONB = [[NSString alloc] initWithFormat:@"%1.0f", BB];
		BUTTONC = [[NSString alloc] initWithFormat:@"%1.0f", CC];
		BUTTOND = [[NSString alloc] initWithFormat:@"%1.0f", DD];

		[a setTitle:BUTTONA forState:UIControlStateNormal];
		[b setTitle:BUTTONB forState:UIControlStateNormal];
		[c setTitle:BUTTONC forState:UIControlStateNormal];
		[d setTitle:BUTTOND forState:UIControlStateNormal];	
		fun++;
		NUMBER5 = NewNumb3;
		NUMBER6 = NewNumb4;
		NUMBER7 = NewNumb5;
		NUMBER8 = NewNumb6;
		NUMBER9 = NewNumb7;
		NUMBER10 = NewNumb8;
		NUMBER11 = NewNumb9;
		NUMBER12 = NewNumb10;
	}
	else 
	{
		fun++;
	}
	if (fun > (selectedSegment * 25))
	{
		NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
		UIAlertView *alertDialog;
		
		// have variable totalHighScore equal to a saved value
		if ([userDefaults floatForKey:SCORE18] > 0)
		{
			totalHighScore = [userDefaults floatForKey:SCORE18];
		}
		else {
			totalHighScore = 10909090909.00;
		}

		
		endTime = [[NSDate alloc] init];
		
		elapsedTime = [startTime timeIntervalSinceDate:endTime];
		
		finalScore = (6 * totalInCorrect) + fabs(elapsedTime);
		
		if (selectedSegment == 1)
			{
				[userDefaults setFloat:finalScore forKey:SCORE10];
			}
			else if (selectedSegment == 2)
			{
				finalScore = finalScore / 2;
				[userDefaults setFloat:finalScore forKey:SCORE10];
			}
			else if (selectedSegment == 3)
			{
				finalScore = finalScore / 3;
				[userDefaults setFloat:finalScore forKey:SCORE10];
			}
			else {
				finalScore = finalScore / 4;
				[userDefaults setFloat:finalScore forKey:SCORE10];
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
		[highScoreCustom AlertOn];
		[self.view insertSubview:highScoreCustom.view atIndex:223];
	}
	else 
	{
		//[self.view insertSubview:highScore.view atIndex:123];
		[self setUp];
	}
	
}

-(void) createProblem2
{
	if (fun == 1)
	{
		Newnumb7 = numb7;
		Newnumb8 = numb8;
	}
	else if (fun > 1)
	{
		Newnumb7 = Newnumb9;
		Newnumb8 = Newnumb10;
	}
	if (fun > 0)
	{
		Newnumb9 = numb9;
		Newnumb10 = numb10;
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
		NewNumb1 = NUMBER3;
		NewNumb2 = NUMBER4;
		NewNumb3 = NUMBER5;
		NewNumb4 = NUMBER6;
		NewNumb5 = NUMBER7;
		NewNumb6 = NUMBER8;
		NewNumb7 = NUMBER9;
		NewNumb8 = NUMBER10;
		NewResult = result2.text;
		result1.text = NewResult;
		if ([result2.text isEqualToString:@"BINGO!"])
		{
			result1.textColor = [UIColor greenColor];
		}
		else
		{
			result1.textColor = [UIColor redColor];
		}
		result3.text = @"";
		number1.text = NUMBER3;
		number2.text = NUMBER4;
		number3.text = NUMBER5;
		number4.text = NUMBER6;
		number5.text = NUMBER7;
		number6.text = NUMBER8;
		number7.text = NUMBER9;
		number8.text = NUMBER10;
	}
}

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
    equals2.text = @"";
    equals.text = @"";
    chosenAnswer.text = @"";
    chosenAnswer2.text = @"";
	
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
	
	if ([sign4.text isEqualToString:@"-"])
	{
		if ((numb8 > numb7))
		{
			numbSpecial = numb7;
			numb7 = numb8;
			numb8 = numbSpecial;
			NUMBER7 = [[NSString alloc] initWithFormat:@"%i", numb7];
			NUMBER8 = [[NSString alloc] initWithFormat:@"%i", numb8];
			number7.text = NUMBER7;
			number8.text = NUMBER8;
		}		
	}
	
	else if ([sign4.text isEqualToString:@"/"])
	{
		answr2 = (float)numb7 / (float)numb8;
		divide1 = answr2;
		division1 = answr2;
		//Hello = [[NSString alloc] initWithFormat:@"%i", divide1];
		//Hello2 = [[NSString alloc] initWithFormat:@"%1.3f", division1];
		//number1.text = Hello;
		//number2.text = Hello2;
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
					NUMBER7 = [[NSString alloc] initWithFormat:@"%i", numb7];
					NUMBER8 = [[NSString alloc] initWithFormat:@"%i", numb8];
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
	
	if ([sign5.text isEqualToString:@"-"])
	{
		if ((numb10 > numb9))
		{
			numbSpecial = numb9;
			numb9 = numb10;
			numb10 = numbSpecial;
			NUMBER9 = [[NSString alloc] initWithFormat:@"%i", numb9];
			NUMBER10 = [[NSString alloc] initWithFormat:@"%i", numb10];
			number9.text = NUMBER9;
			number10.text = NUMBER10;
		}		
	}
	
	else if ([sign5.text isEqualToString:@"/"])
	{
		answr2 = (float)numb9 / (float)numb10;
		divide1 = answr2;
		division1 = answr2;
		//Hello = [[NSString alloc] initWithFormat:@"%i", divide1];
		//Hello2 = [[NSString alloc] initWithFormat:@"%1.3f", division1];
		//number1.text = Hello;
		//number2.text = Hello2;
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
		if ((numb6 > numb5))
		{
			numbSpecial = numb5;
			numb5 = numb6;
			numb6 = numbSpecial;
			NUMBER5 = [[NSString alloc] initWithFormat:@"%i", numb5];
			NUMBER6 = [[NSString alloc] initWithFormat:@"%i", numb6];
			number5.text = NUMBER5;
			number6.text = NUMBER6;
		}		
		answr = numb5 - numb6;
	}
	else if ([sign3.text isEqualToString:@"x"])
	{
		answr = numb5 * numb6;
	}
	else 
	{
		answr2 = (float)numb5 / (float)numb6;
		divide1 = answr2;
		division1 = answr2;
		//Hello = [[NSString alloc] initWithFormat:@"%i", divide1];
		//Hello2 = [[NSString alloc] initWithFormat:@"%1.3f", division1];
		//number1.text = Hello;
		//number2.text = Hello2;
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
		answr = (float)numb5 / (float)numb6;
	}
	choice = arc4random()%4;
	
	if (answr != 0)
	{
		if (choice == 0)
		{
			AA = answr;
			BB = answr + arc4random()%10 + 1;
			CC = answr - (arc4random()%10 + 1);
			DD = answr * (arc4random()%3 + 2);
			Result = 1;
		}
		else if (choice == 1)
		{
			AA = answr * (arc4random()%3 + 2);
			BB = answr;
			CC = answr + (arc4random()%10 + 1);
			DD = answr - (arc4random()%10 + 1);
			Result = 2;
		}
		else if (choice == 2)
		{
			AA = answr - (arc4random()%10 + 1);
			BB = answr * (arc4random()%3 + 2);
			CC = answr;
			DD = answr + (arc4random()%10 + 1);
			Result = 3;
		}
		else 
		{
			AA = answr + (arc4random()%10 + 1);
			BB = answr - (arc4random()%10 + 1);
			CC = answr * (arc4random()%3 + 2);
			DD = answr;
			Result = 4;
		}
	}
	else {
		if (choice == 0)
		{
			AA = answr;
			BB = answr + arc4random()%10 + 1;
			CC = answr - (arc4random()%10 + 1);
			DD = answr + (arc4random()%3 + 2);
			Result = 1;
		}
		else if (choice == 1)
		{
			AA = answr - (arc4random()%3 + 2);
			BB = answr;
			CC = answr + (arc4random()%10 + 1);
			DD = answr - (arc4random()%10 + 1);
			Result = 2;
		}
		else if (choice == 2)
		{
			AA = answr - (arc4random()%10 + 1);
			BB = answr + (arc4random()%3 + 2);
			CC = answr;
			DD = answr + (arc4random()%10 + 1);
			Result = 3;
		}
		else 
		{
			AA = answr + (arc4random()%10 + 1);
			BB = answr - (arc4random()%10 + 1);
			CC = answr - (arc4random()%3 + 2);
			DD = answr;
			Result = 4;
		}
		
	}

	BUTTONA = [[NSString alloc] initWithFormat:@"%1.0f", AA];
	BUTTONB = [[NSString alloc] initWithFormat:@"%1.0f", BB];
	BUTTONC = [[NSString alloc] initWithFormat:@"%1.0f", CC];
	BUTTOND = [[NSString alloc] initWithFormat:@"%1.0f", DD];

	
	
	[a setTitle:BUTTONA forState:UIControlStateNormal];
	[b setTitle:BUTTONB forState:UIControlStateNormal];
	[c setTitle:BUTTONC forState:UIControlStateNormal];
	[d setTitle:BUTTOND forState:UIControlStateNormal];	
}
- (instancetype)init
{
    self = [super initWithNibName:@"CustomPlay" bundle:nil];
    if (self) {
        // On iOS 6 ADBannerView introduces a new initializer, use it when available.
        if ([ADBannerView instancesRespondToSelector:@selector(initWithAdType:)]) {
            _bannerView = [[ADBannerView alloc] initWithAdType:ADAdTypeBanner];
        } else {
            _bannerView = [[ADBannerView alloc] init];
        }
        _bannerView.delegate = self;
    }
    return self;
}

- (void)layoutAnimated:(BOOL)animated
{
    // As of iOS 6.0, the banner will automatically resize itself based on its width.
    // To support iOS 5.0 however, we continue to set the currentContentSizeIdentifier appropriately.
    CGRect contentFrame = self.view.bounds;
    if (contentFrame.size.width < contentFrame.size.height) {
        _bannerView.currentContentSizeIdentifier = ADBannerContentSizeIdentifierPortrait;
    } else {
        _bannerView.currentContentSizeIdentifier = ADBannerContentSizeIdentifierLandscape;
    }
    
    CGRect bannerFrame = _bannerView.frame;
    if (_bannerView.bannerLoaded) {
        contentFrame.size.height -= _bannerView.frame.size.height;
        bannerFrame.origin.y = contentFrame.size.height;
    } else {
        bannerFrame.origin.y = contentFrame.size.height;
    }
    
    [UIView animateWithDuration:animated ? 0.25 : 0.0 animations:^{
        //_contentView.frame = contentFrame;
        [_contentView layoutIfNeeded];
        _bannerView.frame = bannerFrame;
    }];
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [self.view addSubview:_bannerView];
	self.navigationItem.title = @"Custom Game";
	self.navigationItem.backBarButtonItem.title = @"Back";
	//int FirstLoad;
	totalInCorrect = 0;
	//NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
	//Hello = [userDefaults integerForKey:TEST];
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

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self layoutAnimated:NO];
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

#if __IPHONE_OS_VERSION_MIN_REQUIRED < __IPHONE_6_0
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}
#endif

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskAll;
}

- (void)viewDidLayoutSubviews
{
    [self layoutAnimated:[UIView areAnimationsEnabled]];
}

- (void)bannerViewDidLoadAd:(ADBannerView *)banner
{
    [self layoutAnimated:YES];
}

- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
    [self layoutAnimated:YES];
}

- (BOOL)bannerViewActionShouldBegin:(ADBannerView *)banner willLeaveApplication:(BOOL)willLeave
{
    return YES;
}

- (void)bannerViewActionDidFinish:(ADBannerView *)banner
{
}


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
	[result3 release];
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
	[a release];
	[b release];
	[c release];
	[d release];
	[Tester release];
	[chosenAnswer release];
	[chosenAnswer2 release];
	[customGame release];
	[highScoreCustom release];
	[same release];
    [super dealloc];
}


@end
