//
//  RootViewController.m
//  BrainBuilderTrig
//
//  Created by Fred Kneeland on 3/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RootViewController.h"
#import "QuickGame.h"
#import "CustomSetUp.h"
#import "HighScoreQuick.h"
#import "HighScoreCustom.h"
#import "UpGradePage.h"
#import "Instructions.h"

@implementation RootViewController

-(IBAction) loadNextPage:(id)sender
{
	QuickGame *quickGame = [[QuickGame alloc] initWithNibName:@"QuickGame" bundle:nil];
	[self.navigationController pushViewController:quickGame animated:YES];
}

-(IBAction) loadCustomPage:(id)sender
{
	CustomSetUp *customSetUp = [[CustomSetUp alloc] initWithNibName:@"CustomSetUp" bundle:nil];
	[self.navigationController pushViewController:customSetUp animated:YES];
}

-(IBAction) loadHighScoreQuickPage:(id)sender
{
	HighScoreQuick *highScoreQuick = [[HighScoreQuick alloc] initWithNibName:@"HighScoreQuick" bundle:nil];
    [highScoreQuick alertOff];
	[self.navigationController pushViewController:highScoreQuick animated:YES];
}

-(IBAction) loadHighScoreCustomPage:(id)sender
{
	HighScoreCustom *highScoreCustom = [[HighScoreCustom alloc] initWithNibName:@"HighScoreCustom" bundle:nil];
    [highScoreCustom AlertOff];
	[self.navigationController pushViewController:highScoreCustom animated:YES];
}

-(IBAction) loadInstructionsPage:(id)sender
{
	Instructions *instructions = [[Instructions alloc] initWithNibName:@"Instructions" bundle:nil];
	[self.navigationController pushViewController:instructions animated:YES];
}

-(IBAction) loadUpgradePage:(id)sender
{
	UpGradePage *upGradePage = [[UpGradePage alloc] initWithNibName:@"UpGradePage" bundle:nil];
	[self.navigationController pushViewController:upGradePage animated:YES];
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
    self.title = @"BrainBuilder Trig";
    self.navigationItem.backBarButtonItem.title = @"back";
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
