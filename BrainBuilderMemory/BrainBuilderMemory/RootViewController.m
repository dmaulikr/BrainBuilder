//
//  RootViewController.m
//  BrainBuilder
//
//  Created by Fred Kneeland on 8/19/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import "RootViewController.h"
#import "MemoryViewController.h"
#import "InstructionViewController.h"
#import "HighScoreViewController.h"

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

-(IBAction) loadMemoryPage:(id)sender
{
    /*
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    if ([userDefaults integerForKey:FIRSTLOAD] == 32)
    {
        MemoryViewController *memoryViewController = [[MemoryViewController alloc] init];
        self.navigationItem.title = @"Back";
        [self.navigationController pushViewController:memoryViewController animated:YES];
    }
    else
    {
        InstructionViewController *instructionViewController = [[InstructionViewController alloc] init];
        self.navigationItem.title = @"Back";
        [self.navigationController pushViewController:instructionViewController animated:YES];
        [instructionViewController lastView:1];
        [userDefaults setInteger:32 forKey:FIRSTLOAD];
    }
     */
    MemoryViewController *memoryViewController = [[MemoryViewController alloc] init];
    self.navigationItem.title = @"Back";
    [self.navigationController pushViewController:memoryViewController animated:YES];
}

-(IBAction) loadInstructions:(id)sender
{
    InstructionViewController *instructionViewController = [[InstructionViewController alloc] init];
    self.navigationItem.title = @"Back";
    [self.navigationController pushViewController:instructionViewController animated:YES];
}


-(IBAction) loadHighScores:(id)sender
{
    HighScoreViewController *highScoreViewController = [[HighScoreViewController alloc] init];
    self.navigationItem.title = @"Back";
    [highScoreViewController alertOff];
    [self.navigationController pushViewController:highScoreViewController animated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void) viewWillAppear:(BOOL)animated
{
    self.navigationItem.title = @"Brain Builder Memory";
    [super viewWillAppear:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
