//
//  TrigRootViewController.m
//  BrainBuilderPro
//
//  Created by Fred Kneeland on 3/16/12.
//  Copyright (c) 2012 BLADE Enterprises LLC. All rights reserved.
//

#import "TrigRootViewController.h"
#import "TrigQuickGame.h"
#import "TrigCustomSetUp.h"
#import "TrigHighScoreQuick.h"
#import "TrigHighScoreCustom.h"
#import "TrigInstructions.h"

@implementation TrigRootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction) loadNextPage:(id)sender
{
	TrigQuickGame *quickGame = [[TrigQuickGame alloc] initWithNibName:@"TrigQuickGame" bundle:nil];
    self.navigationItem.title = @"Back";
	[self.navigationController pushViewController:quickGame animated:YES];
}

-(IBAction) loadCustomPage:(id)sender
{
	TrigCustomSetUp *customSetUp = [[TrigCustomSetUp alloc] initWithNibName:@"TrigCustomSetUp" bundle:nil];
    self.navigationItem.title = @"Back";
	[self.navigationController pushViewController:customSetUp animated:YES];
}

-(IBAction) loadHighScoreQuickPage:(id)sender
{
	TrigHighScoreQuick *highScoreQuick = [[TrigHighScoreQuick alloc] initWithNibName:@"TrigHighScoreQuick" bundle:nil];
    [highScoreQuick alertOff];
    self.navigationItem.title = @"Back";
	[self.navigationController pushViewController:highScoreQuick animated:YES];
}

-(IBAction) loadHighScoreCustomPage:(id)sender
{
	TrigHighScoreCustom *highScoreCustom = [[TrigHighScoreCustom alloc] initWithNibName:@"TrigHighScoreCustom" bundle:nil];
    [highScoreCustom AlertOff];
    self.navigationItem.title = @"Back";
	[self.navigationController pushViewController:highScoreCustom animated:YES];
}

-(IBAction) loadInstructionsPage:(id)sender
{
	TrigInstructions *instructions = [[TrigInstructions alloc] initWithNibName:@"TrigInstructions" bundle:nil];
    self.navigationItem.title = @"Back";
	[self.navigationController pushViewController:instructions animated:YES];
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
    self.navigationItem.title = @"Brain Builder Trig";
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void) viewWillAppear:(BOOL)animated
{
    self.navigationItem.title = @"Brain Builder Trig";
    [super viewWillAppear:YES];
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
