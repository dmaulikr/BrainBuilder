//
//  RootViewController.m
//  CascadeEffect Scorer
//
//  Created by Fred Kneeland on 9/9/14.
//  Copyright (c) 2014 Fred Kneeland. All rights reserved.
//

#import "RootViewController.h"
#import "AppDelegate.h"

#import "AutoViewController.h"
#import "TelopViewController.h"
#import "PenaltyViewController.h"

static int redAutoVal;
static int redTelopVal;
static int redPenaltyVal;
static int blueAutoVal;
static int blueTelopVal;
static int bluePenaltyVal;

@interface RootViewController ()

@end

@implementation RootViewController
@synthesize redScore, blueScore;
@synthesize redQualifying, redRanking, blueQualifying, blueRanking;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction) loadRedAuto:(id)sender
{
    AutoViewController *autoViewController = [AppDelegate autoViewController];
    [autoViewController setRed:true];
	[self.navigationController pushViewController:autoViewController animated:YES];
}

- (IBAction) loadBlueAuto:(id)sender
{
    AutoViewController *autoViewController = [AppDelegate autoViewController];
    [autoViewController setRed:false];
	[self.navigationController pushViewController:autoViewController animated:YES];
}

- (IBAction) loadRedTelop:(id)sender
{
    TelopViewController *telopViewController = [AppDelegate telopViewController];
    [telopViewController setRed:true];
	[self.navigationController pushViewController:telopViewController animated:YES];
}

- (IBAction) loadBlueTelop:(id)sender
{
    TelopViewController *telopViewController = [AppDelegate telopViewController];
    [telopViewController setRed:false];
	[self.navigationController pushViewController:telopViewController animated:YES];
}

- (IBAction) loadRedPenalty:(id)sender
{
    PenaltyViewController *penaltyViewController = [AppDelegate penaltyViewController];
    [penaltyViewController setRed:true];
	[self.navigationController pushViewController:penaltyViewController animated:YES];
}

- (IBAction) loadBluePenalty:(id)sender
{
    PenaltyViewController *penaltyViewController = [AppDelegate penaltyViewController];
    [penaltyViewController setRed:false];
	[self.navigationController pushViewController:penaltyViewController animated:YES];
}

+(void) redAutoScore:(NSInteger)score
{
    redAutoVal = score;
}

+(void) redTelopScore:(NSInteger)score
{
    redTelopVal = score;
}

+(void) redPenaltyScore:(NSInteger)score
{
    redPenaltyVal = score;
}

+(void) blueAutoScore:(NSInteger)score
{
    blueAutoVal = score;
}

+(void) blueTelopScore:(NSInteger)score
{
    blueTelopVal = score;
}

+(void) bluePenaltyScore:(NSInteger)score
{
    bluePenaltyVal = score;
}

- (void)viewDidLoad
{
    self.navigationItem.title = @"Cascade Effect Scorer";
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

-(void) viewWillAppear:(BOOL)animated
{
    int totalRedScore = 0;
    int totalBlueScore = 0;
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    redAutoVal = [[userDefaults stringForKey:SCORERED] intValue];
    
    if (redAutoVal > 0)
    {
        totalRedScore += redAutoVal;
    }
    
    redTelopVal = [[userDefaults stringForKey:TELOPSCORERED] intValue];
    
    if (redTelopVal > 0)
    {
        totalRedScore += redTelopVal;
    }
    
    bluePenaltyVal = [[userDefaults stringForKey:PENALTIESBLUE] intValue];
    
    if (bluePenaltyVal > 0)
    {
        totalRedScore += bluePenaltyVal;
    }
    
    blueAutoVal = [[userDefaults stringForKey:SCOREBLUE] intValue];
    
    if (blueAutoVal > 0)
    {
        totalBlueScore += blueAutoVal;
    }
    
    blueTelopVal = [[userDefaults stringForKey:TELOPSCOREBLUE] intValue];
    
    if (blueTelopVal > 0)
    {
        totalBlueScore += blueTelopVal;
    }
    
    redPenaltyVal = [[userDefaults stringForKey:PENALTIESBLUE] intValue];
    
    if (redPenaltyVal > 0)
    {
        totalBlueScore += redPenaltyVal;
    }
    
    redScore.text = [[NSString alloc] initWithFormat:@"%i", totalRedScore];
    blueScore.text =[[NSString alloc] initWithFormat:@"%i", totalBlueScore];
    
    if (totalBlueScore > totalRedScore)
    {
        redQualifying.text = @"0";
        blueQualifying.text = @"2";
        redRanking.text = [[NSString alloc] initWithFormat:@"%i", totalRedScore];
        blueRanking.text = [[NSString alloc] initWithFormat:@"%i", totalRedScore];
    }
    else if (totalRedScore == totalBlueScore)
    {
        redQualifying.text = @"1";
        blueQualifying.text = @"1";
        redRanking.text = [[NSString alloc] initWithFormat:@"%i", totalRedScore];
        blueRanking.text = [[NSString alloc] initWithFormat:@"%i", totalRedScore];
    }
    else
    {
        redQualifying.text = @"2";
        blueQualifying.text = @"0";
        redRanking.text = [[NSString alloc] initWithFormat:@"%i", totalBlueScore];
        blueRanking.text = [[NSString alloc] initWithFormat:@"%i", totalBlueScore];
    }
    [super viewWillAppear:YES];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
