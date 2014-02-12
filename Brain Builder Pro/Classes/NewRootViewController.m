//
//  NewRootViewController.m
//  BrainBuilderPro
//
//  Created by Fred Kneeland on 3/16/12.
//  Copyright (c) 2012 BLADE Enterprises LLC. All rights reserved.
//

#import "NewRootViewController.h"
#import "RootViewController.h"
#import "TrigRootViewController.h"
#import "CalcViewController.h"
#import "NewCalcViewController.h"


@implementation NewRootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction) loadBrainBuilderMath:(id)sender
{
    RootViewController *rootViewController = [[RootViewController alloc] initWithNibName:@"RootViewController" bundle:nil];
	[self.navigationController pushViewController:rootViewController animated:YES];
}
-(IBAction) loadBrainBuilderTrig:(id)sender
{
    TrigRootViewController *trigRootViewController = [[TrigRootViewController alloc] initWithNibName:@"TrigRootViewController" bundle:nil];
	[self.navigationController pushViewController:trigRootViewController animated:YES];
}

-(IBAction) loadBrainBuilderCalc:(id)sender
{
    NewCalcViewController *newCalcViewController = [[NewCalcViewController alloc] init];
    //NewCalcViewController *newCalcViewController = [[NewCalcViewController alloc] initWithNibName:@"NewCalcViewController" bundle:nil];
	[self.navigationController pushViewController:newCalcViewController animated:YES];
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
