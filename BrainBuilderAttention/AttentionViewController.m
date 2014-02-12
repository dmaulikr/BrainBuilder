//
//  AttentionViewController.m
//  BrainBuilderAttention
//
//  Created by Fred Kneeland on 8/29/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import "AttentionViewController.h"
#import "GameViewController.h"
#import "HighScoreViewController.h"
#import "ThirdInstructionViewController.h"
#import "SettingsViewController.h"

@interface AttentionViewController ()

@end

@implementation AttentionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction) loadSettings:(id)sender
{
    SettingsViewController *settingsViewController = [[SettingsViewController alloc] init];
    self.navigationItem.title = @"Back";
    [self.navigationController pushViewController:settingsViewController animated:YES];
}

-(IBAction) loadGamePage:(id)sender
{
     NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
     if ([userDefaults integerForKey:FIRSTLOAD] == 32)
     {
         GameViewController *gameViewController = [[GameViewController alloc] init];
         self.navigationItem.title = @"Back";
         [self.navigationController pushViewController:gameViewController animated:YES];
     }
     else
     {
         ThirdInstructionViewController *instructionViewController = [[ThirdInstructionViewController alloc] init];
         self.navigationItem.title = @"Back";
         [self.navigationController pushViewController:instructionViewController animated:YES];
         //[instructionViewController lastView:1];
         [userDefaults setInteger:32 forKey:FIRSTLOAD];
     }
    
}

-(IBAction) loadInstructions:(id)sender
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setInteger:32 forKey:FIRSTLOAD];
    ThirdInstructionViewController *instructionViewController = [[ThirdInstructionViewController alloc] init];
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
    self.navigationItem.title = @"Brain Builder Attention";
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void) viewWillAppear:(BOOL)animated
{
    self.navigationItem.title = @"Brain Builder Attention";
    [super viewWillAppear:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
