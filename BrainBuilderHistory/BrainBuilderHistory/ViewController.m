//
//  ViewController.m
//  BrainBuilderHistory
//
//  Created by Fred Kneeland on 5/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "QuickGame.h"
#import "CustomSetUp.h"
#import "HighScoreQuick.h"
#import "HighScoreCustom.h"
#import "Instructions.h"

@implementation ViewController

-(IBAction) loadQuickGame:(id)sender
{
    QuickGame *quickGame = [[QuickGame alloc] initWithNibName:@"QuickGame" bundle:nil];
	[self.navigationController pushViewController:quickGame animated:YES];
}

-(IBAction) loadCustomGame:(id)sender
{
    CustomSetUp *customSetUp = [[CustomSetUp alloc] initWithNibName:@"CustomSetUp" bundle:nil];
	[self.navigationController pushViewController:customSetUp animated:YES];
}

-(IBAction) loadHighScoreQuick:(id)sender
{
    HighScoreQuick *highScoreQuick = [[HighScoreQuick alloc] initWithNibName:@"HighScoreQuick" bundle:nil];
    [highScoreQuick alertOff];
	[self.navigationController pushViewController:highScoreQuick animated:YES];
}
-(IBAction) loadHighScoreCustom:(id)sender
{
    HighScoreCustom *highScoreCustom = [[HighScoreCustom alloc] initWithNibName:@"HighScoreCustom" bundle:nil];
	[self.navigationController pushViewController:highScoreCustom animated:YES];
}
-(IBAction) loadInstructions:(id)sender
{
    Instructions *instructions = [[Instructions alloc] initWithNibName:@"Instructions" bundle:nil];
	[self.navigationController pushViewController:instructions animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    self.navigationItem.title = @"BrainBuilder History";
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
