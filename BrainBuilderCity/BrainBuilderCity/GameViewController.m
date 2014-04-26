//
//  GameViewController.m
//  BrainBuilderCity
//
//  Created by Fred Kneeland on 4/26/14.
//  Copyright (c) 2014 Fred Kneeland. All rights reserved.
//

#import "GameViewController.h"

@interface GameViewController ()

@end

@implementation GameViewController
@synthesize output;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction) Button1:(id)sender
{
    NSString *string1 = @"1";
    workingSolution = [workingSolution stringByAppendingString:string1];
    output.text = workingSolution;
}

-(IBAction) Button2:(id)sender
{
    NSString *string2 = @"2";
    workingSolution = [workingSolution stringByAppendingString:string2];
    output.text = workingSolution;
}

-(IBAction) Button3:(id)sender
{
    NSString *string3 = @"3";
    workingSolution = [workingSolution stringByAppendingString:string3];
    output.text = workingSolution;
}

-(IBAction) Button4:(id)sender
{
    NSString *string4 = @"4";
    workingSolution = [workingSolution stringByAppendingString:string4];
    output.text = workingSolution;
}

-(IBAction) Button5:(id)sender
{
    NSString *string5 = @"5";
    workingSolution = [workingSolution stringByAppendingString:string5];
    output.text = workingSolution;
}

-(IBAction) Button6:(id)sender
{
    NSString *string6 = @"6";
    workingSolution = [workingSolution stringByAppendingString:string6];
    output.text = workingSolution;
}

-(IBAction) Button7:(id)sender
{
    NSString *string7 = @"7";
    workingSolution = [workingSolution stringByAppendingString:string7];
    output.text = workingSolution;
}

-(IBAction) Button8:(id)sender
{
    NSString *string8 = @"8";
    workingSolution = [workingSolution stringByAppendingString:string8];
    output.text = workingSolution;
}

-(IBAction) Button9:(id)sender
{
    NSString *string9 = @"9";
    workingSolution = [workingSolution stringByAppendingString:string9];
    output.text = workingSolution;
}

-(IBAction) Button0:(id)sender
{
    NSString *string0 = @"0";
    workingSolution = [workingSolution stringByAppendingString:string0];
    output.text = workingSolution;
}

-(IBAction) ButtonClear:(id)sender
{
    workingSolution = @"";
    output.text = workingSolution;
}

-(IBAction) ButtonDelete:(id)sender
{
    if ([workingSolution length] > 0) {
        workingSolution = [workingSolution substringToIndex:[workingSolution length] - 1];
    }
    output.text = workingSolution;
}

- (void)viewDidLoad
{
    output.text = @"";
    workingSolution = @"";
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
