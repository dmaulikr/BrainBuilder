//
//  TrigLogSettings.m
//  BrainBuilderPro
//
//  Created by Fred Kneeland on 3/16/12.
//  Copyright (c) 2012 BLADE Enterprises LLC. All rights reserved.
//

#import "TrigLogSettings.h"
#import "TrigCustomLog.h"

@implementation TrigLogSettings
@synthesize valueOfBases;
@synthesize valueOfPowers;
@synthesize negativeExponents;
@synthesize positiveExponents;
@synthesize logs;
@synthesize basesLabel;
@synthesize powersLabel;
@synthesize customLog;

-(IBAction) upDateLabels:(id)sender
{
    if (!(positiveExponents.on || negativeExponents.on || logs.on))
    {
        positiveExponents.on = TRUE;
    }
    else
    {
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        [userDefaults setBool:positiveExponents.on forKey:SWITCH1];
        [userDefaults setBool:negativeExponents.on forKey:SWITCH2];
        [userDefaults setBool:logs.on forKey:SWITCH3];
        [userDefaults setFloat:valueOfBases.value forKey:SLIDER1];
        [userDefaults setFloat:valueOfPowers.value forKey:SLIDER2];
        helper = [[NSString alloc] initWithFormat:@"%1.0f", valueOfBases.value];
        helper2 = [[NSString alloc] initWithFormat:@"%1.0f", valueOfPowers.value];
        basesLabel.text = helper;
        powersLabel.text = helper2;
        transformer = valueOfBases.value;
        transformer2 = valueOfPowers.value;
        transformer3 = negativeExponents.on;
        transformer4 = positiveExponents.on;
        transformer5 = logs.on;
        [customLog learnDaSettigs:transformer :transformer2 :transformer3 :transformer4 :transformer5];
    }
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
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
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    firstLoad = [userDefaults integerForKey:FIRSTLOAD];
	
    if (firstLoad == 2)
    {
        positiveExponents.on = [userDefaults boolForKey:SWITCH1];
        negativeExponents.on = [userDefaults boolForKey:SWITCH2];
        logs.on = [userDefaults boolForKey:SWITCH3];
        valueOfBases.value = [userDefaults floatForKey:SLIDER1];
        valueOfPowers.value = [userDefaults floatForKey:SLIDER2];
    }
    else
    {
        [userDefaults setInteger:2 forKey:FIRSTLOAD];
    }
    
    transformer = valueOfBases.value;
    transformer2 = valueOfPowers.value;
    transformer3 = positiveExponents.on;
    transformer4 = negativeExponents.on;
    transformer5 = logs.on;
    [customLog learnDaSettigs:transformer :transformer2 :transformer3 :transformer4 :transformer5];
    
    
    helper = [[NSString alloc] initWithFormat:@"%1.0f", valueOfBases.value];
    helper2 = [[NSString alloc] initWithFormat:@"%1.0f", valueOfPowers.value];
    basesLabel.text = helper;
    powersLabel.text = helper2;
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
