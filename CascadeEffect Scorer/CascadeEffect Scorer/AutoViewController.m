//
//  AutoViewController.m
//  CascadeEffect Scorer
//
//  Created by Fred Kneeland on 9/9/14.
//  Copyright (c) 2014 Fred Kneeland. All rights reserved.
//

#import "AutoViewController.h"
#import "RootViewController.h"

@interface AutoViewController ()

@end

@implementation AutoViewController
@synthesize offRamp, kickStand, centerGoal;
@synthesize goalsParked, ballInGoals;
@synthesize score;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void) setRed:(Boolean) red
{
    werRed = red;
}


-(IBAction)upDateScore:(id)sender
{
    int currentScore = 0;
    
    if (offRamp.on)
    {
        currentScore += 20;
    }
    
    if (kickStand.on)
    {
        currentScore += 30;
    }
    
    if (centerGoal.on)
    {
        currentScore += 60;
    }
    
    int goalsParkedIntVal = [goalsParked.text intValue];
    
    if (goalsParked > 0)
    {
        currentScore += goalsParkedIntVal * 20;
    }
    
    int ballInGoalsIntVal = [ballInGoals.text intValue];
    
    if (ballInGoals > 0)
    {
        currentScore += ballInGoalsIntVal * 30;
    }
    
    score.text = [[NSString alloc] initWithFormat:@"%i", currentScore];
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    if (werRed)
    {
        [RootViewController redAutoScore:currentScore];
        [userDefaults setBool:offRamp.on forKey:OFFRAMPRED];
        [userDefaults setBool:kickStand.on forKey:KICKSTANDRED];
        [userDefaults setBool:centerGoal.on forKey:CENTERGOALRED];
        [userDefaults setObject:goalsParked.text forKey:GOALPARKEDRED];
        [userDefaults setObject:ballInGoals.text forKey:BALLINGOALRED];
        [userDefaults setObject:score.text forKey:SCORERED];
    }
    else
    {
        [RootViewController blueAutoScore:currentScore];
        [userDefaults setBool:offRamp.on forKey:OFFRAMPBLUE];
        [userDefaults setBool:kickStand.on forKey:KICKSTANDBLUE];
        [userDefaults setBool:centerGoal.on forKey:CENTERGOALBLUE];
        [userDefaults setObject:goalsParked.text forKey:GOALPARKEDBLUE];
        [userDefaults setObject:ballInGoals.text forKey:BALLINGOALBLUE];
        [userDefaults setObject:score.text forKey:SCOREBLUE];
    }
}

-(IBAction) hideKeyboard:(id)sender
{
    [goalsParked resignFirstResponder];
    [ballInGoals resignFirstResponder];
}

- (void)viewDidLoad
{
    self.navigationItem.title = @"Autonomous Score";
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated
{
    self.navigationItem.title = @"Autonomous";
    if (werRed)
    {
        self.view.backgroundColor = [UIColor redColor];
    }
    else
    {
        self.view.backgroundColor = [UIColor blueColor];
    }
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    if (werRed)
    {
        offRamp.on       = [userDefaults boolForKey:OFFRAMPRED];
        kickStand.on     = [userDefaults boolForKey:KICKSTANDRED];
        centerGoal.on    = [userDefaults boolForKey:CENTERGOALRED];
        goalsParked.text = [userDefaults stringForKey:GOALPARKEDRED];
        ballInGoals.text = [userDefaults stringForKey:BALLINGOALRED];
        score.text       = [userDefaults stringForKey:SCORERED];
    }
    else
    {
        offRamp.on       = [userDefaults boolForKey:OFFRAMPBLUE];
        kickStand.on     = [userDefaults boolForKey:KICKSTANDBLUE];
        centerGoal.on    = [userDefaults boolForKey:CENTERGOALBLUE];
        goalsParked.text = [userDefaults stringForKey:GOALPARKEDBLUE];
        ballInGoals.text = [userDefaults stringForKey:BALLINGOALBLUE];
        score.text       = [userDefaults stringForKey:SCOREBLUE];
    }
    
    [super viewWillAppear:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
