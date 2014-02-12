//
//  TrigCustomGame.m
//  BrainBuilderPro
//
//  Created by Fred Kneeland on 3/16/12.
//  Copyright (c) 2012 BLADE Enterprises LLC. All rights reserved.
//

#import "TrigCustomGame.h"
#import "TrigHighScoreQuick.h"

@implementation TrigCustomGame
@synthesize question1;
@synthesize question2;
@synthesize question3;
@synthesize question4;
@synthesize question5;
@synthesize equals;
@synthesize equals2;
@synthesize equals3;
@synthesize equals4;
@synthesize equals5;
@synthesize questionMark;
@synthesize questionMark2;
@synthesize questionMark3;
@synthesize questionMark4;
@synthesize questionMark5;
@synthesize result;
@synthesize result2;
@synthesize answerA;
@synthesize answerB;
@synthesize answerC;
@synthesize answerD;
@synthesize highScoreCustom;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void) learnSettings:(NSInteger)sin: (NSInteger)cos: (NSInteger)tan: (NSInteger)csc: (NSInteger)sec: (NSInteger)cot: (NSInteger)quad1: (NSInteger)quad2: (NSInteger) quad3: (NSInteger)quad4
{
    if (sin == 0)
    {
        sin22 = FALSE;
    }
    else
    {
        sin22 = TRUE;
    }
    if (cos == 0)
    {
        cos22 = FALSE;
    }
    else
    {
        cos22 = TRUE;
    }
    if (tan == 0)
    {
        tan22 = FALSE;
    }
    else
    {
        tan22 = TRUE;
    }
    if (csc == 0)
    {
        csc22 = FALSE;
    }
    else
    {
        csc22 = TRUE;
    }
    if (sec == 0)
    {
        sec22 = FALSE;
    }
    else
    {
        sec22 = TRUE;
    }
    if (cot == 0)
    {
        cot22 = FALSE;
    }
    else
    {
        cot22 = TRUE;
    }
    if (quad1 == 0)
    {
        quad122 = FALSE;
    }
    else
    {
        quad122 = TRUE;
    }
    if (quad2 == 0)
    {
        quad222 = FALSE;
    }
    else
    {
        quad222 = TRUE;
    }
    if (quad3 == 0)
    {
        quad322 = FALSE;
    }
    else
    {
        quad322 = TRUE;
    }
    if (quad4 == 0)
    {
        quad422 = FALSE;
    }
    else
    {
        quad422 = TRUE;
    }
    message = [[NSString alloc] initWithFormat:@"sin:%i, cos:%i, tan:%i, csc:%i, sec:%i, cot:%i, quad1:%i, quad2:%i, quad3:%i, quad4:%i", sin,cos,tan,csc,sec,cot,quad1,quad2,quad3,quad4];
    //message = @"Howdy";
}

-(void) moveUp
{
    question1.text = question2.text;
    question2.text = question3.text;
    question3.text = question4.text;
    question4.text = question5.text;
    
    equals.text = equals2.text;
    equals2.text = equals3.text;
    equals3.text = equals4.text;
    equals4.text = equals5.text;
    equals5.text = @"=";
    
    questionMark.text = questionMark2.text;
    questionMark2.text = questionMark3.text;
    questionMark3.text = questionMark4.text;
    questionMark4.text = questionMark5.text;
    questionMark5.text = @"?";
    
    answer = answer2;
    answer2 = answer3;
    
    correctAnswer = correctAnswer2;
    correctAnswer2 = correctAnswer3;
}

-(void) setUp
{
    
    func = nil;
    
    
    // put number into trig methods
    while (func == nil)
    {
        // randomly choose trig function
        randNumb = arc4random()%6;
        if (sin22)
        {
            [self sineOption:randNumb];
        }
        if (cos22)
        {
            [self cosOption:randNumb];
        }
        if (tan22)
        {
            [self tanOption:randNumb];
        }
        if (csc22)
        {
            [self cscOption:randNumb];
        }
        if (sec22)
        {
            [self secOption:randNumb];
        }
        if (cot22)
        {
            [self cotOption:randNumb];
        }
    }
    
    numb = nil;
    while (numb == nil)
    {
        randNumb = arc4random()%16;
        if (quad122)
        {
            [self quad1Option:randNumb];
        }
        if (quad222)
        {
            [self quad2Option:randNumb];
        }
        if (quad322)
        {
            [self quad3Option:randNumb];
        }
        if (quad422)
        {
            [self quad4Option:randNumb];
        }
    }
    
    [self moveUp];
    collect = [[NSString alloc] initWithFormat:@"%@ (%@)",func, numb];
    answer3 = [self calcAnswer:func];
    question5.text = collect;
    [self setButtonTitles];
}

-(void) sineOption:(NSInteger)sineOkay
{
    if (sineOkay == 1)
    {
        func = @"sin";
    }
}
-(void) cosOption:(NSInteger)cosOkay
{
    if (cosOkay == 0)
    {
        func = @"cos";
    }
}
-(void) tanOption:(NSInteger)tanOkay
{
    if (tanOkay == 2)
    {
        func = @"tan";
    }
}
-(void) cscOption:(NSInteger)cscOkay
{
    if (cscOkay == 3)
    {
        func = @"csc";
    }
}
-(void) secOption:(NSInteger)secOkay
{
    if (secOkay == 4)
    {
        func = @"sec";
    }
    
}
-(void) cotOption:(NSInteger)cotOkay
{
    if (cotOkay == 5)
    {
        func = @"cot";
    }
}
-(void) quad1Option:(NSInteger)quad1Okay
{
    if (quad1Okay == 0)
    {
        numb = @"∏/6";
    }
    else if (quad1Okay == 1)
    {
        numb = @"∏/4";
    }
    else if (quad1Okay == 2)
    {
        numb = @"∏/3";
    }
    else if (quad1Okay == 3)
    {
        numb = @"0";
    }
}
-(void) quad2Option:(NSInteger)quad2Okay
{
    if (quad2Okay == 4)
    {
        numb = @"∏/2";
    }
    else if (quad2Okay == 5)
    {
        numb = @"2∏/3";
    }
    else if (quad2Okay == 6)
    {
        numb = @"3∏/4";
    }
    else if (quad2Okay == 7)
    {
        numb = @"5∏/6";
    }
}
-(void) quad3Option:(NSInteger)quad3Okay
{
    if (quad3Okay == 8)
    {
        numb = @"∏";
    }
    else if (quad3Okay == 9)
    {
        numb = @"7∏/6";
    }
    else if (quad3Okay == 10)
    {
        numb = @"5∏/4";
    }
    else if (quad3Okay == 11)
    {
        numb = @"4∏/3";
    }
}
-(void) quad4Option:(NSInteger)quad4Okay
{
    if (quad4Okay == 12)
    {
        numb = @"3∏/2";
    }
    else if (quad4Okay == 13)
    {
        numb = @"5∏/3";
    }
    else if (quad4Okay == 14)
    {
        numb = @"7∏/4";
    }
    else if (quad4Okay == 15)
    {
        numb = @"11∏/6";
    }
}

-(void) setButtonTitles
{
    [self setUpWrongButtons];
    newRandNumb = arc4random()%4;
    correctAnswer3 = newRandNumb;
    if (newRandNumb == 0)
    {
        [answerA setTitle:answer forState:UIControlStateNormal];
        [answerB setTitle:firstButton forState:UIControlStateNormal];
        [answerC setTitle:thirdButton forState:UIControlStateNormal];
        [answerD setTitle:fourthButton forState:UIControlStateNormal];
    }
    else if (newRandNumb == 1)
    {
        [answerA setTitle:secondButton forState:UIControlStateNormal];
        [answerB setTitle:answer forState:UIControlStateNormal];
        [answerC setTitle:thirdButton forState:UIControlStateNormal];
        [answerD setTitle:fourthButton forState:UIControlStateNormal];
    }
    else if (newRandNumb == 2)
    {
        [answerA setTitle:secondButton forState:UIControlStateNormal];
        [answerB setTitle:firstButton forState:UIControlStateNormal];
        [answerC setTitle:answer forState:UIControlStateNormal];
        [answerD setTitle:fourthButton forState:UIControlStateNormal];
    }
    else if (newRandNumb == 3)
    {
        [answerA setTitle:secondButton forState:UIControlStateNormal];
        [answerB setTitle:firstButton forState:UIControlStateNormal];
        [answerC setTitle:thirdButton forState:UIControlStateNormal];
        [answerD setTitle:answer forState:UIControlStateNormal];
    }
}

// get the values for the incorrect answers on other 3  buttons
-(void) calcRandomFunc
{
    wrongRandom = arc4random()%6;
    randNumb = arc4random()%16;
    if (wrongRandom == 0)
    {
        wrongString = @"sin";
    }
    else if (wrongRandom == 1)
    {
        wrongString = @"cos";
    }
    else if (wrongRandom == 2)
    {
        wrongString = @"tan";
    }
    else if (wrongRandom == 3)
    {
        wrongString = @"csc";
    }
    else if (wrongRandom == 4)
    {
        wrongString = @"sec";
    }
    else
    {
        wrongString = @"cot";
    }
    
}

-(void) setUpWrongButtons
{
    
    [self calcRandomFunc];
    firstButton = [self calcAnswer:wrongString];
    while (firstButton == answer)
    {
        [self calcRandomFunc];
        firstButton = [self calcAnswer:wrongString];
    }
    [self calcRandomFunc];
    secondButton = [self calcAnswer:wrongString];
    while ((secondButton == firstButton) || (secondButton == answer))
    {
        [self calcRandomFunc];
        secondButton = [self calcAnswer:wrongString];
    }
    [self calcRandomFunc];
    thirdButton = [self calcAnswer:wrongString];
    while ((thirdButton == answer) || (thirdButton == firstButton) || (thirdButton == secondButton))
    {
        [self calcRandomFunc];
        thirdButton = [self calcAnswer:wrongString];
    }
    [self calcRandomFunc];
    fourthButton = [self calcAnswer:wrongString];
    while ((fourthButton == answer) || (fourthButton == firstButton) || (fourthButton == secondButton) || (fourthButton == thirdButton))
    {
        [self calcRandomFunc];
        fourthButton = [self calcAnswer:wrongString];
    }
    
}

-(id) calcAnswer:(NSString *)Chooser
{
    if (Chooser == @"sin")
    {
        if (randNumb == 0)
        {
            outPut = SIN0;
        }
        else if (randNumb == 1)
        {
            outPut = SIN1;
        }
        else if (randNumb == 2)
        {
            outPut = SIN2;
        }
        else if (randNumb == 3)
        {
            outPut = SIN3;
        }
        else if (randNumb == 4)
        {
            outPut = SIN4;
        }
        else if (randNumb == 5)
        {
            outPut = SIN5;
        }
        else if (randNumb == 6)
        {
            outPut = SIN6;
        }
        else if (randNumb == 7)
        {
            outPut = SIN7;
        }
        else if (randNumb == 8)
        {
            outPut = SIN8;
        }
        else if (randNumb == 9)
        {
            outPut = SIN9;
        }
        else if (randNumb == 10)
        {
            outPut = SIN10;
        }
        else if (randNumb == 11)
        {
            outPut = SIN11;
        }
        else if (randNumb == 12)
        {
            outPut = SIN12;
        }
        else if (randNumb == 13)
        {
            outPut = SIN13;
        }
        else if (randNumb == 14)
        {
            outPut = SIN14;
        }
        else 
        {
            outPut = SIN15;
        }
        
    }
    else if (Chooser == @"cos")
    {
        if (randNumb == 0)
        {
            outPut = COS0;
        }
        else if (randNumb == 1)
        {
            outPut = COS1;
        }
        else if (randNumb == 2)
        {
            outPut = COS2;
        }
        else if (randNumb == 3)
        {
            outPut = COS3;
        }
        else if (randNumb == 4)
        {
            outPut = COS4;
        }
        else if (randNumb == 5)
        {
            outPut = COS5;
        }
        else if (randNumb == 6)
        {
            outPut = COS6;
        }
        else if (randNumb == 7)
        {
            outPut = COS7;
        }
        else if (randNumb == 8)
        {
            outPut = COS8;
        }
        else if (randNumb == 9)
        {
            outPut = COS9;
        }
        else if (randNumb == 10)
        {
            outPut = COS10;
        }
        else if (randNumb == 11)
        {
            outPut = COS11;
        }
        else if (randNumb == 12)
        {
            outPut = COS12;
        }
        else if (randNumb == 13)
        {
            outPut = COS13;
        }
        else if (randNumb == 14)
        {
            outPut = COS14;
        }
        else 
        {
            outPut = COS15;
        }
    }
    else if (Chooser == @"tan")
    {
        if (randNumb == 0)
        {
            outPut = TAN0;
        }
        else if (randNumb == 1)
        {
            outPut = TAN1;
        }
        else if (randNumb == 2)
        {
            outPut = TAN2;
        }
        else if (randNumb == 3)
        {
            outPut = TAN3;
        }
        else if (randNumb == 4)
        {
            outPut = TAN4;
        }
        else if (randNumb == 5)
        {
            outPut = TAN5;
        }
        else if (randNumb == 6)
        {
            outPut = TAN6;
        }
        else if (randNumb == 7)
        {
            outPut = TAN7;
        }
        else if (randNumb == 8)
        {
            outPut = TAN8;
        }
        else if (randNumb == 9)
        {
            outPut = TAN9;
        }
        else if (randNumb == 10)
        {
            outPut = TAN10;
        }
        else if (randNumb == 11)
        {
            outPut = TAN11;
        }
        else if (randNumb == 12)
        {
            outPut = TAN12;
        }
        else if (randNumb == 13)
        {
            outPut = TAN13;
        }
        else if (randNumb == 14)
        {
            outPut = TAN14;
        }
        else 
        {
            outPut = TAN15;
        }
        
    }
    else if (Chooser == @"csc")
    {
        if (randNumb == 0)
        {
            outPut = CSC0;
        }
        else if (randNumb == 1)
        {
            outPut = CSC1;
        }
        else if (randNumb == 2)
        {
            outPut = CSC2;
        }
        else if (randNumb == 3)
        {
            outPut = CSC3;
        }
        else if (randNumb == 4)
        {
            outPut = CSC4;
        }
        else if (randNumb == 5)
        {
            outPut = CSC5;
        }
        else if (randNumb == 6)
        {
            outPut = CSC6;
        }
        else if (randNumb == 7)
        {
            outPut = CSC7;
        }
        else if (randNumb == 8)
        {
            outPut = CSC8;
        }
        else if (randNumb == 9)
        {
            outPut = CSC9;
        }
        else if (randNumb == 10)
        {
            outPut = CSC10;
        }
        else if (randNumb == 11)
        {
            outPut = CSC11;
        }
        else if (randNumb == 12)
        {
            outPut = CSC12;
        }
        else if (randNumb == 13)
        {
            outPut = CSC13;
        }
        else if (randNumb == 14)
        {
            outPut = CSC14;
        }
        else 
        {
            outPut = CSC15;
        }
        
    }
    else if (Chooser == @"sec")
    {
        if (randNumb == 0)
        {
            outPut = SEC0;
        }
        else if (randNumb == 1)
        {
            outPut = SEC1;
        }
        else if (randNumb == 2)
        {
            outPut = SEC2;
        }
        else if (randNumb == 3)
        {
            outPut = SEC3;
        }
        else if (randNumb == 4)
        {
            outPut = SEC4;
        }
        else if (randNumb == 5)
        {
            outPut = SEC5;
        }
        else if (randNumb == 6)
        {
            outPut = SEC6;
        }
        else if (randNumb == 7)
        {
            outPut = SEC7;
        }
        else if (randNumb == 8)
        {
            outPut = SEC8;
        }
        else if (randNumb == 9)
        {
            outPut = SEC9;
        }
        else if (randNumb == 10)
        {
            outPut = SEC10;
        }
        else if (randNumb == 11)
        {
            outPut = SEC11;
        }
        else if (randNumb == 12)
        {
            outPut = SEC12;
        }
        else if (randNumb == 13)
        {
            outPut = SEC13;
        }
        else if (randNumb == 14)
        {
            outPut = SEC14;
        }
        else 
        {
            outPut = SEC15;
        }
        
    }
    else
    {
        if (randNumb == 0)
        {
            outPut = COT0;
        }
        else if (randNumb == 1)
        {
            outPut = COT1;
        }
        else if (randNumb == 2)
        {
            outPut = COT2;
        }
        else if (randNumb == 3)
        {
            outPut = COT3;
        }
        else if (randNumb == 4)
        {
            outPut = COT4;
        }
        else if (randNumb == 5)
        {
            outPut = COT5;
        }
        else if (randNumb == 6)
        {
            outPut = COT6;
        }
        else if (randNumb == 7)
        {
            outPut = COT7;
        }
        else if (randNumb == 8)
        {
            outPut = COT8;
        }
        else if (randNumb == 9)
        {
            outPut = COT9;
        }
        else if (randNumb == 10)
        {
            outPut = COT10;
        }
        else if (randNumb == 11)
        {
            outPut = COT11;
        }
        else if (randNumb == 12)
        {
            outPut = COT12;
        }
        else if (randNumb == 13)
        {
            outPut = COT13;
        }
        else if (randNumb == 14)
        {
            outPut = COT14;
        }
        else 
        {
            outPut = COT15;
        }
        
    }
    return outPut;
}

-(void) upDateResponse
{
    result.text = result2.text;
    if (result.text == @"BINGO!")
    {
        result.textColor = [UIColor greenColor];
    }
    else
    {
        result.textColor = [UIColor redColor];
    }
}

-(IBAction) ButtonA:(id)sender
{
    [self upDateResponse];
    if (correctAnswer3 == 0)
    {
        result2.text = @"BINGO!";
        result2.textColor = [UIColor greenColor];
        correctlyAnswered++;
    }
    else
    {
        result2.text = @"Oops!";
        result2.textColor = [UIColor redColor];
        inCorrectlyAnswered++;
    }
    [self setUp];
    totalQuestions++;
    [self alertSetUp];
}

-(IBAction) ButtonB:(id)sender
{
    [self upDateResponse];
    if (correctAnswer3 == 1)
    {
        result2.text = @"BINGO!";
        result2.textColor = [UIColor greenColor];
        correctlyAnswered++;
    }
    else
    {
        result2.text = @"Oops!";
        result2.textColor = [UIColor redColor];
        inCorrectlyAnswered++;
    }
    [self setUp];
    totalQuestions++;
    [self alertSetUp];
}

-(IBAction) ButtonC:(id)sender
{
    [self upDateResponse];
    if (correctAnswer3 == 2)
    {
        result2.text = @"BINGO!";
        result2.textColor = [UIColor greenColor];
        correctlyAnswered++;
    }
    else
    {
        result2.text = @"Oops!";
        result2.textColor = [UIColor redColor];
        inCorrectlyAnswered++;
    }
    [self setUp];
    totalQuestions++;
    [self alertSetUp];
}

-(IBAction) ButtonD:(id)sender
{
    [self upDateResponse];
    if (correctAnswer3 == 3)
    {
        result2.text = @"BINGO!";
        result2.textColor = [UIColor greenColor];
        correctlyAnswered++;
    }
    else
    {
        result2.text = @"Oops!";
        result2.textColor = [UIColor redColor];
        inCorrectlyAnswered++;
    }
    [self setUp];
    totalQuestions++;
    [self alertSetUp];
}

-(void) alertSetUp
{
	if (totalQuestions > 19)
	{
		NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
		endTime = [[NSDate alloc] init];
		elapsedTime = [startTime timeIntervalSinceDate:endTime];
		UIAlertView *alertDialog;
		
		finalScore = (15 * inCorrectlyAnswered) + fabs(elapsedTime);
		
		[userDefaults setFloat:finalScore forKey:TRIGSCORE];
		
		if ([userDefaults floatForKey:TRIGSCORE9] > 0)
		{
			totalHighScore = [userDefaults floatForKey:TRIGSCORE9];
		}
		else {
			totalHighScore = 2434394;
		}
		
		
		if (totalHighScore > finalScore)
		{
			numbRight = [[NSString alloc] initWithFormat:@"you got %i right!! And you missed %i problems. In %1.2f seconds!! your final score was %1.2f!!", correctlyAnswered, inCorrectlyAnswered, fabs(elapsedTime), finalScore];
			
			alertDialog = [[UIAlertView alloc]
						   initWithTitle:@"New High Score!!" 
						   message:numbRight
						   delegate:self
						   cancelButtonTitle:@"Go Home"
						   otherButtonTitles:@"Again", @"Save Score", nil];
			[alertDialog show];
		}
		else 
		{
			numbRight = [[NSString alloc] initWithFormat:@"you got %i right!! And you missed %i problems. In %1.2f seconds!! your final score was %1.2f!!", correctlyAnswered, inCorrectlyAnswered, fabs(elapsedTime), finalScore];
			alertDialog = [[UIAlertView alloc]
						   initWithTitle:@"Congragulations!!" 
						   message:numbRight
						   delegate:self
						   cancelButtonTitle:@"Go Home"
						   otherButtonTitles:@"Again", nil];
			[alertDialog show];
		}
	}
}

-(void) alertView:(UIAlertView *)alertView
clickedButtonAtIndex:(NSInteger)buttonIndex
{
	buttonTitle = [alertView buttonTitleAtIndex:buttonIndex];
	if ([buttonTitle isEqualToString:@"Go Home"])
	{
		[self.navigationController popViewControllerAnimated:YES];
	}
	else if ([buttonTitle isEqualToString:@"Save Score"])
	{
		[highScoreCustom alertOn];
        [self.view insertSubview:highScoreCustom.view atIndex:121];
	}
	else 
    {
		[self clear];
		[self setUp];
        [self setUp];
        [self setUp];
	}
    
}

-(void) clear
{
    question1.text = @"";
    question2.text = @"";
    question3.text = @"";
    question4.text = @"";
    question5.text = @"";
    
    equals.text = @"";
    equals2.text = @"";
    equals3.text = @"";
    equals4.text = @"";
    equals5.text = @"";
    
    questionMark.text = @"";
    questionMark2.text = @"";
    questionMark3.text = @"";
    questionMark4.text = @"";
    questionMark5.text = @"";
    
    answer = 0;
    answer2 = 0;
    
    result.text = @"";
    result2.text = @"";
    
    correctAnswer = 0;
    correctAnswer2 = 0;
    
    startTime = [[NSDate alloc] init];
    totalQuestions = 0;
    correctlyAnswered = 0;
    inCorrectlyAnswered = 0;
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
    self.navigationItem.title = @"Custom Game";
    startTime = [[NSDate alloc] init];
    totalQuestions = 0;
    correctlyAnswered = 0;
    inCorrectlyAnswered = 0;
    [self setUp];
    [self setUp];
    [self setUp];

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
