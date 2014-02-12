//
//  CustomGame.m
//  Gr3y Matt3r 2.0
//
//  Created by Fred Kneeland on 6/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CustomGame.h"
#import "CustomPlay.h"
#import "Testing.h"
#import "RootViewController.h"
#import "HighScore.h"

@interface CustomGame ()

@property (nonatomic, strong) IBOutlet UIView *contentView;

@end

@implementation CustomGame
{
    ADBannerView *_bannerView;
}

@synthesize homePage;
@synthesize highScore;
@synthesize gamePage;
@synthesize theSlider;
@synthesize display;
@synthesize add;
@synthesize minus;
@synthesize times;
@synthesize divide;
@synthesize numberofProblems;
@synthesize nextPage;


-(void) highScores
{
	[self.navigationController popViewControllerAnimated:YES];
}

-(IBAction) loadHomePage:(id)sender
{	
	CustomPlay *customPlay = [[CustomPlay alloc] initWithNibName:@"CustomPlay" bundle:nil];
	[self.navigationController pushViewController:customPlay animated:YES];
}

-(IBAction) loadGamePage:(id)sender
{
		
	if (add.on) {
		[gamePage AddOn];
	}
	else {
		[gamePage AddOff];
	}
	if (minus.on)
	{
		[gamePage subOn];
	}
	else {
		[gamePage subOff];
	}
	if (times.on)
	{
		[gamePage timesOn];
	}
	else {
		[gamePage timesOff];
	}
	if (divide.on)
	{
		[gamePage divideOn];
	}
	else {
		[gamePage divideOff];
	}

	if (theSlider.value >= 1 && theSlider.value < 2)
	{
		[gamePage numb1];
	}
	else if (theSlider.value >= 2 && theSlider.value < 3)
	{
		[gamePage numb2];
	}
	else if (theSlider.value >= 3 && theSlider.value < 4)
	{
		[gamePage numb3];
	}

	else if (theSlider.value >= 4 && theSlider.value < 5)
	{
		[gamePage numb4];
	}

	else if (theSlider.value >= 5 && theSlider.value < 6)
	{
		[gamePage numb5];
	}

	else if (theSlider.value >= 6 && theSlider.value < 7)
	{
		[gamePage numb6];
	}

	else if (theSlider.value >= 7 && theSlider.value < 8)
	{
		[gamePage numb7];
	}

	else if (theSlider.value >= 8 && theSlider.value < 9)
	{
		[gamePage numb8];
	}

	else if (theSlider.value >= 9 && theSlider.value < 10)
	{
		[gamePage numb9];
	}

	else if (theSlider.value >= 10 && theSlider.value < 11)
	{
		[gamePage numb10];
	}

	else if (theSlider.value >= 11 && theSlider.value < 12)
	{
		[gamePage numb11];
	}

	else if (theSlider.value >= 12 && theSlider.value < 13)
	{
		[gamePage numb12];
	}
	else if (theSlider.value >= 13 && theSlider.value < 14)
	{
		[gamePage numb13];
	}
	else if (theSlider.value >= 14 && theSlider.value < 15)
	{
		[gamePage numb14];
	}
	else if (theSlider.value >= 15 && theSlider.value < 16)
	{
		[gamePage numb15];
	}
	else if (theSlider.value >= 16 && theSlider.value < 17)
	{
		[gamePage numb16];
	}
	else if (theSlider.value >= 17 && theSlider.value < 18)
	{
		[gamePage numb17];
	}
	else if (theSlider.value >= 18 && theSlider.value < 19)
	{
		[gamePage numb18];
	}
	else if (theSlider.value >= 19 && theSlider.value < 20)
	{
		[gamePage numb19];
	}
	else if (theSlider.value >= 20 && theSlider.value < 21)
	{
		[gamePage numb20];
	}
	else if (theSlider.value >= 21 && theSlider.value < 22)
	{
		[gamePage numb21];
	}
	else if (theSlider.value >= 22 && theSlider.value < 23)
	{
		[gamePage numb22];
	}
	else if (theSlider.value >= 23 && theSlider.value < 24)
	{
		[gamePage numb23];
	}
	else if (theSlider.value >= 24 && theSlider.value < 25)
	{
		[gamePage numb24];
	}
	else if (theSlider.value == 25)
	{
		[gamePage numb25];
	}
	
	title = [numberofProblems titleForSegmentAtIndex:numberofProblems.selectedSegmentIndex];
	if ([title isEqualToString:@"25"])
	{
		[gamePage segment1];
		segment = 1;
	}
	else if ([title isEqualToString:@"50"])
	{
		[gamePage segment2];
		segment = 2;
	}
	else if ([title isEqualToString:@"75"])
	{
		[gamePage segment3];
		segment = 3;
	}
	else {
		[gamePage segment4];
		segment = 4;
	}

	 
		 
	if (!(add.on || minus.on || times.on || divide.on))
	{
		UIAlertView *alertDialog;
		alertDialog = [[UIAlertView alloc]
					   initWithTitle:@"Error" 
					   message:@"You need to have at least one game type on!"
					   delegate:nil
					   cancelButtonTitle:@"Ok"
					   otherButtonTitles: nil];
		[alertDialog show];
		[alertDialog release];
	}
	else 
	{
        CustomPlay *customPlay2 = [[CustomPlay alloc] init];
		//CustomPlay *customPlay = [[CustomPlay alloc] initWithNibName:@"CustomPlay" bundle:nil];
		[self.navigationController pushViewController:customPlay2 animated:YES];
        self.navigationItem.title = @"Back";

		[self keepChanges];
	}
}

-(IBAction) updateDisplay:(id)sender
{
	NSString *Data;
	Data = [[NSString alloc] initWithFormat:@"1 to %1.0f", theSlider.value];
	display.text = Data;
	[Data release];
}

-(void) keepChanges
{
	Load = 1;
	NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
	[userDefaults setInteger:Load forKey:TEST];
	[userDefaults setBool:add.on forKey:SWITCH1];
	[userDefaults setBool:minus.on forKey:SWITCH2];
	[userDefaults setBool:times.on forKey:SWITCH3];
	[userDefaults setBool:divide.on forKey:SWITCH4];
	[userDefaults setFloat:theSlider.value forKey:SLIDER];
	[userDefaults setInteger:segment forKey:SEGMENT];
}

-(IBAction) KeepDaChanges:(id)sender
{
    title = [numberofProblems titleForSegmentAtIndex:numberofProblems.selectedSegmentIndex];	
    if ([title isEqualToString:@"25"])
	{
        //[gamePage segment1];
		segment = 1;
	}
	else if ([title isEqualToString:@"50"])
	{
        //[gamePage segment2];
		segment = 2;
	}
	else if ([title isEqualToString:@"75"])
	{
        //[gamePage segment3];
		segment = 3;
	}
	else {
        //[gamePage segment4];
		segment = 4;
	}	
	[self keepChanges];
}

-(void) normal
{
	highScorez = 1;
}

-(void) updateHighScore
{
	highScorez = 2;
	[highScore alertOn];
	[highScore highScoreCustom];
	[self.view insertSubview:highScore.view atIndex:223];
}

- (instancetype)init
{
    self = [super initWithNibName:@"CustomGame" bundle:nil];
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
	self.navigationItem.title = @"Customize";
		UIBarButtonItem *button2 = [[UIBarButtonItem alloc] initWithTitle:@"Play!!"
																style:UIBarButtonItemStyleBordered
															   target:self
															   action:@selector(loadGamePage:)];
		self.navigationItem.rightBarButtonItem = button2;
		NSString *Data;
		NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
	
		FirstLoad = [userDefaults integerForKey:TEST];
        //FirstLoad = 1;
		if (FirstLoad == 1)
		{
			theSlider.value = [userDefaults floatForKey:SLIDER];
			add.on = [userDefaults boolForKey:SWITCH1];
			minus.on = [userDefaults boolForKey:SWITCH2];
			times.on = [userDefaults boolForKey:SWITCH3];
			divide.on = [userDefaults boolForKey:SWITCH4];
			numberofProblems.selectedSegmentIndex = ([userDefaults integerForKey:SEGMENT] - 1);
		}

	
		Data = [[NSString alloc] initWithFormat:@"1 to %1.0f", theSlider.value];
	
		display.text = Data;
	
		[super viewDidLoad];
}

-(void)viewWillAppear:(BOOL)animated
{
    self.navigationItem.title = @"Customize";
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


-(void) viewWillDisappear:(BOOL)animated
{
	Load = 1;
	NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
	[userDefaults setInteger:Load forKey:TEST];
	[userDefaults setBool:add.on forKey:SWITCH1];
	[userDefaults setBool:minus.on forKey:SWITCH2];
	[userDefaults setBool:times.on forKey:SWITCH3];
	[userDefaults setBool:divide.on forKey:SWITCH4];
	[userDefaults setFloat:theSlider.value forKey:SLIDER];
	//[userDefaults setInteger:HelloWorld forKey:TEST];
	
	[super viewWillDisappear:animated];
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
	[add release];
	[minus release];
	[times release];
	[divide release];
	[display release];
	[theSlider release];
	[homePage release];
	[highScore release];
	[gamePage release];
	[nextPage release];
	[numberofProblems release];
    [super dealloc];
}


@end
