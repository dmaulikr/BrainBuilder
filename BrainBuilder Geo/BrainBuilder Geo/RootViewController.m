//
//  RootViewController.m
//  BrainBuilder Geo
//
//  Created by Fred Kneeland on 5/23/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController
@synthesize tester;
@synthesize tester2;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction) buttonPressed:(id)sender
{
    tester2.text = @"Hello World";
}

- (void)viewDidLoad
{
    self.navigationItem.title = @"BrainBuilder Geo";
    tester2.text = @"";
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
