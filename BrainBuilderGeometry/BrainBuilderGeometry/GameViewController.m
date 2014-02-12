//
//  GameViewController.m
//  BrainBuilderGeometry
//
//  Created by Fred Kneeland on 8/11/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import "GameViewController.h"
#import "Square.h"
#import "Answers.h"
#import "Shape.h"
#import "RightTriangle.h"
#import "Circle.h"
#import "Cube.h"
#import "RectagularPrism.h"
#import "TriangularPrism.h"
#import "HighScoreViewController.h"
#import "Trapezoid.h"
#import "Parallelagram.h"
#import "RightTriangularPrisim.h"

@interface GameViewController ()

@property (nonatomic, strong) IBOutlet UIView *contentView;
@property (nonatomic, strong) IBOutlet UILabel *timerLabel;

@end

@implementation GameViewController
{
    ADBannerView *_bannerView;
    NSTimer *_timer;
    CFTimeInterval _ticks;
}

@synthesize ShapeView;
@synthesize square, answers;
@synthesize side1, side2, side3, side4, side5, side6, side7, answer, rightAnswerLabel, wrongAnswerLabel, test;
@synthesize buttonA, buttonB, buttonC, buttonD;
@synthesize highScores;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        if ([ADBannerView instancesRespondToSelector:@selector(initWithAdType:)]) {
            _bannerView = [[ADBannerView alloc] initWithAdType:ADAdTypeBanner];
        } else {
            _bannerView = [[ADBannerView alloc] init];
        }
        _bannerView.delegate = self;
        // Custom initialization
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
        _contentView.frame = contentFrame;
        [_contentView layoutIfNeeded];
        _bannerView.frame = bannerFrame;
    }];
}

- (void)startTimer
{
    if (_timer == nil) {
        _timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(timerTick:) userInfo:nil repeats:YES];
    }
}

- (void)stopTimer
{
    [_timer invalidate];
    _timer = nil;
}

- (void)timerTick:(NSTimer *)timer
{
    // Timers are not guaranteed to tick at the nominal rate specified, so this isn't technically accurate.
    // However, this is just an example to demonstrate how to stop some ongoing activity, so we can live with that inaccuracy.
    _ticks += 0.1;
    double seconds = fmod(_ticks, 60.0);
    double minutes = fmod(trunc(_ticks / 60.0), 60.0);
    self.timerLabel.text = [NSString stringWithFormat:@"%02.0f:%04.1f", minutes, seconds];
}


-(void) text:(NSInteger)index
{
    if (chooser == index)
    {
        answer.text = @"Bingo";
        rightAnswerCounter++;
    }
    else
    {
        answer.text = @"Nope";
        wrongAnswerCounter++;
    }
    if ((rightAnswerCounter + wrongAnswerCounter) < 10)
    {
        [self upDateLabels];
    }
    else
    {
        [self alertSetUp];
    }
}

-(void) alertSetUp
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    endTime = [[NSDate alloc] init];
    elapsedTime = [startTime timeIntervalSinceDate:endTime];
    UIAlertView *alertDialog;
    
    finalScore = (WRONGANSWERPENALTY * wrongAnswerCounter) + fabs(elapsedTime);
    
    [userDefaults setFloat:finalScore forKey:GEOMSCORE];
    if (game == 1)
    {
        [userDefaults setObject:@"Perimeter" forKey:GEOMTYPE];
    }
    else if (game == 2)
    {
        [userDefaults setObject:@"Area" forKey:GEOMTYPE];
    }
    else if (game == 3)
    {
        [userDefaults setObject:@"Volume" forKey:GEOMTYPE];
    }
    else if (game == 4)
    {
        [userDefaults setObject:@"S.A." forKey:GEOMTYPE];
    }
    
    if ([userDefaults floatForKey:GEOMSCORE9] > 0)
    {
        totalHighScore = [userDefaults floatForKey:GEOMSCORE9];
    }
    else {
        totalHighScore = 2434394;
    }
    
    if (totalHighScore > finalScore)
    {
        numbRight = [[NSString alloc] initWithFormat:@"you got %i right!! And you missed %i problems. In %1.2f seconds!! your final score was %1.2f!!", rightAnswerCounter, wrongAnswerCounter, fabs(elapsedTime), finalScore];
        
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
        numbRight = [[NSString alloc] initWithFormat:@"you got %i right!! And you missed %i problems. In %1.2f seconds!! your final score was %1.2f!!", rightAnswerCounter, wrongAnswerCounter, fabs(elapsedTime), finalScore];
        alertDialog = [[UIAlertView alloc]
                       initWithTitle:@"Congragulations!!"
                       message:numbRight
                       delegate:self
                       cancelButtonTitle:@"Go Home"
                       otherButtonTitles:@"Again", nil];
        [alertDialog show];
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
        [self initialSetUp];
	}
    
}

-(IBAction)Button1:(id)sender
{
    [self text:0];
    [self setUp];
}

-(IBAction)Button2:(id)sender
{
    [self text:1];
    [self setUp];
}

-(IBAction)Button3:(id)sender
{
    [self text:2];
    [self setUp];
}

-(IBAction)Button4:(id)sender
{
    [self text:3];
    [self setUp];
}

-(void) newGame
{
    [self setUp];
    [self startTimer];
    rightAnswerCounter = 0;
    wrongAnswerCounter = 0;
    [self upDateLabels];
}

-(void) upDateLabels
{
    rightAnswerLabel.text = [[NSString alloc] initWithFormat:@"%i", rightAnswerCounter];
    wrongAnswerLabel.text = [[NSString alloc] initWithFormat:@"%i", wrongAnswerCounter];
}

-(void) initialSetUp
{
    startTime = [[NSDate alloc] init];
    rightAnswerCounter = 0;
    wrongAnswerCounter = 0;
    [self setUp];
}

-(void) setUp
{
    if (game == 1 || game == 2)
    {
        helper = arc4random()%6;
        if (helper == 0)
        {
            ShapeView.image = [UIImage imageNamed:@"Square.png"];
        }
        else if (helper == 1)
        {
            ShapeView.image = [UIImage imageNamed:@"rectangle.png"];
        }
        else if (helper == 2)
        {
            ShapeView.image = [UIImage imageNamed:@"Triangle.png"];
        }
        else if (helper == 3)
        {
            ShapeView.image = [UIImage imageNamed:@"CirclePic.png"];
        }
        else if (helper == 4)
        {
            ShapeView.image = [UIImage imageNamed:@"Trapezoid.png"];
        }
        else
        {
            ShapeView.image = [UIImage imageNamed:@"Parrallelagram.png"];
        }
    }
    else
    {
        helper = 6 + arc4random()%4;
        if (helper < 8)
        {
            ShapeView.image = [UIImage imageNamed:@"Cube.png"];
        }
        else if (helper == 8)
        {
            ShapeView.image = [UIImage imageNamed:@"TriangularPrisim.png"];
        }
        else if (helper == 9)
        {
            ShapeView.image = [UIImage imageNamed:@"RightTriangularPrisim.png"];
        }
    }
        
    side1.text = side2.text = side3.text = side4.text = side5.text = side6.text = side7.text = @"";
    Shape *shape1;
    if (helper == 0)
    {
        shape1 = [[Square alloc] init];
        [shape1 Create];
        side1.text = side2.text = side3.text = side4.text = [[NSString alloc] initWithFormat:@"%i", [shape1 Side1]];
    }
    else if (helper == 1)
    {
        shape1 = [[Rectangle alloc] init];
        [shape1 Create];
        side1.text = side4.text = [[NSString alloc]initWithFormat:@"%i", [shape1 Side1]];
        side2.text = side3.text = [[NSString alloc] initWithFormat:@"%i", [shape1 Side2]];
    }
    else if (helper == 2)
    {
        shape1 = [[RightTriangle alloc] init]; 
        [shape1 Create];
        side4.text = [[NSString alloc]initWithFormat:@"%i", [shape1 Side1]];
        side2.text = [[NSString alloc] initWithFormat:@"%i", [shape1 Side2]];
        side5.text = [[NSString alloc] initWithFormat:@"%1.2f", (((float)[shape1 Side5]) / 100)];
    }
    else if (helper == 3)
    {
        shape1 = [[Circle alloc] init];
        [shape1 Create];
        side1.text = [[NSString alloc] initWithFormat:@"%i", [shape1 Radius]];
    }
    else if (helper == 4)
    {
        shape1 = [[Trapezoid alloc] init];
        [shape1 Create];
        side1.text = [[NSString alloc] initWithFormat:@"%i", [shape1 Side2]];
        side4.text = [[NSString alloc] initWithFormat:@"%i", [shape1 Side1]];
        side2.text = side3.text = [[NSString alloc] initWithFormat:@"%i", [shape1 Side3]];
        side7.text = [[NSString alloc] initWithFormat:@"%1.1f", [shape1 Height]];
    }
    else if (helper == 5)
    {
        shape1 = [[Parallelagram alloc] init];
        [shape1 Create];
        side1.text = [[NSString alloc] initWithFormat:@"%i", [shape1 Side2]];
        side4.text = [[NSString alloc] initWithFormat:@"%i", [shape1 Side1]];
        side2.text = side3.text = [[NSString alloc] initWithFormat:@"%i", [shape1 Side3]];
        side7.text = [[NSString alloc] initWithFormat:@"%1.1f", [shape1 Height]];
    }
    else if (helper == 6)
    {
        shape1 = [[Cube alloc] init];
        [shape1 Create];
        side6.text = side4.text = side2.text = [[NSString alloc]initWithFormat:@"%i", [shape1 Side1]];
    }
    else if (helper == 7)
    {
        shape1 = [[RectagularPrism alloc] init];
        [shape1 Create];
        side6.text = [[NSString alloc]initWithFormat:@"%i", [shape1 Side3]];
        side4.text = [[NSString alloc]initWithFormat:@"%i", [shape1 Side2]];
        side2.text = [[NSString alloc]initWithFormat:@"%i", [shape1 Side1]];
    }
    else if (helper == 8)
    {
        shape1 = [[TriangularPrism alloc] init];
        [shape1 Create];
        side4.text = [[NSString alloc]initWithFormat:@"%i", [shape1 Side1]];
        side2.text = [[NSString alloc]initWithFormat:@"    %i", [shape1 Side2]];
        side7.text = [[NSString alloc]initWithFormat:@"  %i", [shape1 Side3]];
        side6.text = [[NSString alloc]initWithFormat:@"      %i", [shape1 Side4]];
    }
    else
    {
        shape1 = [[RightTriangularPrisim alloc] init];
        [shape1 Create];
        side4.text = [[NSString alloc]initWithFormat:@"%i", [shape1 Side1]];
        side2.text = [[NSString alloc]initWithFormat:@" %i", [shape1 Side2]];
        side7.text = [[NSString alloc]initWithFormat:@"%i", [shape1 Side3]];
        side6.text = [[NSString alloc]initWithFormat:@"     %i", [shape1 Side4]];
    }
    [square Create];
    if (game == 1)
    {
        [answers create:[shape1 Perimeter]];
        test.text = [[NSString alloc] initWithFormat:@"%i", [shape1 Perimeter]];
    }
    else if (game == 2)
    {
        [answers create:[shape1 Area]];
        test.text = [[NSString alloc] initWithFormat:@"%i", [shape1 Area]];
    }
    else if (game == 3)
    {
        [answers create:[shape1 Volume]];
        test.text = [[NSString alloc] initWithFormat:@"%i", [shape1 Volume]];
    }
    else
    {
        [answers create:[shape1 SurfaceArea]];
        test.text = [[NSString alloc] initWithFormat:@"%i", [shape1 SurfaceArea]];
    }
    [buttonA setTitle:[answers firstAnswer] forState:UIControlStateNormal];
    [buttonB setTitle:[answers secondAnswer] forState:UIControlStateNormal];
    [buttonC setTitle:[answers thirdAnswer] forState:UIControlStateNormal];
    [buttonD setTitle:[answers fourthAnswer] forState:UIControlStateNormal];
    if (helper == 3)
    {
        [buttonA setTitle:[[NSString alloc] initWithFormat:@"%@∏", [answers firstAnswer]] forState:UIControlStateNormal];
        [buttonB setTitle:[[NSString alloc] initWithFormat:@"%@∏",[answers secondAnswer]] forState:UIControlStateNormal];
        [buttonC setTitle:[[NSString alloc] initWithFormat:@"%@∏",[answers thirdAnswer]] forState:UIControlStateNormal];
        [buttonD setTitle:[[NSString alloc] initWithFormat:@"%@∏",[answers fourthAnswer]] forState:UIControlStateNormal];
    }
    if (helper == 6 && game == 3)
    {
        [buttonA setTitle:[[NSString alloc] initWithFormat:@"%@√3", [answers firstAnswer]] forState:UIControlStateNormal];
        [buttonB setTitle:[[NSString alloc] initWithFormat:@"%@√3",[answers secondAnswer]] forState:UIControlStateNormal];
        [buttonC setTitle:[[NSString alloc] initWithFormat:@"%@√3",[answers thirdAnswer]] forState:UIControlStateNormal];
        [buttonD setTitle:[[NSString alloc] initWithFormat:@"%@√3",[answers fourthAnswer]] forState:UIControlStateNormal];
    }
    chooser = [answers choice];
    [self startTimer];
}

-(void) gameType:(NSInteger)index
{
    game = index;
}

- (void)viewDidLoad
{
    if (game == 1)
    {
        self.navigationItem.title = @"Perimeter";
    }
    else if (game == 2)
    {
        self.navigationItem.title = @"Area";
    }
    else if (game == 4)
    {
        self.navigationItem.title = @"Surface Area";
    }
    else if (game == 3)
    {
        self.navigationItem.title = @"Volume";
    }
    [self initialSetUp];
    answer.text = [[NSString alloc] initWithFormat:@"%i", game];
    [self.view addSubview:_bannerView];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void) viewDidAppear:(BOOL)animated
{
    if (game == 1)
    {
        self.navigationItem.title = @"Perimeter";
    }
    else if (game == 2)
    {
        self.navigationItem.title = @"Area";
    }
    else if (game == 4)
    {
        self.navigationItem.title = @"Surface Area";
    }
    else if (game == 3)
    {
        self.navigationItem.title = @"Volume";
    }
    answer.text = [[NSString alloc] initWithFormat:@"%i", game];
    [self layoutAnimated:NO];
    [super viewDidAppear:YES];
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
