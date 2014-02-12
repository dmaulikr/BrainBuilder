//
//  SettingsViewController.m
//  BrainBuilderAttention
//
//  Created by Fred Kneeland on 9/5/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController
@synthesize startingLevel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction) newStartingLevel:(id)sender
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    if (startingLevel.selectedSegmentIndex == 0)
    {
        [userDefaults setInteger:1 forKey:STARTLEVEL];
        [userDefaults setInteger:1 forKey:SELECTEDINDEX];
    }
    else if (startingLevel.selectedSegmentIndex == 1)
    {
        [userDefaults setInteger:2 forKey:STARTLEVEL];
        [userDefaults setInteger:2 forKey:SELECTEDINDEX];
    }
    else
    {
        [userDefaults setInteger:3 forKey:STARTLEVEL];
        [userDefaults setInteger:3 forKey:SELECTEDINDEX];
    }
}

- (void)viewDidLoad
{
    self.navigationItem.title = @"Settings";
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    if ([userDefaults integerForKey:LEVEL] > 49)
    {
        [self.startingLevel setEnabled:YES forSegmentAtIndex:1];
    }
    if ([userDefaults integerForKey:LEVEL] > 99)
    {
        [self.startingLevel setEnabled:YES forSegmentAtIndex:2];
    }
    
    if ([userDefaults integerForKey:SELECTEDINDEX] == 2)
    {
        startingLevel.selectedSegmentIndex = 1;
    }
    else if ([userDefaults integerForKey:SELECTEDINDEX] == 3)
    {
        startingLevel.selectedSegmentIndex = 2;
    }
    else
    {
        startingLevel.selectedSegmentIndex = 0;
    }
    [startingLevel addTarget:self
                         action:@selector(newStartingLevel:)
               forControlEvents:UIControlEventValueChanged];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
