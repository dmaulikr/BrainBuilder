//
//  RootViewController.m
//  PolarTicTacToe
//
//  Created by Fred Kneeland on 9/14/14.
//  Copyright (c) 2014 Fred Kneeland. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController
@synthesize label;
@synthesize label0_0, label0_1, label0_2, label0_3, label10_0, label10_1, label10_2, label10_3, label11_0, label11_1, label11_2, label11_3, label1_0, label1_1, label1_2, label1_3;
@synthesize label2_0, label2_1, label2_2, label2_3, label3_0, label3_1, label3_2, label3_3, label4_0, label4_1, label4_2, label4_3, label5_0, label5_1, label5_2, label5_3, label6_0;
@synthesize label6_1, label6_2, label6_3, label7_0, label7_1, label7_2, label7_3, label8_0, label8_1, label8_2, label8_3, label9_0, label9_1, label9_2, label9_3;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
    }
    return self;
}

-(IBAction) newGame:(id)sender
{
    weRX = true;
    [label0_0 setStringValue:@""];
    [label0_1 setStringValue:@""];
    [label0_2 setStringValue:@""];
    [label0_3 setStringValue:@""];
    
    [label1_0 setStringValue:@""];
    [label1_1 setStringValue:@""];
    [label1_2 setStringValue:@""];
    [label1_3 setStringValue:@""];
    
    [label2_0 setStringValue:@""];
    [label2_1 setStringValue:@""];
    [label2_2 setStringValue:@""];
    [label2_3 setStringValue:@""];
    
    [label3_0 setStringValue:@""];
    [label3_1 setStringValue:@""];
    [label3_2 setStringValue:@""];
    [label3_3 setStringValue:@""];
    
    [label4_0 setStringValue:@""];
    [label4_1 setStringValue:@""];
    [label4_2 setStringValue:@""];
    [label4_3 setStringValue:@""];
    
    [label5_0 setStringValue:@""];
    [label5_1 setStringValue:@""];
    [label5_2 setStringValue:@""];
    [label5_3 setStringValue:@""];
    
    [label6_0 setStringValue:@""];
    [label6_1 setStringValue:@""];
    [label6_2 setStringValue:@""];
    [label6_3 setStringValue:@""];
    
    [label7_0 setStringValue:@""];
    [label7_1 setStringValue:@""];
    [label7_2 setStringValue:@""];
    [label7_3 setStringValue:@""];
    
    [label8_0 setStringValue:@""];
    [label8_1 setStringValue:@""];
    [label8_2 setStringValue:@""];
    [label8_3 setStringValue:@""];
    
    [label9_0 setStringValue:@""];
    [label9_1 setStringValue:@""];
    [label9_2 setStringValue:@""];
    [label9_3 setStringValue:@""];
    
    [label10_0 setStringValue:@""];
    [label10_1 setStringValue:@""];
    [label10_2 setStringValue:@""];
    [label10_3 setStringValue:@""];
    
    [label11_0 setStringValue:@""];
    [label11_1 setStringValue:@""];
    [label11_2 setStringValue:@""];
    [label11_3 setStringValue:@""];
    
}

-(IBAction) buttonPressed:(id)sender
{
    [label setStringValue:@"Wats up?"];
}

-(IBAction) region0_0:(id)sender
{
    [label setStringValue:@"0,0"];
    
    if (weRX)
    {
        [label0_0 setStringValue:@"X"];
        [label0_0 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label0_0 setStringValue:@"O"];
        [label0_0 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}

-(IBAction) region0_1:(id)sender
{
    [label setStringValue:@"0,1"];
    
    if (weRX)
    {
        [label0_1 setStringValue:@"X"];
        [label0_1 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label0_1 setStringValue:@"O"];
        [label0_1 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}

-(IBAction) region0_2:(id)sender
{
    [label setStringValue:@"0,2"];
    
    if (weRX)
    {
        [label0_2 setStringValue:@"X"];
        [label0_2 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label0_2 setStringValue:@"O"];
        [label0_2 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}

-(IBAction) region0_3:(id)sender
{
    [label setStringValue:@"0,3"];
    
    if (weRX)
    {
        [label0_3 setStringValue:@"X"];
        [label0_3 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label0_3 setStringValue:@"O"];
        [label0_3 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}


-(IBAction) region1_0:(id)sender
{
    [label setStringValue:@"1,0"];
    
    if (weRX)
    {
        [label1_0 setStringValue:@"X"];
        [label1_0 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label1_0 setStringValue:@"O"];
        [label1_0 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}

-(IBAction) region1_1:(id)sender
{
    [label setStringValue:@"1,1"];
    
    if (weRX)
    {
        [label1_1 setStringValue:@"X"];
        [label1_1 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label1_1 setStringValue:@"O"];
        [label1_1 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}

-(IBAction) region1_2:(id)sender
{
    [label setStringValue:@"1,2"];
    
    if (weRX)
    {
        [label1_2 setStringValue:@"X"];
        [label1_2 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label1_2 setStringValue:@"O"];
        [label1_2 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}

-(IBAction) region1_3:(id)sender
{
    [label setStringValue:@"1,3"];
    
    if (weRX)
    {
        [label1_3 setStringValue:@"X"];
        [label1_3 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label1_3 setStringValue:@"O"];
        [label1_3 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}


-(IBAction) region2_0:(id)sender
{
    [label setStringValue:@"2,0"];
    
    if (weRX)
    {
        [label2_0 setStringValue:@"X"];
        [label2_0 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label2_0 setStringValue:@"O"];
        [label2_0 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}

-(IBAction) region2_1:(id)sender
{
    [label setStringValue:@"2,1"];
    
    if (weRX)
    {
        [label2_1 setStringValue:@"X"];
        [label2_1 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label2_1 setStringValue:@"O"];
        [label2_1 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}

-(IBAction) region2_2:(id)sender
{
    [label setStringValue:@"2,2"];
    
    if (weRX)
    {
        [label2_2 setStringValue:@"X"];
        [label2_2 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label2_2 setStringValue:@"O"];
        [label2_2 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}

-(IBAction) region2_3:(id)sender
{
    [label setStringValue:@"2,3"];
    
    if (weRX)
    {
        [label2_3 setStringValue:@"X"];
        [label2_3 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label2_3 setStringValue:@"O"];
        [label2_3 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}


-(IBAction) region3_0:(id)sender
{
    [label setStringValue:@"3,0"];
    
    if (weRX)
    {
        [label3_0 setStringValue:@"X"];
        [label3_0 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label3_0 setStringValue:@"O"];
        [label3_0 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}

-(IBAction) region3_1:(id)sender
{
    [label setStringValue:@"3,1"];
    
    if (weRX)
    {
        [label3_1 setStringValue:@"X"];
        [label3_1 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label3_1 setStringValue:@"O"];
        [label3_1 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}

-(IBAction) region3_2:(id)sender
{
    [label setStringValue:@"3,2"];
    
    if (weRX)
    {
        [label3_2 setStringValue:@"X"];
        [label3_2 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label3_2 setStringValue:@"O"];
        [label3_2 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}

-(IBAction) region3_3:(id)sender
{
    [label setStringValue:@"3,3"];
    
    if (weRX)
    {
        [label3_3 setStringValue:@"X"];
        [label3_3 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label3_3 setStringValue:@"O"];
        [label3_3 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}


-(IBAction) region4_0:(id)sender
{
    [label setStringValue:@"4,0"];
    
    if (weRX)
    {
        [label4_0 setStringValue:@"X"];
        [label4_0 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label4_0 setStringValue:@"O"];
        [label4_0 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}

-(IBAction) region4_1:(id)sender
{
    [label setStringValue:@"4,1"];
    
    if (weRX)
    {
        [label4_1 setStringValue:@"X"];
        [label4_1 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label4_1 setStringValue:@"O"];
        [label4_1 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}

-(IBAction) region4_2:(id)sender
{
    [label setStringValue:@"4,2"];
    
    if (weRX)
    {
        [label4_2 setStringValue:@"X"];
        [label4_2 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label4_2 setStringValue:@"O"];
        [label4_2 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}

-(IBAction) region4_3:(id)sender
{
    [label setStringValue:@"4,3"];
    
    if (weRX)
    {
        [label4_3 setStringValue:@"X"];
        [label4_3 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label4_3 setStringValue:@"O"];
        [label4_3 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}


-(IBAction) region5_0:(id)sender
{
    [label setStringValue:@"5,0"];
    
    if (weRX)
    {
        [label5_0 setStringValue:@"X"];
        [label5_0 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label5_0 setStringValue:@"O"];
        [label5_0 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}

-(IBAction) region5_1:(id)sender
{
    [label setStringValue:@"5,1"];
    
    if (weRX)
    {
        [label5_1 setStringValue:@"X"];
        [label5_1 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label5_1 setStringValue:@"O"];
        [label5_1 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}

-(IBAction) region5_2:(id)sender
{
    [label setStringValue:@"5,2"];
    
    if (weRX)
    {
        [label5_2 setStringValue:@"X"];
        [label5_2 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label5_2 setStringValue:@"O"];
        [label5_2 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}

-(IBAction) region5_3:(id)sender
{
    [label setStringValue:@"5,3"];
    
    if (weRX)
    {
        [label5_3 setStringValue:@"X"];
        [label5_3 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label5_3 setStringValue:@"O"];
        [label5_3 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}


-(IBAction) region6_0:(id)sender
{
    [label setStringValue:@"6,0"];
    
    if (weRX)
    {
        [label6_0 setStringValue:@"X"];
        [label6_0 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label6_0 setStringValue:@"O"];
        [label6_0 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}

-(IBAction) region6_1:(id)sender
{
    [label setStringValue:@"6,1"];
    
    if (weRX)
    {
        [label6_1 setStringValue:@"X"];
        [label6_1 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label6_1 setStringValue:@"O"];
        [label6_1 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}

-(IBAction) region6_2:(id)sender
{
    [label setStringValue:@"6,2"];
    
    if (weRX)
    {
        [label6_2 setStringValue:@"X"];
        [label6_2 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label6_2 setStringValue:@"O"];
        [label6_2 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}

-(IBAction) region6_3:(id)sender
{
    [label setStringValue:@"6,3"];
    
    if (weRX)
    {
        [label6_3 setStringValue:@"X"];
        [label6_3 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label6_3 setStringValue:@"O"];
        [label6_3 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}


-(IBAction) region7_0:(id)sender
{
    [label setStringValue:@"7,0"];
    
    if (weRX)
    {
        [label7_0 setStringValue:@"X"];
        [label7_0 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label7_0 setStringValue:@"O"];
        [label7_0 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}

-(IBAction) region7_1:(id)sender
{
    [label setStringValue:@"7,1"];
    
    if (weRX)
    {
        [label7_1 setStringValue:@"X"];
        [label7_1 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label7_1 setStringValue:@"O"];
        [label7_1 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}

-(IBAction) region7_2:(id)sender
{
    [label setStringValue:@"7,2"];
    
    if (weRX)
    {
        [label7_2 setStringValue:@"X"];
        [label7_2 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label7_2 setStringValue:@"O"];
        [label7_2 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}

-(IBAction) region7_3:(id)sender
{
    [label setStringValue:@"7,3"];
    
    if (weRX)
    {
        [label7_3 setStringValue:@"X"];
        [label7_3 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label7_3 setStringValue:@"O"];
        [label7_3 setTextColor:[NSColor blueColor]];
        
    }
    weRX = !weRX;
}


-(IBAction) region8_0:(id)sender
{
    [label setStringValue:@"8,0"];
    
    if (weRX)
    {
        [label8_0 setStringValue:@"X"];
        [label8_0 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label8_0 setStringValue:@"O"];
        [label8_0 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}

-(IBAction) region8_1:(id)sender
{
    [label setStringValue:@"8,1"];
    
    if (weRX)
    {
        [label8_1 setStringValue:@"X"];
        [label8_1 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label8_1 setStringValue:@"O"];
        [label8_1 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}

-(IBAction) region8_2:(id)sender
{
    [label setStringValue:@"8,2"];
    
    if (weRX)
    {
        [label8_2 setStringValue:@"X"];
        [label8_2 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label8_2 setStringValue:@"O"];
        [label8_2 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}

-(IBAction) region8_3:(id)sender
{
    [label setStringValue:@"8,3"];
    
    if (weRX)
    {
        [label8_3 setStringValue:@"X"];
        [label8_3 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label8_3 setStringValue:@"O"];
        [label8_3 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}


-(IBAction) region9_0:(id)sender
{
    [label setStringValue:@"9,0"];
    
    if (weRX)
    {
        [label9_0 setStringValue:@"X"];
        [label9_0 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label9_0 setStringValue:@"O"];
        [label9_0 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}

-(IBAction) region9_1:(id)sender
{
    [label setStringValue:@"9,1"];
    
    if (weRX)
    {
        [label9_1 setStringValue:@"X"];
        [label9_1 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label9_1 setStringValue:@"O"];
        [label9_1 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}

-(IBAction) region9_2:(id)sender
{
    [label setStringValue:@"9,2"];
    
    if (weRX)
    {
        [label9_2 setStringValue:@"X"];
        [label9_2 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label9_2 setStringValue:@"O"];
        [label9_2 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}

-(IBAction) region9_3:(id)sender
{
    [label setStringValue:@"9,3"];
    
    if (weRX)
    {
        [label9_3 setStringValue:@"X"];
        [label9_3 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label9_3 setStringValue:@"O"];
        [label9_3 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}


-(IBAction) region10_0:(id)sender
{
    [label setStringValue:@"10,0"];
    
    if (weRX)
    {
        [label10_0 setStringValue:@"X"];
        [label10_0 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label10_0 setStringValue:@"O"];
        [label10_0 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}

-(IBAction) region10_1:(id)sender
{
    [label setStringValue:@"10,1"];
    
    if (weRX)
    {
        [label10_1 setStringValue:@"X"];
        [label10_1 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label10_1 setStringValue:@"O"];
        [label10_1 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}

-(IBAction) region10_2:(id)sender
{
    [label setStringValue:@"10,2"];
    
    if (weRX)
    {
        [label10_2 setStringValue:@"X"];
        [label10_2 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label10_2 setStringValue:@"O"];
        [label10_2 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}

-(IBAction) region10_3:(id)sender
{
    [label setStringValue:@"10,3"];
    
    if (weRX)
    {
        [label10_3 setStringValue:@"X"];
        [label10_3 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label10_3 setStringValue:@"O"];
        [label10_3 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}


-(IBAction) region11_0:(id)sender
{
    [label setStringValue:@"11,0"];
    
    if (weRX)
    {
        [label11_0 setStringValue:@"X"];
        [label11_0 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label11_0 setStringValue:@"O"];
        [label11_0 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}

-(IBAction) region11_1:(id)sender
{
    [label setStringValue:@"11,1"];
    
    if (weRX)
    {
        [label11_1 setStringValue:@"X"];
        [label11_1 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label11_1 setStringValue:@"O"];
        [label11_1 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}

-(IBAction) region11_2:(id)sender
{
    [label setStringValue:@"11,2"];
    
    if (weRX)
    {
        [label11_2 setStringValue:@"X"];
        [label11_2 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label11_2 setStringValue:@"O"];
        [label11_2 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}

-(IBAction) region11_3:(id)sender
{
    [label setStringValue:@"11,3"];
    
    if (weRX)
    {
        [label11_3 setStringValue:@"X"];
        [label11_3 setTextColor:[NSColor redColor]];
    }
    else
    {
        [label11_3 setStringValue:@"O"];
        [label11_3 setTextColor:[NSColor blueColor]];
    }
    weRX = !weRX;
}

@end
