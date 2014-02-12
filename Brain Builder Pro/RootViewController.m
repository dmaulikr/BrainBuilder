//
//  RootViewController.m
//  Finale
//
//  Created by Fred Kneeland on 8/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "RootViewController.h"
#import "QuickGame.h"
#import  "CustomGame.h"
#import "Instructions.h"
#import "HighScore.h"
#import "HighScoreCustom.h"

@implementation RootViewController
@synthesize highScore;

-(void) updateHighScorez
{
	highScorezes = 2;
}

-(void) normal
{
	highScorezes = 1;
}

-(void) Repeat
{
	repetition = 2;
}

-(IBAction) loadNextPage:(id)sender
{
	QuickGame *quickGame = [[QuickGame alloc] initWithNibName:@"QuickGame" bundle:nil];
    self.navigationItem.title = @"Back";
	[self.navigationController pushViewController:quickGame animated:YES];
}

-(IBAction) loadCustomGame:(id)sender
{
	CustomGame *customGame = [[CustomGame alloc] initWithNibName:@"CustomGame" bundle:nil];
    self.navigationItem.title = @"Back";
	[self.navigationController pushViewController:customGame animated:YES];
}

-(IBAction) loadInstructionsPage:(id)sender
{
	Instructions *instructions = [[Instructions alloc] initWithNibName:@"Instructions" bundle:nil];
    self.navigationItem.title = @"Back";
	[self.navigationController pushViewController:instructions animated:YES];
}

-(IBAction) loadHighScorePage:(id)sender
{
	[highScore alertOff];
	HighScore *highScorez = [[HighScore alloc] initWithNibName:@"HighScore" bundle:nil];
    self.navigationItem.title = @"Back";
	[self.navigationController pushViewController:highScorez animated:YES];
}

-(IBAction) loadCustomHighScore:(id)sender
{
	HighScoreCustom *highScorezCustom = [[HighScoreCustom alloc] initWithNibName:@"HighScoreCustom" bundle:nil];
	[highScorezCustom AlertOff];
    self.navigationItem.title = @"Back";
	[self.navigationController pushViewController:highScorezCustom animated:YES];
}


/*
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    adBanner = [[ADBannerView alloc] initWithFrame:CGRectZero];
	
    // Set the autoresizing mask so that the banner is pinned to the bottom
    self.adBanner.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleTopMargin;
	
    // Since we support all orientations, support portrait and landscape content sizes.
    // If you only supported landscape or portrait, you could remove the other from this set
    self.adBanner.requiredContentSizeIdentifiers = (&ADBannerContentSizeIdentifierPortrait != nil) ?
	[NSSet setWithObjects:ADBannerContentSizeIdentifierPortrait, ADBannerContentSizeIdentifierLandscape, nil] : 
	[NSSet setWithObjects:ADBannerContentSizeIdentifier320x50, ADBannerContentSizeIdentifier480x32, nil];
    
    return YES;
}
*/

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
	self.navigationItem.title = @"Brain Builder Math";
    [super viewDidLoad];
}

-(void) viewWillAppear:(BOOL)animated
{
    self.navigationItem.title = @"Brain Builder Math";
    [super viewWillAppear:YES];
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
	[highScore release];
    [super dealloc];
}


@end
