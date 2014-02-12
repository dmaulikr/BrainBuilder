//
//  CustomGame.m
//  BrainBuilderHistory
//
//  Created by Fred Kneeland on 6/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CustomGame.h"
#import "DatesQuestions.h"
#import "PlacesQuestions.h"
#import "BattlesQuestions.h"
#import "PeoplesQuestions.h"
#import "HighScoreCustom.h"

@implementation CustomGame
@synthesize Question1, Question2;
@synthesize dateQuestions, placesQuestions, battlesQuestions, peoplesQuestions, highScoreCustom;
@synthesize buttonA, buttonB, buttonC, buttonD;
@synthesize rightAnswered, wrongAnswered;

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

-(void) moveUp

{
    Question2.text = Question1.text;
    question2 = question;
    rightAnswer2 = rightAnswer;
    firstWrongAnswer2 = firstWrongAnswer;
    secondWrongAnswer2 = secondWrongAnswer;
    thirdWrongAnswer2 = thirdWrongAnswer;
    rightChoice2 = rightChoice;
    
    // randomly select which button will have the right answer
    buttonPicker = arc4random()%4;
    rightChoice = buttonPicker;
    if (buttonPicker == 0)
    {
        [self giveButtonsTheirNames:rightAnswer2 :firstWrongAnswer2 :secondWrongAnswer2 :thirdWrongAnswer2];
    }
    else if (buttonPicker == 1)
    {
        [self giveButtonsTheirNames:thirdWrongAnswer2 :rightAnswer2 :firstWrongAnswer2 :secondWrongAnswer2];
    }
    else if (buttonPicker == 2)
    {
        [self giveButtonsTheirNames:secondWrongAnswer2 :thirdWrongAnswer2 :rightAnswer2 :firstWrongAnswer2];
    }
    else
    {
        [self giveButtonsTheirNames:firstWrongAnswer2 :secondWrongAnswer2 :thirdWrongAnswer2 :rightAnswer2];
    }
    
}

-(void) objectChoice:(BOOL)firstObject: (BOOL)secondObject: (BOOL)thirdObject: (BOOL)fourthObject
{
    objectOne = firstObject;
    objectTwo = secondObject;
    objectThree = thirdObject;
    objectFour = fourthObject;
}

-(void) setUp
{
    int counter;
    counter = 1;
    [self moveUp];
    while (true)
    {
        counter++;
        objectChooser = arc4random()%4;
        if (objectChooser == 0 && objectOne)
        {
            break;
        }
        else if (objectChooser == 1 && objectTwo)
        {
            break;
        }
        else if (objectChooser == 2 && objectThree)
        {
            break;
        }
        else if (objectChooser == 3 && objectFour)
        {
            break;
        }
        if (counter > 50)
        {
            objectChooser = 0;
            break;
        }
    }
    questionChooser = arc4random()%2;
    if (objectChooser == 0)
    {
        // assign the right answers to variables
        question = [dateQuestions getQuestion:questionChooser];
        rightAnswer = [dateQuestions getRightAnswer:questionChooser];
        firstWrongAnswer = [dateQuestions getWrongAnswers:questionChooser];
        secondWrongAnswer = [dateQuestions getWrongAnswers2:questionChooser];
        thirdWrongAnswer = [dateQuestions getWrongAnswers3:questionChooser];
        
    }
    else if (objectChooser == 1)
    {
        // assign the right answers to variables
        question = [placesQuestions getQuestion:questionChooser];
        rightAnswer = [placesQuestions getRightAnswer:questionChooser];
        firstWrongAnswer = [placesQuestions getWrongAnswers:questionChooser];
        secondWrongAnswer = [placesQuestions getWrongAnswers2:questionChooser];
        thirdWrongAnswer = [placesQuestions getWrongAnswers3:questionChooser];
    }
    else if (objectChooser == 2)
    {
        // assign the right answers to variables
        question = [battlesQuestions getQuestion:questionChooser];
        rightAnswer = [battlesQuestions getRightAnswer:questionChooser];
        firstWrongAnswer = [battlesQuestions getWrongAnswers:questionChooser];
        secondWrongAnswer = [battlesQuestions getWrongAnswers2:questionChooser];
        thirdWrongAnswer = [battlesQuestions getWrongAnswers3:questionChooser];
    }
    else
    {
        // assign the right answers to variables
        question = [peoplesQuestions getQuestion:questionChooser];
        rightAnswer = [peoplesQuestions getRightAnswer:questionChooser];
        firstWrongAnswer = [peoplesQuestions getWrongAnswers:questionChooser];
        secondWrongAnswer = [peoplesQuestions getWrongAnswers2:questionChooser];
        thirdWrongAnswer = [peoplesQuestions getWrongAnswers3:questionChooser];
    }
    Question1.text =  question;
}

-(void) upDateScore:(BOOL)correct
{
    if (correct)
    {
        totalCorrect++;
        rightQuestionsHolder = [[NSString alloc] initWithFormat:@"%i", totalCorrect];
        rightAnswered.text = rightQuestionsHolder;
    }
    else
    {
        totalWrong++;
        wrongQuestionsHolder = [[NSString alloc] initWithFormat:@"%i", totalWrong];
        wrongAnswered.text = wrongQuestionsHolder;
    }
    totalQuestions++;
    
}

-(void) selfCheck
{
    if (totalQuestions > 24)
    {
        [self endGameAlert];
    }
}

-(void) endGameAlert
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    endTime = [[NSDate alloc] init];
    elapsedTime = [startTime timeIntervalSinceDate:endTime];
    UIAlertView *alertDialog;
    
    finalScore = (4 * totalWrong) + fabs(elapsedTime);
    
    [userDefaults setFloat:finalScore forKey:SCORE10];
    
    if ([userDefaults floatForKey:SCORE18] > 0)
    {
        totalHighScore = [userDefaults floatForKey:SCORE18];
    }
    else {
        totalHighScore = 2434394;
    }
    
    
    if (totalHighScore > finalScore)
    {
        numbRight = [[NSString alloc] initWithFormat:@"you got %i right!! And you missed %i problems. In %1.2f seconds!! your final score was %1.2f!!", totalCorrect, totalWrong, fabs(elapsedTime), finalScore];
        
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
        numbRight = [[NSString alloc] initWithFormat:@"you got %i right!! And you missed %i problems. In %1.2f seconds!! your final score was %1.2f!!", totalCorrect, totalWrong, fabs(elapsedTime), finalScore];
        alertDialog = [[UIAlertView alloc]
                       initWithTitle:@"Congragulations!!" 
                       message:numbRight
                       delegate:self
                       cancelButtonTitle:@"Go Home"
                       otherButtonTitles:@"Again", nil];
        [alertDialog show];
    }
    
}

-(IBAction) buttonAPressed:(id)sender
{
    [self setUp];
    if (rightChoice2 == 0)
    {
        
        [self upDateScore:YES];
    }
    else
    {
        [self upDateScore:NO];
    }
    [self selfCheck];
}
-(IBAction) buttonBPressed:(id)sender
{
    [self setUp];
    if (rightChoice2 == 1)
    {
        [self upDateScore:YES];    
    }
    else
    {
        [self upDateScore:NO];
    }
    [self selfCheck];
}
-(IBAction) buttonCPressed:(id)sender
{
    [self setUp];
    if (rightChoice2 == 2)
    {
        [self upDateScore:YES];
    }
    else
    {
        [self upDateScore:NO];
    }
    [self selfCheck];
}
-(IBAction) buttonDPressed:(id)sender
{
    [self setUp];
    if (rightChoice2 == 3)
    {
        [self upDateScore:YES];
    }
    else
    {
        [self upDateScore:NO]; 
    }
    [self selfCheck];
}

-(void) giveButtonsTheirNames:(NSString *)name1: (NSString *)name2: (NSString *)name3: (NSString *)name4
{
    [buttonA setTitle:name1 forState:UIControlStateNormal];
    [buttonB setTitle:name2 forState:UIControlStateNormal];
    [buttonC setTitle:name3 forState:UIControlStateNormal];
    [buttonD setTitle:name4 forState:UIControlStateNormal];
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
		
		[highScoreCustom AlertOn];
		[self.view insertSubview:highScoreCustom.view atIndex:121];
	}
	else {
        startTime = [[NSDate alloc] init];
        totalWrong = 0;
        totalCorrect = 0;
        totalQuestions = 0;
        wrongAnswered.text = @"0";
        rightAnswered.text = @"0";
        [self setUp];
        [self setUp];
	}
    
}



#pragma mark - View lifecycle

- (void)viewDidLoad
{
    self.navigationItem.title = @"Custom Game";
    startTime = [[NSDate alloc] init];
    totalWrong = 0;
    totalCorrect = 0;
    totalQuestions = 0;
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
