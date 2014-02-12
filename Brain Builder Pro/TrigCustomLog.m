//
//  TrigCustomLog.m
//  BrainBuilderPro
//
//  Created by Fred Kneeland on 3/16/12.
//  Copyright (c) 2012 BLADE Enterprises LLC. All rights reserved.
//

#import "TrigCustomLog.h"
#import "TrigHighScoreQuick.h"

@implementation TrigCustomLog
@synthesize baser1;
@synthesize baser2;
@synthesize baser3;
@synthesize loger1;
@synthesize loger2;
@synthesize loger3;
@synthesize powerer1;
@synthesize powerer2;
@synthesize powerer3;
@synthesize conclusio1;
@synthesize conclusio2;
@synthesize conclusio3;
@synthesize graduer;
@synthesize buttonA;
@synthesize buttonB;
@synthesize buttonC;
@synthesize buttonD;
@synthesize equals;
@synthesize questionMark;
@synthesize highScore;


-(void) learnDaSettigs:(NSInteger)bases: (NSInteger)powers: (BOOL)negExponents: (BOOL)posExponents: (BOOL)logars
{
    negativeExpo = negExponents;
    base = bases;
    power = powers;
    positiveExpo = posExponents;
    logarithmic= logars;
}

-(void) AlertSetUp
{
    //if (totalAnswered
    if (totalAnswered > 24)
	{
		NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
		endTime = [[NSDate alloc] init];
		elapsedTime = [startTime timeIntervalSinceDate:endTime];
		UIAlertView *alertDialog;
		
		finalScore = (12 * inCorrectlyAnswered) + fabs(elapsedTime);
		
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
		[highScore alertOn];
        [self.view insertSubview:highScore.view atIndex:121];
	}
	else 
    {
        totalAnswered = 0;
        correctlyAnswered = 0;
        inCorrectlyAnswered = 0;
		[self clear];
		[self setUp];
        [self moveUp];
        [self setUp];
        [self setUp];
	}
    
}

-(void) clear
{
    conclusio1.text = @"";
    conclusio2.text = @"";
    conclusio3.text = @"";
    baser1.text = @"";
    baser2.text = @"";
    baser3.text = @"";
    powerer1.text = @"";
    powerer2.text = @"";
    powerer3.text = @"";
    loger1.text = @"";
    loger2.text = @"";
    loger3.text = @"";
    graduer.text = @"";
    equals.text = @"";
    questionMark.text = @"";
}


-(void) setUpSpecial
{
    equals.text = @"=";
    questionMark.text = @"?";
}

-(void) moveUp
{
    conclusio1.text = conclusio2.text;
    powerer1.text = powerer2.text;
    baser1.text = baser2.text;
    loger1.text = loger2.text;
    conclusio2.text = conclusio3.text;
    powerer2.text = powerer3.text;
    loger2.text = loger3.text;
    baser2.text = baser3.text;
    
    // update the saved Values for wrong and right button labels
    daAnswer2 = daAnswer;
    wrongButton12 = wrongButton1;
    wrongButton22 = wrongButton2;
    wrongButton32 = wrongButton3;
}

-(IBAction) buttonAPressed:(id)sender
{
    if (knowIfRightlyAnswered == 1)
    {
        correctlyAnswered++;
        graduer.text = @"Bingo!";
        graduer.textColor = [UIColor greenColor];
    }
    else
    {
        inCorrectlyAnswered++;
        graduer.text = @"Opps:(";
        graduer.textColor = [UIColor redColor];
    }
    totalAnswered++;
    [self moveUp];
    [self setUp];
    [self setUpSpecial];
    [self setUpButtons];
    [self AlertSetUp];
}

-(IBAction) buttonBPressed:(id)sender
{
    if (knowIfRightlyAnswered == 2)
    {
        correctlyAnswered++;
        graduer.text = @"Bingo!";
        graduer.textColor = [UIColor greenColor];
    }
    else
    {
        inCorrectlyAnswered++;
        graduer.text = @"Opps:(";
        graduer.textColor = [UIColor redColor];
    }
    totalAnswered++;
    [self moveUp];
    [self setUp];
    [self setUpSpecial];
    [self setUpButtons];
    [self AlertSetUp];
}
-(IBAction) buttonCPressed:(id)sender
{
    if (knowIfRightlyAnswered == 3)
    {
        correctlyAnswered++;
        graduer.text = @"Bingo!";
        graduer.textColor = [UIColor greenColor];
    }
    else
    {
        inCorrectlyAnswered++;
        graduer.text = @"Opps:(";
        graduer.textColor = [UIColor redColor];
    }
    totalAnswered++;
    [self moveUp];
    [self setUp];
    [self setUpSpecial];
    [self setUpButtons];
    [self AlertSetUp];
}
-(IBAction) buttonDPressed:(id)sender
{
    if (knowIfRightlyAnswered == 4)
    {
        correctlyAnswered++;
        graduer.text = @"Bingo!";
        graduer.textColor = [UIColor greenColor];
    }
    else
    {
        inCorrectlyAnswered++;
        graduer.text = @"Opps:(";
        graduer.textColor = [UIColor redColor];
    }
    totalAnswered++;
    [self moveUp];
    [self setUp];
    [self setUpSpecial];
    [self setUpButtons];
    [self AlertSetUp];
}

-(void) setUp
{
    if (power > 1)
    {
        thePowerVar = (arc4random()%power) + 1;
    }
    else
    {
        thePowerVar = 1;
    }
    
    if (base > 1)
    {
        theBaseVar = (arc4random()%base) + 1;
    }
    else
    {
        theBaseVar = 2;
    }
    if (theBaseVar == 1)
    {
        theBaseVar = 2;
    }
    
    check = 0;
    while (check == 0)
    {
        randomAttempt = arc4random()%3;
        if ((randomAttempt == 0) && (logarithmic))
        {
            check = 1;
            logerLabel = @"Log";
            powerLabel = @"";
            baseLabel = [[NSString alloc] initWithFormat:@"%i", theBaseVar];
            specialLogVar = pow(theBaseVar, thePowerVar);
            conclusionLabel = [[NSString alloc] initWithFormat:@"%i", specialLogVar];
            theAnswer = thePowerVar;
            daAnswer = [[NSString alloc] initWithFormat:@"%i", theAnswer];
            incorrect1 = theAnswer;
            while (incorrect1 == theAnswer)
            {
                incorrect1 = (arc4random()%(power + 5)) + 1;
            }
            incorrect2 = theAnswer;
            while (incorrect2 == theAnswer)
            {
                incorrect2 = (arc4random()%(power + 5)) + 1;
            }
            incorrect3 = theAnswer;
            while (incorrect3 == theAnswer) 
            {
                incorrect3 = (arc4random()%(power + 5)) + 1;
            }
            
            wrongButton1 = [[NSString alloc] initWithFormat:@"%i", incorrect1];
            wrongButton2 = [[NSString alloc] initWithFormat:@"%i", incorrect2];
            wrongButton3 = [[NSString alloc] initWithFormat:@"%i", incorrect3];
        }
        else
        {
            logerLabel = [[NSString alloc] initWithFormat:@"%i", theBaseVar];
            baseLabel = @"";
            conclusionLabel = @"";
        }
        if (negativeExpo && (randomAttempt == 1))
        {
            check = 1;
            powerLabel = [[NSString alloc] initWithFormat:@"-%i", thePowerVar];
            daAnswer = [[NSString alloc] initWithFormat:@"1/%i", ((int)pow(theBaseVar, abs(thePowerVar)))];
            incorrect1 = ((int)pow(theBaseVar, abs(thePowerVar))) + (arc4random()%25 + 1);
            incorrect2 = arc4random()%1000 + 1;
            incorrect3 = abs((((int)pow(theBaseVar, abs(thePowerVar))) - (arc4random()%24355 + 1))) + 1;
            wrongButton1 = [[NSString alloc] initWithFormat:@"1/%i", incorrect1];
            wrongButton2 = [[NSString alloc] initWithFormat:@"1/%i", incorrect2];
            wrongButton3 = [[NSString alloc] initWithFormat:@"1/%i", incorrect3];
        }
        else if (positiveExpo && (randomAttempt == 2))
        {
            check = 1;
            powerLabel = [[NSString alloc] initWithFormat:@"%i", thePowerVar];
            theAnswer = pow(theBaseVar, thePowerVar);
            daAnswer = [[NSString alloc] initWithFormat:@"%i", theAnswer];
            
            incorrect1 = theAnswer;
            while (incorrect1 == theAnswer)
            {
                incorrect1 = pow(arc4random()%(power + 2), arc4random()%(base + 2));
            }
            incorrect2 = theAnswer;
            while (incorrect2 == theAnswer)
            {
                incorrect2 = pow(arc4random()%(power + 2), arc4random()%(base + 2));            
            }
            incorrect3 = theAnswer;
            while (incorrect3 == theAnswer) 
            {
                incorrect3 = pow(arc4random()%(power + 2), arc4random()%(base + 2));
            }
            
            wrongButton1 = [[NSString alloc] initWithFormat:@"%i", incorrect1];
            wrongButton2 = [[NSString alloc] initWithFormat:@"%i", incorrect2];
            wrongButton3 = [[NSString alloc] initWithFormat:@"%i", incorrect3];
        }
    }
    loger3.text = logerLabel;
    baser3.text = baseLabel;
    conclusio3.text = conclusionLabel;
    powerer3.text = powerLabel;
}

-(void) setUpButtons
{
    int randhelper;
    randhelper = arc4random()%4;
    if (randhelper == 0)
    {
        [buttonA setTitle:daAnswer2 forState:UIControlStateNormal];
        [buttonB setTitle:wrongButton12 forState:UIControlStateNormal];
        [buttonC setTitle:wrongButton22 forState:UIControlStateNormal];
        [buttonD setTitle:wrongButton32 forState:UIControlStateNormal];
        knowIfRightlyAnswered = 1;
    }
    else if (randhelper == 1)
    {
        [buttonB setTitle:daAnswer2 forState:UIControlStateNormal];
        [buttonA setTitle:wrongButton12 forState:UIControlStateNormal];
        [buttonC setTitle:wrongButton22 forState:UIControlStateNormal];
        [buttonD setTitle:wrongButton32 forState:UIControlStateNormal];
        knowIfRightlyAnswered = 2;
    }
    else if (randhelper == 2)
    {
        [buttonC setTitle:daAnswer2 forState:UIControlStateNormal];
        [buttonB setTitle:wrongButton12 forState:UIControlStateNormal];
        [buttonA setTitle:wrongButton22 forState:UIControlStateNormal];
        [buttonD setTitle:wrongButton32 forState:UIControlStateNormal];
        knowIfRightlyAnswered = 3;
    }
    else
    {
        [buttonD setTitle:daAnswer2 forState:UIControlStateNormal];
        [buttonB setTitle:wrongButton12 forState:UIControlStateNormal];
        [buttonC setTitle:wrongButton22 forState:UIControlStateNormal];
        [buttonA setTitle:wrongButton32 forState:UIControlStateNormal];
        knowIfRightlyAnswered = 4;
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
    [self clear];
    self.navigationItem.title = @"Exponential!";
    [self setUp];
    [self moveUp];
    [self setUpButtons];
    [self setUp];
    startTime = [[NSDate alloc] init];
    totalAnswered = 0;
    correctlyAnswered = 0;
    inCorrectlyAnswered = 0;
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
