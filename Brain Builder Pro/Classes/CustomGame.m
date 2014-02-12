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
#import "TrueFalseCustom.h"
#import "KeyboardCustom.h"

@implementation CustomGame
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
@synthesize GameType;
@synthesize numbPad;
@synthesize torF;


-(void) highScores
{
	[self.navigationController popViewControllerAnimated:YES];
}

-(IBAction) loadHomePage:(id)sender
{	
	//CustomPlay *customPlay = [[CustomPlay alloc] initWithNibName:@"CustomPlay" bundle:nil];
	//[self.navigationController pushViewController:customPlay animated:YES];
}

-(void) informGamePage
{
	if (add.on) 
	{
		[gamePage AddOn];
		[torF AddOn];
		[numbPad AddOn];
	}
	else {
		[gamePage AddOff];
		[torF  AddOff];
		[numbPad  AddOff];
	}
	if (minus.on)
	{
		[gamePage subOn];
		[torF subOn];
		[numbPad subOn];
	}
	else {
		[gamePage subOff];
		[torF subOff];
		[numbPad subOff];
	}
	if (times.on)
	{
		[gamePage timesOn];
		[torF timesOn];
		[numbPad timesOn];
	}
	else {
		[gamePage timesOff];
		[torF timesOff];
		[numbPad timesOff];
	}
	if (divide.on)
	{
		[gamePage divideOn];
		[torF divideOn];
		[numbPad divideOn];
	}
	else {
		[gamePage divideOff];
		[torF divideOff];
		[numbPad divideOff];
	}
	
	if (theSlider.value >= 1 && theSlider.value < 2)
	{
		[gamePage numb1];
		[torF numb1];
		[numbPad numb1];
	}
	else if (theSlider.value >= 2 && theSlider.value < 3)
	{
		[gamePage numb2];
		[torF numb2];
		[numbPad numb2];
	}
	else if (theSlider.value >= 3 && theSlider.value < 4)
	{
		[gamePage numb3];
		[torF numb3];
		[numbPad numb3];
	}
	
	else if (theSlider.value >= 4 && theSlider.value < 5)
	{
		[gamePage numb4];
		[torF numb4];
		[numbPad numb4];
	}
	
	else if (theSlider.value >= 5 && theSlider.value < 6)
	{
		[gamePage numb5];
		[torF numb5];
		[numbPad numb5];
	}
	
	else if (theSlider.value >= 6 && theSlider.value < 7)
	{
		[gamePage numb6];
		[torF numb6];
		[numbPad numb6];
	}
	
	else if (theSlider.value >= 7 && theSlider.value < 8)
	{
		[gamePage numb7];
		[torF numb7];
		[numbPad numb7];
	}
	
	else if (theSlider.value >= 8 && theSlider.value < 9)
	{
		[gamePage numb8];
		[torF numb8];
		[numbPad numb8];
	}
	
	else if (theSlider.value >= 9 && theSlider.value < 10)
	{
		[gamePage numb9];
		[torF numb9];
		[numbPad numb9];
	}
	
	else if (theSlider.value >= 10 && theSlider.value < 11)
	{
		[gamePage numb10];
		[torF numb10];
		[numbPad numb10];
	}
	
	else if (theSlider.value >= 11 && theSlider.value < 12)
	{
		[gamePage numb11];
		[torF numb11];
		[numbPad numb12];
	}
	
	else if (theSlider.value >= 12 && theSlider.value < 13)
	{
		[gamePage numb12];
		[torF numb12];
		[numbPad numb12];
	}
	else if (theSlider.value >= 13 && theSlider.value < 14)
	{
		[gamePage numb13];
		[torF numb13];
		[numbPad numb13];
	}
	else if (theSlider.value >= 14 && theSlider.value < 15)
	{
		[gamePage numb14];
		[torF numb14];
		[numbPad numb14];
	}
	else if (theSlider.value >= 15 && theSlider.value < 16)
	{
		[gamePage numb15];
		[torF numb15];
		[numbPad numb15];
	}
	else if (theSlider.value >= 16 && theSlider.value < 17)
	{
		[gamePage numb16];
		[torF numb16];
		[numbPad numb16];
	}
	else if (theSlider.value >= 17 && theSlider.value < 18)
	{
		[gamePage numb17];
		[torF numb17];
		[numbPad numb17];
	}
	else if (theSlider.value >= 18 && theSlider.value < 19)
	{
		[gamePage numb18];
		[torF numb18];
		[numbPad numb18];
	}
	else if (theSlider.value >= 19 && theSlider.value < 20)
	{
		[gamePage numb19];
		[torF numb19];
		[numbPad numb19];
	}
	else if (theSlider.value >= 20 && theSlider.value < 21)
	{
		[gamePage numb20];
		[torF numb20];
		[numbPad numb20];
	}
	else if (theSlider.value >= 21 && theSlider.value < 22)
	{
		[gamePage numb21];
		[torF  numb21];
		[numbPad  numb21];
	}
	else if (theSlider.value >= 22 && theSlider.value < 23)
	{
		[gamePage numb22];
		[torF numb22];
		[numbPad numb22];
	}
	else if (theSlider.value >= 23 && theSlider.value < 24)
	{
		[gamePage numb23];
		[torF numb23];
		[numbPad numb23];
	}
	else if (theSlider.value >= 24 && theSlider.value < 25)
	{
		[gamePage numb24];
		[torF numb24];
		[numbPad numb24];
	}
	else if (theSlider.value == 25)
	{
		[gamePage numb25];
		[torF numb25];
		[numbPad numb25];
	}
	
	title = [numberofProblems titleForSegmentAtIndex:numberofProblems.selectedSegmentIndex];
	if ([title isEqualToString:@"25"])
	{
		[gamePage segment1];
		[torF segment1];
		[numbPad segment1];
		segment = 1;
	}
	else if ([title isEqualToString:@"50"])
	{
		[gamePage segment2];
		[torF segment2];
		[numbPad segment2];
		segment = 2;
	}
	else if ([title isEqualToString:@"75"])
	{
		[gamePage segment3];
		[torF segment3];
		[numbPad segment3];
		segment = 3;
	}
	else {
		[gamePage segment4];
		[torF segment4];
		[numbPad segment4];
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
		[self keepChanges];
	}
	
}

-(IBAction) loadGamePage:(id)sender
{
	title2 = [GameType titleForSegmentAtIndex:GameType.selectedSegmentIndex];
    if (!(add.on || minus.on || times.on || divide.on))
    {
        [self informGamePage];
    }
	else if ([title2 isEqualToString:@"Multiple"])
	{
		[self informGamePage];
		CustomPlay *customPlay = [[CustomPlay alloc] initWithNibName:@"CustomPlay" bundle:nil];
        self.navigationItem.title = @"Back";
		[self.navigationController pushViewController:customPlay animated:YES];
	}
	else if ([title2 isEqualToString:@"Yes or No"])
	{
		[self informGamePage];
		TrueFalseCustom *trueFalseCustom = [[TrueFalseCustom alloc] initWithNibName:@"TrueFalseCustom" bundle:nil];
        self.navigationItem.title = @"Back";
		[self.navigationController pushViewController:trueFalseCustom animated:YES];
	}
	else  if ([title2 isEqualToString:@"# Pad"])
	{
		[self informGamePage];
		KeyboardCustom *keyboardCustom = [[KeyboardCustom alloc] initWithNibName:@"KeyboardCustom" bundle:nil];
        self.navigationItem.title = @"Back";
		[self.navigationController pushViewController:keyboardCustom animated:YES];
	}
	else
	{
		[self informGamePage];
		CustomPlay *customPlay = [[CustomPlay alloc] initWithNibName:@"CustomPlay" bundle:nil];
        self.navigationItem.title = @"Back";
		[self.navigationController pushViewController:customPlay animated:YES];
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
	title2 = [GameType titleForSegmentAtIndex:GameType.selectedSegmentIndex];
	if ([title2 isEqualToString:@"Multiple"])
	{
		segment2 = 1;
	}
	else if ([title2 isEqualToString:@"Yes or No"])
	{
		segment2 = 2;
	}
	else if ([title2 isEqualToString:@"# Pad"])
	{
		segment2 = 3;
	}
	else {
		segment2 = 1;
	}


	[userDefaults setInteger:Load forKey:TEST];
	[userDefaults setBool:add.on forKey:SWITCH1];
	[userDefaults setBool:minus.on forKey:SWITCH2];
	[userDefaults setBool:times.on forKey:SWITCH3];
	[userDefaults setBool:divide.on forKey:SWITCH4];
	[userDefaults setFloat:theSlider.value forKey:SLIDER];
	[userDefaults setInteger:segment forKey:SEGMENT];
	[userDefaults setInteger:segment2 forKey:PRO];
}

-(IBAction) KeepDaChanges:(id)sender
{
	title = [numberofProblems titleForSegmentAtIndex:numberofProblems.selectedSegmentIndex];
	if ([title isEqualToString:@"25"])
	{
		segment = 1;
	}
	else if ([title isEqualToString:@"50"])
	{
		segment = 2;
	}
	else if ([title isEqualToString:@"75"])
	{
		segment = 3;
	}
	else {
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
	self.navigationItem.title = @"Customize";
	if (highScorez == 902)
	{
		[highScore alertOn];
		[highScore highScoreCustom];
		[self.view insertSubview:highScore.view atIndex:123];
	}
	else 
	{
		UIBarButtonItem *button2 = [[UIBarButtonItem alloc] initWithTitle:@"Play!!"
															   style:UIBarButtonItemStyleBordered
															   target:self
															   action:@selector(loadGamePage:)];
		self.navigationItem.rightBarButtonItem = button2;
		NSString *Data;
		NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
	
		FirstLoad = [userDefaults integerForKey:TEST];
		if (FirstLoad == 1)
		{
            int helper;
            int helper2;
			theSlider.value = [userDefaults floatForKey:SLIDER];
			add.on = [userDefaults boolForKey:SWITCH1];
			minus.on = [userDefaults boolForKey:SWITCH2];
			times.on = [userDefaults boolForKey:SWITCH3];
			divide.on = [userDefaults boolForKey:SWITCH4];
            helper = ([userDefaults integerForKey:SEGMENT] - 1);
            if (helper != 0 && (helper > 4 || helper < 0))
            {
                numberofProblems.selectedSegmentIndex = 0;
            }
            else
            {
                numberofProblems.selectedSegmentIndex = ([userDefaults integerForKey:SEGMENT] - 1);
            }
			helper2 = ([userDefaults integerForKey:PRO] - 1);
            if (helper2 != 0 && (helper2 > 4 || helper2 < 0))
            {
                GameType.selectedSegmentIndex = 0;
            }
            else
            {
                GameType.selectedSegmentIndex = ([userDefaults integerForKey:PRO] - 1);
            }
		}
		else {
			numberofProblems.selectedSegmentIndex = 0;
			GameType.selectedSegmentIndex = 0;
		}	

	
		Data = [[NSString alloc] initWithFormat:@"1 to %1.0f", theSlider.value];
	
		display.text = Data;
	}
	
		[super viewDidLoad];
}

-(void) viewWillAppear:(BOOL)animated
{
    self.navigationItem.title = @"Customize";
    [super viewWillAppear:YES];
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

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
	[gamePage release];
	[highScore release];
	[homePage release];
	[numbPad release];
	[torF release];
	[theSlider release];
	[numberofProblems release];
	[GameType release];
	[nextPage release];
    [super dealloc];
}


@end
