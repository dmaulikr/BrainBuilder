//
//  PenaltyViewController.m
//  CascadeEffect Scorer
//
//  Created by Fred Kneeland on 9/9/14.
//  Copyright (c) 2014 Fred Kneeland. All rights reserved.
//

#import "PenaltyViewController.h"
#import "RootViewController.h"

@interface PenaltyViewController ()

@end

@implementation PenaltyViewController
@synthesize major, minor;
@synthesize penalties;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction) calcPenalties:(id)sender
{
    int totalPenalties = 0;
    
    int minorIntValue = [minor.text integerValue];
    
    totalPenalties += minorIntValue * 10;
    
    int majorIntValue = [major.text integerValue];
    
    totalPenalties += majorIntValue * 50;
    
    if (werRed)
    {
        [RootViewController redPenaltyScore:totalPenalties];
    }
    else
    {
        [RootViewController bluePenaltyScore:totalPenalties];
    }
    
    penalties.text = [[NSString alloc] initWithFormat:@"%i", totalPenalties];
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    if (werRed)
    {
        [userDefaults setObject:minor.text forKey:MINORRED];
        [userDefaults setObject:major.text forKey:MAJORRED];
        [userDefaults setObject:penalties.text forKey:PENALTIESRED];
    }
    else
    {
        [userDefaults setObject:minor.text forKey:MINORBLUE];
        [userDefaults setObject:major.text forKey:MAJORBLUE];
        [userDefaults setObject:penalties.text forKey:PENALTIESBLUE];
    }
}

-(IBAction) hideKeyboard:(id)sender
{
    [major resignFirstResponder];
    [minor resignFirstResponder];
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
    self.navigationItem.title = @"Penalties";
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    if (werRed)
    {
        self.view.backgroundColor = [UIColor redColor];
        minor.text = [userDefaults stringForKey:MINORRED];
        major.text = [userDefaults stringForKey:MAJORRED];
        penalties.text = [userDefaults stringForKey:PENALTIESRED];
    }
    else
    {
        self.view.backgroundColor = [UIColor blueColor];
        minor.text = [userDefaults stringForKey:MINORBLUE];
        major.text = [userDefaults stringForKey:MAJORBLUE];
        penalties.text = [userDefaults stringForKey:PENALTIESBLUE];
    }
    
    
    
    [super viewWillAppear:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
