//
//  CustomSetUp.m
//  BrainBuilderTrig
//
//  Created by Fred Kneeland on 3/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CustomSetUp.h"
#import "CustomGame.h"

@implementation CustomSetUp
@synthesize customGame2;
@synthesize cos;
@synthesize sec;
@synthesize sin;
@synthesize tan;
@synthesize cot;
@synthesize csc;
@synthesize quad1;
@synthesize quad2;
@synthesize quad3;
@synthesize quad4;
@synthesize rad;

-(IBAction) loadCustomGamePage:(id)sender
{
    if ((cos.on || sin.on || tan.on || csc.on || sec.on || cot.on) && (quad1.on || quad2.on || quad4.on || quad4.on))
        {
            [self helper];
            CustomGame *customGame = [[CustomGame alloc] initWithNibName:@"CustomGame" bundle:nil];
            [self.navigationController pushViewController:customGame animated:YES];
        }
    else
    {
        UIAlertView *alertDialog;
		alertDialog = [[UIAlertView alloc]
					   initWithTitle:@"Error" 
					   message:@"You need to have at least one trig function and one quadrant on!"
					   delegate:nil
					   cancelButtonTitle:@"Ok"
					   otherButtonTitles: nil];
		[alertDialog show];
    }
}

-(IBAction) upDate:(id)sender
{
    [self helper];
}

-(void) helper
{
    if (cos.on == TRUE)
    {
        cos2 = 1;
    }
    else 
    {
        cos2 = 0;
    }
    if (sin.on == TRUE)
    {
        sin2 = 1;
    }
    else
    {
        sin2 = 0;
    }
    if (tan.on)
    {
        tan2 = 1;
    }
    else
    {
        tan2 = 0;
    }
    if (csc.on)
    {
        csc2 = 1;
    }
    else
    {
        csc2 = 0;
    }
    if (sec.on)
    {
        sec2 = 1;
    }
    else
    {
        sec2 = 0;
    }
    if (cot.on)
    {
        cot2 = 1;
    }
    else
    {
        cot2 = 0;
    }
    if (quad1.on)
    {
        quad12 = 1;
    }
    else
    {
        quad12 = 0;
    }
    if (quad2.on)
    {
        quad22 = 1;
    }
    else
    {
        quad22 = 0;
    }
    if (quad3.on)
    {
        quad32 = 1;
    }
    else
    {
        quad32 = 0;
    }
    if (quad4.on)
    {
        quad42 = 1;
    }
    else
    {
        quad42 = 0;
    }
    if (rad.on)
    {
        rad2 = 1;
    }
    else
    {
        rad2 = 0;
    }
    [customGame2 learnSettings:sin2: cos2: tan2: csc2: sec2: cot2: quad12: quad22: quad32: quad42: rad2];
}

-(IBAction) saveData:(id)sender
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setBool:sin.on forKey:SIN32];
    [userDefaults setBool:cos.on forKey:COS32];
    [userDefaults setBool:tan.on forKey:TAN32];
    [userDefaults setBool:csc.on forKey:CSC32];
    [userDefaults setBool:sec.on forKey:SEC32];
    [userDefaults setBool:cot.on forKey:COT32];
    [userDefaults setBool:quad1.on forKey:QUAD132];
    [userDefaults setBool:quad2.on forKey:QUAD232];
    [userDefaults setBool:quad3.on forKey:QUAD332];
    [userDefaults setBool:quad4.on forKey:QUAD432];
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
    self.navigationItem.title = @"Customize";
    UIBarButtonItem *button2 = [[UIBarButtonItem alloc] initWithTitle:@"Play!!"
																style:UIBarButtonItemStyleBordered
															   target:self
															   action:@selector(loadCustomGamePage:)];
    self.navigationItem.rightBarButtonItem = button2;
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    firstSave = [userDefaults integerForKey:THEFIRST];
    if (firstSave == 32)
    {
        sin.on = [userDefaults boolForKey:SIN32];
        cos.on = [userDefaults boolForKey:COS32];
        tan.on = [userDefaults boolForKey:TAN32];
        sec.on = [userDefaults boolForKey:SEC32];
        csc.on = [userDefaults boolForKey:CSC32];
        cot.on = [userDefaults boolForKey:COT32];
        quad1.on = [userDefaults boolForKey:QUAD132];
        quad2.on = [userDefaults boolForKey:QUAD232];
        quad3.on = [userDefaults boolForKey:QUAD332];
        quad4.on = [userDefaults boolForKey:QUAD432];
    }
    else
    {       
        [userDefaults setBool:sin.on forKey:SIN32];
        [userDefaults setBool:cos.on forKey:COS32];
        [userDefaults setBool:tan.on forKey:TAN32];
        [userDefaults setBool:csc.on forKey:CSC32];
        [userDefaults setBool:sec.on forKey:SEC32];
        [userDefaults setBool:cot.on forKey:COT32];
        [userDefaults setBool:quad1.on forKey:QUAD132];
        [userDefaults setBool:quad2.on forKey:QUAD232];
        [userDefaults setBool:quad3.on forKey:QUAD332];
        [userDefaults setBool:quad4.on forKey:QUAD432];

        [userDefaults setInteger:32 forKey:THEFIRST];
    }

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
