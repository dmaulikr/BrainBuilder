//
//  IndefiniteIntegral.m
//  BrainBuilderCalc
//
//  Created by Fred Kneeland on 3/29/13.
//
//

#import "IndefiniteIntegral.h"
#import "IndefiniteIntegralHolder.h"
#import "DefiniteIntegralHolder.h"
#import "HighScores.h"

@interface IndefiniteIntegral ()

@property (nonatomic, strong) IBOutlet UIView *contentView;

@end

@implementation IndefiniteIntegral
{
    ADBannerView *_bannerView;
    
}

@synthesize rightAnswers, wrongAnswers;
@synthesize upperLimit, lowerLimit, function;
@synthesize buttonA, buttonB, buttonC, buttonD;
@synthesize object, object2, highScores;

- (instancetype)init
{
    self = [super initWithNibName:@"IndefiniteIntegral" bundle:nil];
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
    if (IntegrationType == 1)
    {
        [self upDate];
    }
    else
    {
        [self UpDate2];
    }
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
    if (IntegrationType == 1)
    {
        [self upDate];
    }
    else
    {
        [self UpDate2];
    }
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
    if (IntegrationType == 1)
    {
        [self upDate];
    }
    else
    {
        [self UpDate2];
    }
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
    if (IntegrationType == 1)
    {
        [self upDate];
    }
    else
    {
        [self UpDate2];
    }
}


-(void) upDate
{
    totalCounter++;
    if (totalCounter > 10)
    {
        [self alertSetUp];
    }
    //randomNumb = arc4random()%100 + 1;
    randomNumb = 1;
    secondRandom = arc4random()%4;
    
    [object setUpProblem:randomNumb];
    function.text = [object question:randomNumb];
    [self setUpButtons];
}

-(void) UpDate2
{
    totalCounter++;
    if (totalCounter > 10)
    {
        [self alertSetUp];
    }
    randomNumb = arc4random()%2 + 1;
    secondRandom = arc4random()%4;
    
    [object2 setUpProblem:randomNumb];
    function.text = [object2 question:randomNumb];
    upperLimit.text = [object2 UpperLimit:randomNumb];
    lowerLimit.text = [object2 LowerLimit:randomNumb];
    [self setUpButtons];
}

-(void) setUpButtons
{
    if (IntegrationType ==1)
    {
        if (secondRandom == 0)
        {
            [buttonA setTitle:([object rightAnswer:randomNumb]) forState:UIControlStateNormal];
            [buttonB setTitle:([object firstWrongAnswer:randomNumb]) forState:UIControlStateNormal];
            [buttonC setTitle:([object secondWrongAnswer:randomNumb]) forState:UIControlStateNormal];
            [buttonD setTitle:([object thirdWrongAnswer:randomNumb]) forState:UIControlStateNormal];
            correctScoreHolder = 1;
        }
        else if (secondRandom == 1)
        {
            [buttonB setTitle:([object rightAnswer:randomNumb]) forState:UIControlStateNormal];
            [buttonC setTitle:([object firstWrongAnswer:randomNumb]) forState:UIControlStateNormal];
            [buttonD setTitle:([object secondWrongAnswer:randomNumb]) forState:UIControlStateNormal];
            [buttonA setTitle:([object thirdWrongAnswer:randomNumb]) forState:UIControlStateNormal];
            correctScoreHolder = 2;
        }
        else if (secondRandom == 2)
        {
            [buttonC setTitle:([object rightAnswer:randomNumb]) forState:UIControlStateNormal];
            [buttonD setTitle:([object firstWrongAnswer:randomNumb]) forState:UIControlStateNormal];
            [buttonA setTitle:([object secondWrongAnswer:randomNumb]) forState:UIControlStateNormal];
            [buttonB setTitle:([object thirdWrongAnswer:randomNumb]) forState:UIControlStateNormal];
            correctScoreHolder = 3;
        }
        else
        {
            [buttonD setTitle:([object rightAnswer:randomNumb]) forState:UIControlStateNormal];
            [buttonA setTitle:([object firstWrongAnswer:randomNumb]) forState:UIControlStateNormal];
            [buttonB setTitle:([object secondWrongAnswer:randomNumb]) forState:UIControlStateNormal];
            [buttonC setTitle:([object thirdWrongAnswer:randomNumb]) forState:UIControlStateNormal];
            correctScoreHolder = 4;
        }
    }
    else
    {
        if (secondRandom == 0)
        {
            [buttonA setTitle:([object2 rightAnswer:randomNumb]) forState:UIControlStateNormal];
            [buttonB setTitle:([object2 firstWrongAnswer:randomNumb]) forState:UIControlStateNormal];
            [buttonC setTitle:([object2 secondWrongAnswer:randomNumb]) forState:UIControlStateNormal];
            [buttonD setTitle:([object2 thirdWrongAnswer:randomNumb]) forState:UIControlStateNormal];
            correctScoreHolder = 1;
        }
        else if (secondRandom == 1)
        {
            [buttonB setTitle:([object2 rightAnswer:randomNumb]) forState:UIControlStateNormal];
            [buttonC setTitle:([object2 firstWrongAnswer:randomNumb]) forState:UIControlStateNormal];
            [buttonD setTitle:([object2 secondWrongAnswer:randomNumb]) forState:UIControlStateNormal];
            [buttonA setTitle:([object2 thirdWrongAnswer:randomNumb]) forState:UIControlStateNormal];
            correctScoreHolder = 2;
        }
        else if (secondRandom == 2)
        {
            [buttonC setTitle:([object2 rightAnswer:randomNumb]) forState:UIControlStateNormal];
            [buttonD setTitle:([object2 firstWrongAnswer:randomNumb]) forState:UIControlStateNormal];
            [buttonA setTitle:([object2 secondWrongAnswer:randomNumb]) forState:UIControlStateNormal];
            [buttonB setTitle:([object2 thirdWrongAnswer:randomNumb]) forState:UIControlStateNormal];
            correctScoreHolder = 3;
        }
        else
        {
            [buttonD setTitle:([object2 rightAnswer:randomNumb]) forState:UIControlStateNormal];
            [buttonA setTitle:([object2 firstWrongAnswer:randomNumb]) forState:UIControlStateNormal];
            [buttonB setTitle:([object2 secondWrongAnswer:randomNumb]) forState:UIControlStateNormal];
            [buttonC setTitle:([object2 thirdWrongAnswer:randomNumb]) forState:UIControlStateNormal];
            correctScoreHolder = 4;
        }

    }
    
}

-(void) GameChoice:(NSInteger)type
{
    IntegrationType = type;
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
    [userDefaults setObject:@"Integral" forKey:CALCTYPE];
    
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
    if (IntegrationType == 1)
    {
        upperLimit.text = @"";
        lowerLimit.text = @"";
        [self upDate];
    }
    else
    {
        [self UpDate2];
    }
}


- (void)viewDidLoad
{
    if (IntegrationType == 1)
    {
        self.navigationItem.title = @"indefinite Integral";
        [self setUp];
    }
    else
    {
        self.navigationItem.title = @"Definite Integral";
        [self setUp];
    }
    [self.view addSubview:_bannerView];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self layoutAnimated:NO];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
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
    //test.text = @"Hello world";
    [self layoutAnimated:YES];
}

- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
    //test.text = @"Hello world";
    [self layoutAnimated:YES];
}

- (BOOL)bannerViewActionShouldBegin:(ADBannerView *)banner willLeaveApplication:(BOOL)willLeave
{
    return YES;
}

- (void)bannerViewActionDidFinish:(ADBannerView *)banner
{
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
