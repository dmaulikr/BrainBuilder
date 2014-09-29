//
//  RootViewController.m
//  BrainBuilderCity
//
//  Created by Fred Kneeland on 4/26/14.
//  Copyright (c) 2014 Fred Kneeland. All rights reserved.
//

#import "RootViewController.h"
#import "InstructionsViewController.h"
#import "HighScoresViewController.h"
#import "GameViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction) loadGamePage:(id)sender
{
    GameViewController *gameViewController = [[GameViewController alloc] init];
    self.navigationItem.title = @"Back";
    [self.navigationController pushViewController:gameViewController animated:YES];
}

-(IBAction) loadHighScores:(id)sender
{
    HighScoresViewController *highScoresViewController = [[HighScoresViewController alloc] init];
    self.navigationItem.title = @"Back";
    [highScoresViewController alertOff];
    [self.navigationController pushViewController:highScoresViewController animated:YES];
}

-(IBAction) loadInstructions:(id)sender
{
    InstructionsViewController *instructionViewController = [[InstructionsViewController alloc] init];
    self.navigationItem.title = @"Back";
    [self.navigationController pushViewController:instructionViewController animated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void) viewWillAppear:(BOOL)animated
{
    self.navigationItem.title = @"Brain Builder City";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
