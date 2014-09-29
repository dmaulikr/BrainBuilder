//
//  TelopViewController.m
//  CascadeEffect Scorer
//
//  Created by Fred Kneeland on 9/9/14.
//  Copyright (c) 2014 Fred Kneeland. All rights reserved.
//

#import "TelopViewController.h"
#import "RootViewController.h"

@interface TelopViewController ()

@end

@implementation TelopViewController
@synthesize lowGoal, medGoal, highGoal, centerGoal;
@synthesize parkingZone, offField;
@synthesize score;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction) calcScore:(id)sender
{
    int totalScore = 0;
    
    int lowGoalIntVal = [lowGoal.text intValue];
    
    totalScore += lowGoalIntVal * 1;
    
    int medGoalIntVal = [medGoal.text intValue];
    
    totalScore += medGoalIntVal * 2;
    
    int highGoalIntVal = [highGoal.text intValue];
    
    totalScore += highGoalIntVal * 3;
    
    int centerGoalIntVal = [centerGoal.text intValue];
    
    totalScore += centerGoalIntVal * 6;
    
    NSString *title = [parkingZone titleForSegmentAtIndex:parkingZone.selectedSegmentIndex];
    
    if ([title isEqualToString:@"0"])
    {
        totalScore += 0;
    }
    else if ([title isEqualToString:@"1"])
    {
        totalScore += 10;
    }
    else if ([title isEqualToString:@"2"])
    {
        totalScore += 20;
    }
    else if ([title isEqualToString:@"3"])
    {
        totalScore += 30;
    }
    
    int offFieldValue = offField.selectedSegmentIndex;
    
    totalScore += offFieldValue * 30;
    
    if (werRed)
    {
        [RootViewController redTelopScore:totalScore];
    }
    else
    {
        [RootViewController blueTelopScore:totalScore];
    }
    
    score.text = [[NSString alloc] initWithFormat:@"%i", totalScore];
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    if (werRed)
    {
        [userDefaults setObject:lowGoal.text forKey:LOWGOALRED];
        [userDefaults setObject:medGoal.text forKey:MEDGOALRED];
        [userDefaults setObject:highGoal.text forKey:HIGHGOALRED];
        [userDefaults setObject:centerGoal.text forKey:CENTERGOALRED2];
        [userDefaults setInteger:parkingZone.selectedSegmentIndex forKey:PARKINGZONEGRED];
        [userDefaults setInteger:offField.selectedSegmentIndex forKey:OFFFIELDRED];
        [userDefaults setObject:score.text forKey:TELOPSCORERED];
    }
    else
    {
        [userDefaults setObject:lowGoal.text forKey:LOWGOALBLUE];
        [userDefaults setObject:medGoal.text forKey:MEDGOALBLUE];
        [userDefaults setObject:highGoal.text forKey:HIGHGOALBLUE];
        [userDefaults setObject:centerGoal.text forKey:CENTERGOALBLUE2];
        [userDefaults setInteger:parkingZone.selectedSegmentIndex forKey:PARKINGZONEBLUE];
        [userDefaults setInteger:offField.selectedSegmentIndex forKey:OFFFIELDBLUE];
        [userDefaults setObject:score.text forKey:TELOPSCOREBLUE];
    }
}

-(IBAction) hideKeyboard:(id)sender
{
    [lowGoal resignFirstResponder];
    [medGoal resignFirstResponder];
    [centerGoal resignFirstResponder];
    [highGoal resignFirstResponder];
}

-(void) setRed:(Boolean) red
{
    werRed = red;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

-(void) viewWillAppear:(BOOL)animated
{
    self.navigationItem.title = @"Telop";
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    if (werRed)
    {
        self.view.backgroundColor = [UIColor redColor];
        lowGoal.text = [userDefaults stringForKey:LOWGOALRED];
        medGoal.text = [userDefaults stringForKey:MEDGOALRED];
        highGoal.text = [userDefaults stringForKey:HIGHGOALRED];
        centerGoal.text = [userDefaults stringForKey:CENTERGOALRED2];
        
        parkingZone.selectedSegmentIndex = [userDefaults integerForKey:PARKINGZONEGRED];
        offField.selectedSegmentIndex = [userDefaults integerForKey:OFFFIELDRED];
        
        score.text = [userDefaults stringForKey:TELOPSCORERED];
        
    }
    else
    {
        self.view.backgroundColor = [UIColor blueColor];
        lowGoal.text = [userDefaults stringForKey:LOWGOALBLUE];
        medGoal.text = [userDefaults stringForKey:MEDGOALBLUE];
        highGoal.text = [userDefaults stringForKey:HIGHGOALBLUE];
        centerGoal.text = [userDefaults stringForKey:CENTERGOALBLUE2];
        
        parkingZone.selectedSegmentIndex = [userDefaults integerForKey:PARKINGZONEBLUE];
        offField.selectedSegmentIndex = [userDefaults integerForKey:OFFFIELDBLUE];
        
        score.text = [userDefaults stringForKey:TELOPSCOREBLUE];
    }
    
    
    
    [super viewWillAppear:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
