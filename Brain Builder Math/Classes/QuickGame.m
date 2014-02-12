//
//  QuickGame.m
//  Gr3y Matt3r 2.0
//
//  Created by Fred Kneeland on 6/20/11.
//  Copyright 2011 Blade Linux LLC. All rights reserved.
//

#import "QuickGame.h"
#import "HighScore.h"

@interface QuickGame ()

@property (nonatomic, strong) IBOutlet UIView *contentView;

@end


@implementation QuickGame
{
    ADBannerView *_bannerView;
}

@synthesize chosenAnswer;
@synthesize chosenAnswer2;
@synthesize highScore;
@synthesize number1;
@synthesize number2;
@synthesize sign;
@synthesize result;
@synthesize a;
@synthesize b;
@synthesize c; 
@synthesize d;
@synthesize number3;
@synthesize number4;
@synthesize sign2;
@synthesize result2;
@synthesize number5;
@synthesize number6;
@synthesize sign3;
@synthesize result3;
@synthesize number7;
@synthesize number8;
@synthesize sign4;
@synthesize result4;
@synthesize number9;
@synthesize number10;
@synthesize sign5;
@synthesize result5;
@synthesize samePage;
@synthesize question;
@synthesize question2;
@synthesize equals;
@synthesize equals2;


-(IBAction) setupProblemA:(id)sender
{
	if (fun == 1)
	{
		Newnumb7 = numb7;
		Newnumb8 = numb8;
	}
	if (fun > 1)
	{
		Newnumb7 = Newnumb9;
		Newnumb8 = Newnumb10;
	}
	if (fun > 0)
	{
		[self createProblem];
		chosenAnswer.text = chosenAnswer2.text;
				
		if (Result3 == 1)
		{
			result2.text = @"BINGO!";
			result2.textColor = [UIColor greenColor];
			totalCorrect += 1;
		}
		else {
			result2.text = @"Oops :(";
			result2.textColor = [UIColor redColor];
			totalInCorrect += 1;
		}
		chosenAnswer2.text = A;
		
		[self createProblem2];
	}
	else 
	{
		fun++;
	}
	[self alertsetUp];
}

-(IBAction) setupProblemB:(id)sender
{
	if (fun == 1)
	{
		Newnumb7 = numb7;
		Newnumb8 = numb8;
	}
	if (fun > 1)
	{
		Newnumb7 = Newnumb9;
		Newnumb8 = Newnumb10;
	}
	if (fun > 0)
	{
		[self createProblem];
		chosenAnswer.text = chosenAnswer2.text;
		
		if (Result3 == 2)
		{
			result2.text = @"BINGO!";
			result2.textColor = [UIColor greenColor];
			totalCorrect++;
		}
		else {
			result2.text = @"Oops :(";
			result2.textColor = [UIColor redColor];
			totalInCorrect += 1;
		}
		chosenAnswer2.text = B;
		
		[self createProblem2];
	}
	else 
	{
		fun++;
	}
	[self alertsetUp];
}

-(IBAction) setupProblemC:(id)sender
{
	if (fun == 1)
	{
		Newnumb7 = numb7;
		Newnumb8 = numb8;
	}
	if (fun > 1)
	{
		Newnumb7 = Newnumb9;
		Newnumb8 = Newnumb10;
	}
	if (fun > 0)
	{
		[self createProblem];
		chosenAnswer.text = chosenAnswer2.text;
		
		if (Result3 == 3)
		{
			result2.text = @"BINGO!";
			result2.textColor = [UIColor greenColor];
			totalCorrect++;
		}
		else {
			result2.text = @"Oops :(";
			result2.textColor = [UIColor redColor];
			totalInCorrect += 1;
		}
		
		chosenAnswer2.text = C;
		
		
		[self createProblem2];
	}
	else 
	{
		fun++;
	}
	
	[self alertsetUp];
}

-(IBAction) setupProblemD:(id)sender
{
	if (fun == 1)
	{
		Newnumb7 = numb7;
		Newnumb8 = numb8;
	}
	if (fun > 1)
	{
		Newnumb7 = Newnumb9;
		Newnumb8 = Newnumb10;
	}
	if (fun > 0)
	{
		[self createProblem];
		chosenAnswer.text = chosenAnswer2.text;
		
		if (Result3 == 4)
		{
			result2.text = @"BINGO!";
			result2.textColor = [UIColor greenColor];
			totalCorrect += 1;
		}
		else {
			result2.text = @"Oops :(";
			result2.textColor = [UIColor redColor];
			totalInCorrect += 1;
		}
		
		chosenAnswer2.text = D;
		
		[self createProblem2];
	}
	else 
	{
		fun++;
	}
	[self alertsetUp];
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
		[highScore highScoreQuick];
		[self.view insertSubview:highScore.view atIndex:121];
	}
	else {
		chosenAnswer.text = @"";
		chosenAnswer2.text = @"";
		[self setUp];
	}

}

-(void) createProblem
{
    if (fun == 1)
    {
        equals.text = @"=";
    }
    if (fun == 2)
    {
        equals2.text = @"=";
    }
	Newnumb9 = numb9;
	Newnumb10 = numb10;
	NewSign1 = sign2.text;
	NewSign2 = sign3.text;
	NewSign3 = sign4.text;
	NewSign4 = sign5.text;
	sign.text = NewSign1;
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
	NewResult2 = result3.text;
	result.text = NewResult;
	if ([result2.text isEqualToString:@"BINGO!"])
	{
		result.textColor = [UIColor greenColor];
	}
	else
	{
		result.textColor = [UIColor redColor];
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
-(void) createProblem2
{
	numb9 = arc4random()%10 + 1;
	numb10 = arc4random()%10 + 1;
	NUMBER11 = [[NSString alloc] initWithFormat:@"%1.0f", numb9];
	NUMBER12 = [[NSString alloc] initWithFormat:@"%1.0f", numb10];
	NewNumb9 = NUMBER11;
	NewNumb10 = NUMBER12;
	number9.text = NUMBER11;
	number10.text = NUMBER12;
	Sign5 = arc4random()%3;
	if (Sign5 == 0)
	{
		sign5.text = @"+";
	}
	else if (Sign5 == 1)
	{
		if ((numb10 > numb9))
		{
			numbSpecial = numb9;
			numb9 = numb10;
			numb10 = numbSpecial;
			NUMBER9 = [[NSString alloc] initWithFormat:@"%1.0f", numb9];
			NUMBER10 = [[NSString alloc] initWithFormat:@"%1.0f", numb10];
			number9.text = NUMBER9;
			number10.text = NUMBER10;
		}
		
		sign5.text = @"-";
	}
	else 
	{
		sign5.text = @"x";
	}
	choice3 = arc4random()%4;
	
	if ([NewSign3 isEqualToString:@"+"])
	{
		answr = Newnumb7 + Newnumb8;
	}
	else if ([NewSign3 isEqualToString: @"-"])
	{
		answr = Newnumb7 - Newnumb8;
	}
	else if ([NewSign3 isEqualToString: @"x"])
	{
		answr = Newnumb7 * Newnumb8;
	}
	
	if (answr != 0)
	{
		if (choice3 == 0) 
		{
			AA = answr + (arc4random()%10 + 1);
			BB = answr;
			CC = answr * (arc4random()%3 + 2);
			DD = answr - (arc4random()%10 + 1);
			Result3 = 2;
		}
		else if (choice3 == 1)
		{
			AA = answr;
			BB = answr + (arc4random()%10 + 1);
			CC = answr - (arc4random()%10 + 1);
			DD = answr * (arc4random()%3 + 2);
			Result3 = 1;
			
		}
		else if (choice3 == 2)
		{
			AA = answr * (arc4random()%3 + 2);
			BB = answr  - (arc4random()%10 + 1);
			CC = answr;
			DD = answr + (arc4random()%10 + 1);
			Result3 = 3;
			
		}
		else if (choice3 == 3)
		{
			AA = answr - (arc4random()%10 + 1);
			BB = answr * (arc4random()%3 + 2);
			CC = answr + (arc4random()%10 + 1);
			DD = answr;
			Result3 = 4;
		}
	}
	else 
	{
		if (choice3 == 0) 
		{
			AA = answr + (arc4random()%10 + 1);
			BB = answr;
			CC = answr + (arc4random()%3 + 2);
			DD = answr - (arc4random()%10 + 1);
			Result3 = 2;
		}
		else if (choice3 == 1)
		{
			AA = answr;
			BB = answr + (arc4random()%10 + 1);
			CC = answr - (arc4random()%10 + 1);
			DD = answr - (arc4random()%3 + 2);
			Result3 = 1;
			
		}
		else if (choice3 == 2)
		{
			AA = answr + (arc4random()%3 + 2);
			BB = answr  - (arc4random()%10 + 1);
			CC = answr;
			DD = answr + (arc4random()%10 + 1);
			Result3 = 3;
			
		}
		else if (choice3 == 3)
		{
			AA = answr - (arc4random()%10 + 1);
			BB = answr - (arc4random()%3 + 2);
			CC = answr + (arc4random()%10 + 1);
			DD = answr;
			Result3 = 4;
		}
	}
	
	A = [[NSString alloc] initWithFormat:@"%1.0f", AA];
	B = [[NSString alloc] initWithFormat:@"%1.0f", BB];
	C = [[NSString alloc] initWithFormat:@"%1.0f", CC];
	D = [[NSString alloc] initWithFormat:@"%1.0f", DD];
	[a setTitle:A forState:UIControlStateNormal];
	[b setTitle:B forState:UIControlStateNormal];
	[c setTitle:C forState:UIControlStateNormal];
	[d setTitle:D forState:UIControlStateNormal];
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

-(void) alertsetUp
{
	if (fun > 25)
	{
		NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
		endTime = [[NSDate alloc] init];
		elapsedTime = [startTime timeIntervalSinceDate:endTime];
		UIAlertView *alertDialog;
		
		finalScore = (6 * totalInCorrect) + fabs(elapsedTime);
		
		[userDefaults setFloat:finalScore forKey:SCORE];
		
		if ([userDefaults floatForKey:SCORE9] > 0)
		{
			totalHighScore = [userDefaults floatForKey:SCORE9];
		}
		else {
			totalHighScore = 2434394;
		}
		
		
		// if totalHighScore > finalScore
		if (totalHighScore > finalScore)
		{
			numbRight = [[NSString alloc] initWithFormat:@"you got %1.0f right!! And you missed %i problems. In %1.2f seconds!! your final score was %1.2f!!", totalCorrect, totalInCorrect, fabs(elapsedTime), finalScore];
			
			alertDialog = [[UIAlertView alloc]
						   initWithTitle:@"New High Score!!" 
						   message:numbRight
						   delegate:self
						   cancelButtonTitle:@"Go Home"
						   otherButtonTitles:@"Again", @"Save Score", nil];
			[alertDialog show];
			[alertDialog release];
		}
		else 
		{
			numbRight = [[NSString alloc] initWithFormat:@"you got %1.0f right!! And you missed %i problems. In %1.2f seconds!! your final score was %1.2f!!", totalCorrect, totalInCorrect, fabs(elapsedTime), finalScore];
			alertDialog = [[UIAlertView alloc]
						   initWithTitle:@"Congragulations!!" 
						   message:numbRight
						   delegate:self
						   cancelButtonTitle:@"Go Home"
						   otherButtonTitles:@"Again", nil];
			[alertDialog show];
			[alertDialog release];
		}
	}
}

-(void) setUp
{
	startTime = [[NSDate alloc] init];
	totalInCorrect = 0;
	totalCorrect = 0;
	fun = 1;
	result.text = @"";
	result3.text = @"";
	result2.text = @"";
	result4.text = @"";
	result5.text = @"";
	number1.text = @"";
	number2.text = @"";
	number3.text = @"";
	number4.text = @"";
	sign.text = @"";
	sign2.text = @"";
    equals2.text = @"";
    equals.text = @"";
    question2.text = @"";
    question.text = @"";
	numb5 = (arc4random()%10) + 1;
	numb6 = (arc4random()%10) + 1;
	numb7 = (arc4random()%10) + 1;
	numb8 = (arc4random()%10) + 1;
	numb9 = (arc4random()%10) + 1; 
	numb10 = (arc4random()%10) + 1;
	NUMBER5 = [[NSString alloc] initWithFormat:@"%1.0f", numb5];
	NUMBER6 = [[NSString alloc] initWithFormat:@"%1.0f", numb6];
	NUMBER7 = [[NSString alloc] initWithFormat:@"%1.0f", numb7];
	NUMBER8 = [[NSString alloc] initWithFormat:@"%1.0f", numb8];
	NUMBER9 = [[NSString alloc] initWithFormat:@"%1.0f", numb9];
	NUMBER10 = [[NSString alloc] initWithFormat:@"%1.0f", numb10];
	number5.text = NUMBER5;
	number6.text = NUMBER6;
	number7.text = NUMBER7;
	number8.text = NUMBER8;
	number9.text = NUMBER9;
	number10.text = NUMBER10;
	Sign3 = arc4random()%3;
	if (Sign3 == 0) {
		answr3 = numb5 + numb6;
		sign3.text = @"+";
	}
	else if (Sign3 == 1)
	{
		if ((numb6 > numb5))
		{
			numbSpecial = numb5;
			numb5 = numb6;
			numb6 = numbSpecial;
			NUMBER5 = [[NSString alloc] initWithFormat:@"%1.0f", numb5];
			NUMBER6 = [[NSString alloc] initWithFormat:@"%1.0f", numb6];
			number5.text = NUMBER5;
			number6.text = NUMBER6;
		}		
		answr3 = numb5 - numb6;
		sign3.text = @"-";
	}
	else if (Sign3 == 2)
	{
		answr3 = numb5 * numb6;
		sign3.text = @"x";
	}
	choice3 = arc4random()%4;
	
	if (answr3 != 0)
	{
		if (choice3 == 1)
		{
			AA = answr3;
			BB = answr3 + arc4random()%10 + 1;
			CC = answr3 - (arc4random()%10 + 1);
			DD = answr3 * (arc4random()%3 + 3);
			Result3 = 1;
		}
		else if (choice3 == 2)
		{
			AA = answr3 + arc4random()%10 + 1;
			BB = answr3;
			CC = answr3 * arc4random()%3 + 3;
			DD = answr3 - (arc4random()%10 + 1);
			Result3 = 2;
		}
		else if (choice3 == 3)
		{
			AA = answr3 - (arc4random()%10 + 1);
			BB = answr3 * (arc4random()%3 + 3);
			CC = answr3;
			DD = answr3 + arc4random()%10 + 1;
			Result3 = 3;
		}
		else if (choice3 == 0)
		{
			AA = answr3 * (arc4random()%3 + 3);
			BB = answr3 + arc4random()%10 + 1;
			CC = answr3 - (arc4random()%10 + 1);
			DD = answr3;
			Result3 = 4;
		}
	}
	else {
		if (choice3 == 1)
		{
			AA = answr3;
			BB = answr3 + arc4random()%10 + 1;
			CC = answr3 - (arc4random()%10 + 1);
			DD = answr3 + (arc4random()%3 + 3);
			Result3 = 1;
		}
		else if (choice3 == 2)
		{
			AA = answr3 + arc4random()%10 + 1;
			BB = answr3;
			CC = answr3 - arc4random()%3 + 3;
			DD = answr3 - (arc4random()%10 + 1);
			Result3 = 2;
		}
		else if (choice3 == 3)
		{
			AA = answr3 - (arc4random()%10 + 1);
			BB = answr3 + (arc4random()%3 + 3);
			CC = answr3;
			DD = answr3 + arc4random()%10 + 1;
			Result3 = 3;
		}
		else if (choice3 == 0)
		{
			AA = answr3 - (arc4random()%3 + 3);
			BB = answr3 + arc4random()%10 + 1;
			CC = answr3 - (arc4random()%10 + 1);
			DD = answr3;
			Result3 = 4;
		}
		
	}

	A = [[NSString alloc] initWithFormat:@"%1.0f", AA];
	B = [[NSString alloc] initWithFormat:@"%1.0f", BB];
	C = [[NSString alloc] initWithFormat:@"%1.0f", CC];
	D = [[NSString alloc] initWithFormat:@"%1.0f", DD];
	
	[a setTitle:A forState:UIControlStateNormal];
	[b setTitle:B forState:UIControlStateNormal];
	[c setTitle:C forState:UIControlStateNormal];
	[d setTitle:D forState:UIControlStateNormal];
	
	Sign4 = arc4random()%3;
	if (Sign4 == 0)
	{
		sign4.text = @"+";
	}
	else if (Sign4 == 1)
	{
		if ((numb8 > numb7))
		{
			numbSpecial = numb7;
			numb7 = numb8;
			numb8 = numbSpecial;
			NUMBER7 = [[NSString alloc] initWithFormat:@"%1.0f", numb7];
			NUMBER8 = [[NSString alloc] initWithFormat:@"%1.0f", numb8];
			number7.text = NUMBER7;
			number8.text = NUMBER8;
		}
		
		sign4.text = @"-";
	}
	else if (Sign4 == 2)
	{
		sign4.text = @"x";
	}
	
	Sign5 = arc4random()%3;
	if (Sign5 == 0)
	{
		sign5.text = @"+";
	}
	else if (Sign5 == 1)
	{
		if ((numb10 > numb9))
		{
			numbSpecial = numb9;
			numb9 = numb10;
			numb10 = numbSpecial;
			NUMBER9 = [[NSString alloc] initWithFormat:@"%1.0f", numb9];
			NUMBER10 = [[NSString alloc] initWithFormat:@"%1.0f", numb10];
			number9.text = NUMBER9;
			number10.text = NUMBER10;
		}
		
		sign5.text = @"-";
	}
	else if (Sign5 == 2)
	{
		sign5.text = @"x";
	}	
}

- (instancetype)init
{
    self = [super initWithNibName:@"QuickGame" bundle:nil];
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
	self.navigationItem.title = @"Quick Game";
	[self setUp];	
    [super viewDidLoad];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self layoutAnimated:NO];
}

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
	[chosenAnswer release];
	[chosenAnswer2 release];
	[NUMBER1 release];
	[NUMBER2 release];
	[NUMBER3 release];
	[NUMBER4 release];
	[NUMBER5 release];
	[NUMBER6 release];
	[NUMBER7 release];
	[NUMBER8 release];
	[NUMBER9 release];
	[NUMBER10 release];
	[NUMBER11 release];
	[NUMBER12 release];
	[NewSign4 release];
	[NewSign3 release];
	[NewSign2 release];
	[NewSign1 release];
	[NewNumb10 release];
	[NewNumb9 release];
	[NewNumb8 release];
	[NewNumb7 release];
	[NewNumb6 release];
	[NewNumb5 release];
	[NewNumb4 release];
	[NewNumb3 release];
	[NewNumb2 release];
	[NewNumb1 release];
	[NewResult release];
	[NewResult2 release];
	[A release];
	[B release];
	[C release];
	[D release];
	[number1 release];
	[number2 release];
	[sign release];
	[result release];
	[a release];
	[b release];
	[c release];
	[d release];
	[number3 release];
	[number4 release];
	[number5 release];
	[number6 release]; 
	[number7 release];
	[number8 release];
	[number9 release];
	[number10 release];
	[sign2 release];
	[sign3 release];
	[sign4 release];
	[sign5 release];
	[result2 release];
	[result3 release];
	[result4 release];
	[result5 release];
	[samePage release];
	[highScore release];
	[super dealloc];
}


@end
