//
//  CustomSetUp.m
//  BrainBuilderHistory
//
//  Created by Fred Kneeland on 6/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CustomSetUp.h"
#import "CustomGame.h"

@implementation CustomSetUp
@synthesize object1, object2, object3, object4;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void) save
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setBool:object1.on forKey:OBJECT1];
    [userDefaults setBool:object2.on forKey:OBJECT2];
    [userDefaults setBool:object3.on forKey:OBJECT3];
    [userDefaults setBool:object4.on forKey:OBJECT4];
}

-(IBAction) loadCustomGamePage:(id)sender
{
    [self save];
    CustomGame *customGame = [[CustomGame alloc] initWithNibName:@"CustomGame" bundle:nil];
    [customGame objectChoice:object1.on :object2.on: object3.on: object4.on];
	[self.navigationController pushViewController:customGame animated:YES];
}

-(IBAction) saver:(id)sender
{
    [self save];
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
    int hello;
    hello = [userDefaults integerForKey:NUMB];
    if (hello != 37)
    {
        [userDefaults setInteger:37 forKey:NUMB];
        [self save];
    }
    else
    {
        object1.on = [userDefaults boolForKey:OBJECT1];
        object2.on = [userDefaults boolForKey:OBJECT2];
        object3.on = [userDefaults boolForKey:OBJECT3];
        object4.on = [userDefaults boolForKey:OBJECT4];
    }
    [super viewDidLoad];
    self.navigationItem.title = @"Customize";
    UIBarButtonItem *button2 = [[UIBarButtonItem alloc] initWithTitle:@"Play!!"
																style:UIBarButtonItemStyleBordered
															   target:self
															   action:@selector(loadCustomGamePage:)];
    self.navigationItem.rightBarButtonItem = button2;

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
