//
//  GamePage.m
//  BrainBuilderPro
//
//  Created by Fred Kneeland on 6/25/13.
//  Copyright (c) 2013 BLADE Enterprises LLC. All rights reserved.
//

#import "GamePage.h"
#import "LimitsHolder.h"
#import "FirstDervHolder.h"
#import "SecondDervHolder.h"
#import "IndefiniteIntegralHolder.h"
#import "DefiniteIntegralHolder.h"
#import "CalcHighScores.h"

@interface GamePage ()

@end

@implementation GamePage
@synthesize integral, derivitive, function, firstQuestionMark, secondQuestionMark, limit, xapproaching, xValue, equals, upperLimit, lowerLimit, question, rightAnswers, wrongAnswers;
@synthesize object1, object2, object3, object4, object5, highScores;
@synthesize buttonA, buttonB, buttonC, buttonD;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction) firstButton:(id)sender
{
    if (correctScoreHolder == 1)
    {
        rightCounter++;
    }
    else
    {
        wrongCounter++;
    }
    rightAnswers.text = [[NSString alloc] initWithFormat:@"%i", rightCounter];
    wrongAnswers.text = [[NSString alloc] initWithFormat:@"%i", wrongCounter];
    [self upDate];
}

-(IBAction) secondButton:(id)sender
{
    if (correctScoreHolder == 2)
    {
        rightCounter++;
    }
    else
    {
        wrongCounter++;
    }
    rightAnswers.text = [[NSString alloc] initWithFormat:@"%i", rightCounter];
    wrongAnswers.text = [[NSString alloc] initWithFormat:@"%i", wrongCounter];
    [self upDate];
}

-(IBAction) thirdButton:(id)sender
{
    if (correctScoreHolder == 3)
    {
        rightCounter++;
    }
    else
    {
        wrongCounter++;
    }
    rightAnswers.text = [[NSString alloc] initWithFormat:@"%i", rightCounter];
    wrongAnswers.text = [[NSString alloc] initWithFormat:@"%i", wrongCounter];
    [self upDate];
}

-(IBAction) fourthButton:(id)sender
{
    if (correctScoreHolder == 4)
    {
        rightCounter++;
    }
    else
    {
        wrongCounter++;
    }
    rightAnswers.text = [[NSString alloc] initWithFormat:@"%i", rightCounter];
    wrongAnswers.text = [[NSString alloc] initWithFormat:@"%i", wrongCounter];
    [self upDate];
}

-(void) setUpButtons
{
    if (secondRandom == 0)
    {
        [buttonA setTitle:Button1 forState:UIControlStateNormal];
        [buttonB setTitle:Button2 forState:UIControlStateNormal];
        [buttonC setTitle:Button3 forState:UIControlStateNormal];
        [buttonD setTitle:Button4 forState:UIControlStateNormal];
        correctScoreHolder = 1;
    }
    else if (secondRandom == 1)
    {
        [buttonB setTitle:Button1 forState:UIControlStateNormal];
        [buttonC setTitle:Button2 forState:UIControlStateNormal];
        [buttonD setTitle:Button3 forState:UIControlStateNormal];
        [buttonA setTitle:Button4 forState:UIControlStateNormal];
        correctScoreHolder = 2;
    }
    else if (secondRandom == 2)
    {
        [buttonC setTitle:Button1 forState:UIControlStateNormal];
        [buttonD setTitle:Button2 forState:UIControlStateNormal];
        [buttonA setTitle:Button3 forState:UIControlStateNormal];
        [buttonB setTitle:Button4 forState:UIControlStateNormal];
        correctScoreHolder = 3;
    }
    else
    {
        [buttonD setTitle:Button1 forState:UIControlStateNormal];
        [buttonA setTitle:Button2 forState:UIControlStateNormal];
        [buttonB setTitle:Button3 forState:UIControlStateNormal];
        [buttonC setTitle:Button4 forState:UIControlStateNormal];
        correctScoreHolder = 4;
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
        [highScores alertOn];
        [self.view insertSubview:highScores.view atIndex:121];
	}
	else
    {
        [self setUp];
	}
    
}

-(void) alertSetUp
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    endTime = [[NSDate alloc] init];
    elapsedTime = [startTime timeIntervalSinceDate:endTime];
    UIAlertView *alertDialog;
    
    finalScore = (WRONGANSWERPENALTY * wrongCounter) + fabs(elapsedTime);
    
    [userDefaults setFloat:finalScore forKey:CALCSCORE];
    if (chooser == 1)
    {
        [userDefaults setObject:@"Limit" forKey:CALCTYPE];
    }
    else if (chooser == 2)
    {
        [userDefaults setObject:@"Derivitive" forKey:CALCTYPE];
    }
    else if (chooser == 3)
    {
        [userDefaults setObject:@"Derivitive" forKey:CALCTYPE];
    }
    else if (chooser == 4)
    {
        [userDefaults setObject:@"Integral" forKey:CALCTYPE];
    }
    else
    {
        [userDefaults setObject:@"Integral" forKey:CALCTYPE];
    }
    
    if ([userDefaults floatForKey:CALCSCORE9] > 0)
    {
        totalHighScore = [userDefaults floatForKey:CALCSCORE9];
    }
    else {
        totalHighScore = 2434394;
    }
    
    if (totalHighScore > finalScore)
    {
        numbRight = [[NSString alloc] initWithFormat:@"you got %i right!! And you missed %i problems. In %1.2f seconds!! your final score was %1.2f!!", rightCounter, wrongCounter, fabs(elapsedTime), finalScore];
        
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
        numbRight = [[NSString alloc] initWithFormat:@"you got %i right!! And you missed %i problems. In %1.2f seconds!! your final score was %1.2f!!", rightCounter, wrongCounter, fabs(elapsedTime), finalScore];
        alertDialog = [[UIAlertView alloc]
                       initWithTitle:@"Congragulations!!"
                       message:numbRight
                       delegate:self
                       cancelButtonTitle:@"Go Home"
                       otherButtonTitles:@"Again", nil];
        [alertDialog show];
    }
}

-(void) setUp
{
    rightCounter = 0;
    wrongCounter = 0;
    totalCounter = 0;
    rightAnswers.text = @"0";
    wrongAnswers.text = @"0";
    startTime = [[NSDate alloc] init];
    [self upDate];
}

-(void) upDate
{
    totalCounter++;
    if (totalCounter > 10)
    {
        [self alertSetUp];
    }
    randomNumb = arc4random()%99 + 1;
    thirdRandom = arc4random()%2 + 1;
    secondRandom = arc4random()%4;
    fourthRandomNumber = 1;
    
    if (chooser == 1)
    {
        [object1 setUpProblem:randomNumb];
        QuestionVal = [object1 question:randomNumb];
        LimPreVal = [object1 limit:randomNumb];
        Button1 = ([object1 rightAnswer:randomNumb]);
        Button2 = ([object1 firstWrongAnswer:randomNumb]);
        Button3 = ([object1 secondWrongAnswer:randomNumb]);
        Button4 = ([object1 thirdWrongAnswer:randomNumb]);
    }
    else if (chooser == 2)
    {
        [object2 setUpProblem:randomNumb];
        QuestionVal = [object2 question:randomNumb];
        Button1 = ([object2 rightAnswer:randomNumb]);
        Button2 = ([object2 firstWrongAnswer:randomNumb]);
        Button3 = ([object2 secondWrongAnswer:randomNumb]);
        Button4 = ([object2 thirdWrongAnswer:randomNumb]);
    }
    else if (chooser == 3)
    {
        [object3 setUpProblem:randomNumb];
        QuestionVal = [object3 question:randomNumb];
        Button1 = ([object3 rightAnswer:randomNumb]);
        Button2 = ([object3 firstWrongAnswer:randomNumb]);
        Button3 = ([object3 secondWrongAnswer:randomNumb]);
        Button4 = ([object3 thirdWrongAnswer:randomNumb]);
    }
    else if (chooser == 4)
    {
        [object4 setUpProblem:fourthRandomNumber];
        QuestionVal = [object4 question:fourthRandomNumber];
        Button1 = ([object4 rightAnswer:fourthRandomNumber]);
        Button2 = ([object4 firstWrongAnswer:fourthRandomNumber]);
        Button3 = ([object4 secondWrongAnswer:fourthRandomNumber]);
        Button4 = ([object4 thirdWrongAnswer:fourthRandomNumber]);
    }
    else
    {
        [object5 setUpProblem:thirdRandom];
        QuestionVal = [object5 question:thirdRandom];
        UpperLimitVal = [object5 UpperLimit:thirdRandom];
        LowerLimitVal = [object5 LowerLimit:thirdRandom];
        Button1 = ([object5 rightAnswer:thirdRandom]);
        Button2 = ([object5 firstWrongAnswer:thirdRandom]);
        Button3 = ([object5 secondWrongAnswer:thirdRandom]);
        Button4 = ([object5 thirdWrongAnswer:thirdRandom]);
    }
    
    [self SetUpLabels:chooser];
    [self setUpButtons];
}



+(void) GameChoice:(NSInteger)choice
{
    chooser = choice;
}

-(void) SetUpLabels:(NSInteger)choice
{
    question.text = QuestionVal;
    
    //////////// limits //////////
    if (chooser == 1)
    {
        limit.text = @"Lim";
        xapproaching.text = @"x→";
        xValue.text = LimPreVal;
    }
    else
    {
        limit.text = @"";
        xapproaching.text = @"";
        xValue.text = @"";
    }
    
    //////////// derivitive //////////////
    if (chooser == 2)
    {
        function.text = @"F(x) =";
        derivitive.text = @"F'(x) = ";
        secondQuestionMark.text = @"?";
        equals.text = @"";
        firstQuestionMark.text = @"";
    }
    else if (chooser == 3)
    {
        function.text = @"F(x) =";
        derivitive.text = @"F''(x) = ";
        secondQuestionMark.text = @"?";
        equals.text = @"";
        firstQuestionMark.text = @"";
    }
    else
    {
        function.text = @"";
        derivitive.text = @"";
        secondQuestionMark.text = @"";
    }
    
    /////////// Integral /////////////
    if (chooser == 4)
    {
        upperLimit.text = @"";
        lowerLimit.text = @"";
        integral.text = @"  ∫";
    }
    else if (chooser == 5)
    {
        upperLimit.text = UpperLimitVal;
        lowerLimit.text = LowerLimitVal;
        integral.text = @"  ∫";
    }
    else
    {
        upperLimit.text = @"";
        lowerLimit.text = @"";
        integral.text = @"";
    }
}

- (void)viewDidLoad
{
    //[self SetUpLabels:chooser];
    [self setUp];
    if (chooser == 1)
    {
        self.navigationItem.title = @"Limits";
        [buttonA.titleLabel setFont:[UIFont systemFontOfSize:20]];
    }
    else if (chooser == 2)
    {
        self.navigationItem.title = @"First Derivative";
    }
    else if (chooser == 3)
    {
        self.navigationItem.title = @"Second Derivative";
    }
    else if (chooser == 4)
    {
        self.navigationItem.title = @"Integral";
    }
    else
    {
        self.navigationItem.title = @"Definite Integral";
    }
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
