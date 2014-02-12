//
//  InstructionViewController.m
//  BrainBuilder
//
//  Created by Fred Kneeland on 8/22/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import "InstructionViewController.h"
#import "MemoryViewController.h"

@interface InstructionViewController ()

@end

@implementation InstructionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void) lastView:(NSInteger)helper
{
    viewShouldLoad = helper;
}

- (void)viewDidLoad
{
    self.navigationItem.title = @"Instructions!";
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
