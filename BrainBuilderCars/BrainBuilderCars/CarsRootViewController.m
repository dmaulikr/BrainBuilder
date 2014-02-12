//
//  CarsRootViewController.m
//  BrainBuilderCars
//
//  Created by Fred Kneeland on 9/4/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import "CarsRootViewController.h"
#import "GameViewController.h"

@interface CarsRootViewController ()

@end

@implementation CarsRootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction)loadGamePage:(id)sender
{
    GameViewController *gameViewController = [[GameViewController alloc] init];
    self.navigationItem.title = @"Back";
    [self.navigationController pushViewController:gameViewController animated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
