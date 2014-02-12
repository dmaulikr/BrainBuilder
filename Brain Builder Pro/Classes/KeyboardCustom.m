//
//  KeyboardCustom.m
//  Brain Builder Pro
//
//  Created by Fred Kneeland on 8/21/11.
//  Copyright 2011 Blade Linux LLC. All rights reserved.
//

#import "KeyboardCustom.h"
#import "HighScore.h"

@implementation KeyboardCustom
@synthesize highScoreCustom;
@synthesize number1;
@synthesize number2;
@synthesize number3;
@synthesize number4;
@synthesize number5;
@synthesize number6;
@synthesize sign1;
@synthesize sign2;
@synthesize sign3;
@synthesize result1;
@synthesize result2;
@synthesize outPut;
@synthesize endResult;
@synthesize equals;

-(void) createProblem
{
	equals.text = @"=";
	number1.text = number3.text;
	number2.text = number4.text;
	number3.text = number5.text;
	number4.text = number6.text;
	sign1.text = sign2.text;
	sign2.text = sign3.text;
	numb1 = numb3;
	numb2 = numb4;
	numb3 = arc4random()%number;
	numb4 = arc4random()%number;
	NUMBER3 = [[NSString alloc] initWithFormat:@"%i", numb1];
	NUMBER4 = [[NSString alloc] initWithFormat:@"%i", numb2];
	NUMBER5 = [[NSString alloc] initWithFormat:@"%i", numb3];
	NUMBER6 = [[NSString alloc] initWithFormat:@"%i", numb4];
	number5.text = NUMBER5;
	number6.text = NUMBER6;
	
	SIGN3 = arc4random()%4;
	SIGN4 = arc4random()%4;
	
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
	if ([sign2.text isEqualToString:@"-"] && (numb1 < numb2))
	{
		number4.text = NUMBER3;
		number3.text = NUMBER4;
		
	}
	if ([sign3.text isEqualToString:@"-"] && (numb3 < numb4))
	{
		number5.text = NUMBER6;
		number6.text = NUMBER5;
	}
	
	if ([sign2.text isEqualToString:@"+"])
	{
		answr = (float)numb1 + (float)numb2;
	}
	else if ([sign2.text isEqualToString:@"-"])
	{
		answr = abs(numb1 - numb2);
	}
	else if ([sign2.text isEqualToString:@"x"])
	{
		answr = (float)numb1 * (float)numb2;
	}
	else if ([sign2.text isEqualToString:@"/"])
	{
		answr = (float)numb1 / (float)numb2;
	}
	if ([sign3.text isEqualToString:@"/"])
	{
		answr2 = (float)numb3 / (float)numb4;
		divide1 = answr2;
		division1 = answr2;
		if ((divide1 * 10) == (division1 * 10))
		{
		}
		else 
		{
			while (TRUE) 
			{
				numb3 = arc4random()%number + 1;
				numb4 = arc4random()%number + 1;
				answr2 = (float)numb3 / (float)numb4;
				divide1 = answr2;
				division1 = answr2;
				if ((divide1 * 10) == (division1 * 10))
				{
					NUMBER5 = [[NSString alloc ]initWithFormat:@"%i", numb3];
					NUMBER6 = [[NSString alloc]initWithFormat:@"%i", numb4];
					number5.text = NUMBER5;
					number6.text = NUMBER6;
					break;
				}
			}
		}
	}
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

-(void) makeLifeEasy
{
	outPut.text = Sight;
	
	if (answr == total)
	{
		Outputs = 1;
		ANSWRS = [[NSString alloc] initWithFormat:@"%1.0f", total];
		outPut.text = @"";
		decimal = 1;
        totalCorrect++;
		[self createProblem];
		result1.text = @"Bingo!";
		endResult.text = ANSWRS;
		result1.textColor = [UIColor greenColor];
	}
	else if (total > answr)
	{
		ANSWRS = [[NSString alloc] initWithFormat:@"%1.0f", total];
		Outputs = 1;
		decimal = 1;
		outPut.text = @"";
		result1.text = @"Oops!?!";
		endResult.text = ANSWRS;
		result1.textColor = [UIColor redColor];
		totalInCorrect++;
		[self createProblem];
	}
	else if ((Outputs == 2) && (total > 1) && ((answr > 1) && (answr < 10)))
	{
		ANSWRS = [[NSString alloc] initWithFormat:@"%1.0f", total];
		Outputs = 1;
		decimal = 1;
		outPut.text = @"";
		result1.text = @"Oops!?!";
		endResult.text = ANSWRS;
		result1.textColor = [UIColor redColor];
		totalInCorrect++;
		[self createProblem];
	}
	else if ((Outputs == 3) && (total > 10) && ((answr > 10) && (answr < 100)))
	{
		ANSWRS = [[NSString alloc] initWithFormat:@"%1.0f", total];
		Outputs = 1;
		decimal = 1;
		outPut.text = @"";
		result1.text = @"Oops!?!";
		endResult.text = ANSWRS;
		result1.textColor = [UIColor redColor];
		totalInCorrect++;
		[self createProblem];
	}
	else if ((Outputs == 4) && (total > 100) && ((answr > 100) && (answr < 1000)))
	{
		ANSWRS = [[NSString alloc] initWithFormat:@"%1.0f", total];
		Outputs = 1;
		decimal = 1;
		outPut.text = @"";
		result1.text = @"Oops!?!";
		endResult.text = ANSWRS;
		result1.textColor = [UIColor redColor];
		totalInCorrect++;
		[self createProblem];
	}
}

-(IBAction) Uno:(id)sender
{
	if (Outputs == 1)
	{
		Outputs1 = 1;
		Outputs = 2;
	    total = Outputs1;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", Outputs1];
		[self makeLifeEasy];
	}
	else if (Outputs == 2)
	{
		Outputs = 3;
		Outputs2 = 1;
		total = (Outputs1 * 10) + Outputs2;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", total];
		[self makeLifeEasy];
	}
	else if (Outputs == 3)
	{
		Outputs = 4;
		Outputs3 = 1;
		total = (Outputs1 * 100) + (Outputs2 * 10) + Outputs3;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", total];
		[self makeLifeEasy];
	}
	else if (Outputs == 4)
	{
		Outputs = 5;
		Outputs4 = 1;
		total = (Outputs1 * 1000) + (Outputs2 * 100) + (Outputs3 * 10) + Outputs4;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", total];
		[self makeLifeEasy];
	}
}
-(IBAction) Dos:(id)sender
{
	if (Outputs == 1)
	{
		Outputs1 = 2;
		total = Outputs1;
		Outputs = 2;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", Outputs1];
		[self makeLifeEasy];
	}
	else if (Outputs == 2)
	{
		Outputs = 3;
		Outputs2 = 2;
		total = (Outputs1 * 10) + Outputs2;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", total];
		[self makeLifeEasy];
	}
	else if (Outputs == 3)
	{
		Outputs = 4;
		Outputs3 = 2;
		total = (Outputs1 * 100) + (Outputs2 * 10) + Outputs3;
		Sight = [[NSString alloc] initWithFormat:@"%1.10", total];
		[self makeLifeEasy];
	}
	else if (Outputs == 4)
	{
		Outputs = 5;
		Outputs4 = 2;
		total = (Outputs1 * 1000) + (Outputs2 * 100) + (Outputs3 * 10) + Outputs4;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", total];
		[self makeLifeEasy];
	}
	
}
-(IBAction) Tres:(id)sender
{
	if (Outputs == 1)
	{
		Outputs1 = 3;
		total = Outputs1;
		Outputs = 2;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", Outputs1];
		[self makeLifeEasy];
	}
	else if (Outputs == 2)
	{
		Outputs = 3;
		Outputs2 = 3;
		total = (Outputs1 * 10) + Outputs2;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", total];
		[self makeLifeEasy];
	}
	else if (Outputs == 3)
	{
		Outputs = 4;
		Outputs3 = 3;
		total = (Outputs1 * 100) + (Outputs2 * 10) + Outputs3;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", total];
		[self makeLifeEasy];
	}
	else if (Outputs == 4)
	{
		Outputs = 5;
		Outputs4 = 3;
		total = (Outputs1 * 1000) + (Outputs2 * 100) + (Outputs3 * 10) + Outputs4;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", total];
		[self makeLifeEasy];
	}
	
}
-(IBAction) Cuatro:(id)sender
{
	if (Outputs == 1)
	{
		Outputs1 = 4;
		total = Outputs1;
		Outputs = 2;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", Outputs1];
		[self makeLifeEasy];
	}
	else if (Outputs == 2)
	{
		Outputs = 3;
		Outputs2 = 4;
		total = (Outputs1 * 10) + Outputs2;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", total];
		[self makeLifeEasy];
	}
	else if (Outputs == 3)
	{
		Outputs = 4;
		Outputs3 = 4;
		total = (Outputs1 * 100) + (Outputs2 * 10) + Outputs3;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", total];
		[self makeLifeEasy];
	}
	else if (Outputs == 4)
	{
		Outputs = 5;
		Outputs4 = 4;
		total = (Outputs1 * 1000) + (Outputs2 * 100) + (Outputs3 * 10) + Outputs4;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", total];
		[self makeLifeEasy];
	}
	
}
-(IBAction) Cinco:(id)sender
{
	if (Outputs == 1)
	{
		Outputs1 = 5;
		total = Outputs1;
		Outputs = 2;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", Outputs1];
		[self makeLifeEasy];
	}
	else if (Outputs == 2)
	{
		Outputs = 3;
		Outputs2 = 5;
		total = (Outputs1 * 10) + Outputs2;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", total];
		[self makeLifeEasy];
	}
	else if (Outputs == 3)
	{
		Outputs = 4;
		Outputs3 = 5;
		total = (Outputs1 * 100) + (Outputs2 * 10) + Outputs3;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", total];
		[self makeLifeEasy];
	}
	else if (Outputs == 4)
	{
		Outputs = 5;
		Outputs4 = 5;
		total = (Outputs1 * 1000) + (Outputs2 * 100) + (Outputs3 * 10) + Outputs4;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", total];
		[self makeLifeEasy];
	}
	
}
-(IBAction) Seis:(id)sender
{
	if (Outputs == 1)
	{
		Outputs1 = 6;
		total = Outputs1;
		Outputs = 2;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", Outputs1];
		[self makeLifeEasy];
	}
	else if (Outputs == 2)
	{
		Outputs = 3;
		Outputs2 = 6;
		total = (Outputs1 * 10) + Outputs2;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", total];
		[self makeLifeEasy];
	}
	else if (Outputs == 3)
	{
		Outputs = 4;
		Outputs3 = 6;
		total = (Outputs1 * 100) + (Outputs2 * 10) + Outputs3;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", total];
		[self makeLifeEasy];
	}
	else if (Outputs == 4)
	{
		Outputs = 5;
		Outputs4 = 6;
		total = (Outputs1 * 1000) + (Outputs2 * 100) + (Outputs3 * 10) + Outputs4;
		Sight = [[NSString alloc] initWithFormat:@"%i", total];
		[self makeLifeEasy];
	}
	
}
-(IBAction) Seite:(id)sender
{
	if (Outputs == 1)
	{
		Outputs1 = 7;
		total = Outputs1;
		Outputs = 2;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", Outputs1];
		[self makeLifeEasy];
	}
	else if (Outputs == 2)
	{
		Outputs = 3;
		Outputs2 = 7;
		total = (Outputs1 * 10) + Outputs2;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", total];
		[self makeLifeEasy];
	}
	else if (Outputs == 3)
	{
		Outputs = 4;
		Outputs3 = 7;
		total = (Outputs1 * 100) + (Outputs2 * 10) + Outputs3;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", total];
		[self makeLifeEasy];
	}
	else if (Outputs == 4)
	{
		Outputs = 5;
		Outputs4 = 7;
		total = (Outputs1 * 1000) + (Outputs2 * 100) + (Outputs3 * 10) + Outputs4;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", total];
		[self makeLifeEasy];
	}
	
}
-(IBAction) Ocho:(id)sender
{
	if (Outputs == 1)
	{
		Outputs1 = 8;
		total = Outputs1;
		Outputs = 2;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", Outputs1];
		[self makeLifeEasy];
	}
	else if (Outputs == 2)
	{
		Outputs = 3;
		Outputs2 = 8;
		total = (Outputs1 * 10) + Outputs2;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", total];
		[self makeLifeEasy];
	}
	else if (Outputs == 3)
	{
		Outputs = 4;
		Outputs3 = 8;
		total = (Outputs1 * 100) + (Outputs2 * 10) + Outputs3;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", total];
		[self makeLifeEasy];
	}
	else if (Outputs == 4)
	{
		Outputs = 5;
		Outputs4 = 8;
		total = (Outputs1 * 1000) + (Outputs2 * 100) + (Outputs3 * 10) + Outputs4;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", total];
		[self makeLifeEasy];
	}
}
-(IBAction) Nuevo:(id)sender
{
	if (Outputs == 1)
	{
		Outputs1 = 9;
		total = Outputs1;
		Outputs = 2;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", Outputs1];
		[self makeLifeEasy];
	}
	else if (Outputs == 2)
	{
		Outputs = 3;
		Outputs2 = 9;
		total = (Outputs1 * 10) + Outputs2;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", total];
		[self makeLifeEasy];
	}
	else if (Outputs == 3)
	{
		Outputs = 4;
		Outputs3 = 9;
		total = (Outputs1 * 100) + (Outputs2 * 10) + Outputs3;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", total];
		[self makeLifeEasy];
	}
	else if (Outputs == 4)
	{
		Outputs = 5;
		Outputs4 = 9;
		total = (Outputs1 * 1000) + (Outputs2 * 100) + (Outputs3 * 10) + Outputs4;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", total];
		[self makeLifeEasy];
	}
	
}
-(IBAction) Diez:(id)sender
{
	if (Outputs == 1)
	{
		Outputs1 = 0;
		total = Outputs1;
		Outputs = 2;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", Outputs1];
		[self makeLifeEasy];
	}
	else if (Outputs == 2)
	{
		Outputs = 3;
		Outputs2 = 0;
		total = (Outputs1 * 10) + Outputs2;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", total];
		[self makeLifeEasy];
	}
	else if (Outputs == 3)
	{
		Outputs = 4;
		Outputs3 = 0;
		total = (Outputs1 * 100) + (Outputs2 * 10) + Outputs3;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", total];
		[self makeLifeEasy];
	}
	else if (Outputs == 4)
	{
		Outputs = 5;
		Outputs4 = 0;
		total = (Outputs1 * 1000) + (Outputs2 * 100) + (Outputs3 * 10) + Outputs4;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", total];
		[self makeLifeEasy];
	}	
}
-(IBAction) Delete:(id)sender
{
	Outputs = 1;
	outPut.text = @"";
	decimal = 1;
}
-(IBAction) Done:(id)sender
{
	if (Outputs == 2)
	{
		Outputs = 1;
		Sight = [[NSString alloc] initWithFormat:@""];
		outPut.text = Sight;
	}
	else if (Outputs == 3)
	{
		Outputs = 2;
		total = Outputs1;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", total];
		outPut.text = Sight;
	}
	else if (Outputs == 4)
	{
		Outputs = 3;
		total = (Outputs1 * 10) + Outputs2;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", total];
		outPut.text = Sight;
	}
	else if (Outputs == 5)
	{
		Outputs = 4;
		total = (Outputs1 * 100) + (Outputs2 * 10) + Outputs3;
		Sight = [[NSString alloc] initWithFormat:@"%1.0f", total];
		outPut.text = Sight;
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
	numb1 = arc4random()%number + 1;
	numb2 = arc4random()%number + 1;
	numb3 = arc4random()%number + 1;
	numb4 = arc4random()%number + 1;
	
	NUMBER3 = [[NSString alloc] initWithFormat:@"%i", numb1];
	NUMBER4 = [[NSString alloc] initWithFormat:@"%i", numb2];
	NUMBER5 = [[NSString alloc] initWithFormat:@"%i", numb3];
	NUMBER6 = [[NSString alloc] initWithFormat:@"%i", numb4];
	number3.text = NUMBER3;
	number4.text = NUMBER4;
	number5.text = NUMBER5;
	number6.text = NUMBER6;
	
	SIGN3 = arc4random()%4;
	SIGN4 = arc4random()%4;
	
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
		sign2.text = SIGNS1;
	}
	else if (SIGN4 == 1)
	{
		sign2.text = SIGNS2;
	}
	else if (SIGN4 == 2)
	{
		sign2.text = SIGNS3;
	}
	else 
	{
		sign2.text = SIGNS4;
	}
	if ([sign2.text isEqualToString:@"-"] && (numb1 < numb2))
	{
		number4.text = NUMBER3;
		number3.text = NUMBER4;
		
	}
	if ([sign3.text isEqualToString:@"-"] && (numb3 < numb4))
	{
		number5.text = NUMBER6;
		number6.text = NUMBER5;
	}
	sign1.text = @"";
	number1.text = @"";
	number2.text = @"";
	result1.text = @"";
	result2.text = @"";
	equals.text = @"";
	endResult.text = @"";
	
	if ([sign2.text isEqualToString:@"+"])
	{
		answr = (float)numb1 + (float)numb2;
	}
	else if ([sign2.text isEqualToString:@"-"])
	{
		answr = abs(numb1 - numb2);
	}
	else if ([sign2.text isEqualToString:@"x"])
	{
		answr = (float)numb1 * (float)numb2;
	}
	else if ([sign2.text isEqualToString:@"/"])
	{
		answr = (float)numb1 / (float)numb2;
		divide1 = answr;
		division1 = answr;
		Hello = [[NSString alloc] initWithFormat:@"%i", divide1];
		Hello2 = [[NSString alloc] initWithFormat:@"%1.3f", division1];
		if ((divide1 * 10) == (division1 * 10))
		{
		}
		else {
			while (TRUE) {
				numb1 = arc4random()%number + 1;
				numb2 = arc4random()%number + 1;
				answr = (float)numb1 / (float)numb2;
				divide1 = answr;
				division1 = answr;
				if ((divide1 * 10) == (division1 * 10))
				{
					NUMBER3 = [[NSString alloc ]initWithFormat:@"%i", numb1];
					NUMBER4 = [[NSString alloc]initWithFormat:@"%i", numb2];
					number3.text = NUMBER3;
					number4.text = NUMBER4;
					break;
				}
			}
		}
	}
	
	if ([sign3.text isEqualToString:@"/"])
	{
		answr2 = (float)numb3 / (float)numb4;
		divide1 = answr2;
		division1 = answr2;
		if ((divide1 * 10) == (division1 * 10))
		{
		}
		else 
		{
			while (TRUE) 
			{
				numb3 = arc4random()%number + 1;
				numb4 = arc4random()%number + 1;
				answr2 = (float)numb3 / (float)numb4;
				divide1 = answr2;
				division1 = answr2;
				if ((divide1 * 10) == (division1 * 10))
				{
					NUMBER5 = [[NSString alloc ]initWithFormat:@"%i", numb3];
					NUMBER6 = [[NSString alloc]initWithFormat:@"%i", numb4];
					number5.text = NUMBER5;
					number6.text = NUMBER6;
					break;
				}
			}
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
	self.navigationItem.title = @"# Pad";
	decimal = 1;
	Outputs = 1;
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
	[number1 release];
	[number2 release];
	[number3 release];
	[number4 release];
	[number5 release];
	[number6 release];
	[sign1 release];
	[sign2 release];
	[sign3 release];
	[result1 release];
	[result2 release];
	[outPut release];
	[equals release];
	[endResult release];
	[highScoreCustom release];
    [super dealloc];
}


@end
