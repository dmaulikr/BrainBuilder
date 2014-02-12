//
//  NewCalcViewController.m
//  BrainBuilderPro
//
//  Created by Fred Kneeland on 6/25/13.
//  Copyright (c) 2013 BLADE Enterprises LLC. All rights reserved.
//

#import "NewCalcViewController.h"
#import "GamePage.h"
#import "CalcHighScores.h"

@interface NewCalcViewController ()

@end

@implementation NewCalcViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


-(IBAction) loadLimits:(id)sender
{
    //GamePage *gamePage = [[GamePage alloc] initWithNibName:@"GamePage" bundle:nil];
    GamePage *gamePage = [[GamePage alloc] init];
    [GamePage GameChoice:1];
	[self.navigationController pushViewController:gamePage animated:YES];
    self.navigationItem.title = @"Back";
}


-(IBAction) loadDerivitive:(id)sender
{
    GamePage *gamePage = [[GamePage alloc] init];
    [GamePage GameChoice:2];
    [self.navigationController pushViewController:gamePage animated:YES];
    self.navigationItem.title = @"Back";
}

-(IBAction) loadSecondDerivitive:(id)sender
{
    GamePage *gamePage = [[GamePage alloc] init];
    [GamePage GameChoice:3];
    [self.navigationController pushViewController:gamePage animated:YES];
    self.navigationItem.title = @"Back";
}

-(IBAction) loadIndefiniteIntegral:(id)sender
{
    GamePage *gamePage = [[GamePage alloc] init];
    [GamePage GameChoice:4];
    [self.navigationController pushViewController:gamePage animated:YES];
    self.navigationItem.title = @"Back";
}

-(IBAction) loadDefiniteIntegral:(id)sender
{
    GamePage *gamePage = [[GamePage alloc] init];
    [GamePage GameChoice:5];
    [self.navigationController pushViewController:gamePage animated:YES];
    self.navigationItem.title = @"Back";
}
-(IBAction) loadHighScores:(id)sender
{
    CalcHighScores *calcHighScores = [[CalcHighScores alloc] init];
    [calcHighScores alertOff];
    [self.navigationController pushViewController:calcHighScores animated:YES];
    self.navigationItem.title = @"Back";
}
#pragma mark - View lifecycle

- (void)viewDidLoad
{
    self.navigationItem.title = @"Brain Builder Calc";
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void)viewDidAppear:(BOOL)animated
{
    self.navigationItem.title = @"Brain Builder Calc";
    [super viewDidAppear:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
