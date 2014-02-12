//
//  LimitsHolder.m
//  BrainBuilderPro
//
//  Created by Fred Kneeland on 6/28/13.
//  Copyright (c) 2013 BLADE Enterprises LLC. All rights reserved.
//

#import "LimitsHolder.h"

@implementation LimitsHolder

-(void) setUpProblem:(NSInteger)index
{
    if (index < 100)
    {
        LimitVal = arc4random()%11 - 5;
        Cofficient1 = arc4random()%10 + 1;
        Cofficient2 = arc4random()%6 + 1;
        Power1 = arc4random()%3 + 1;
    }
}

//////////////////////////////// LIMITS //////////////////////////////////////////////
-(NSString *) limit:(NSInteger)index
{
    NSString *assist;
    if (index == 1)
    {
        assist = @"2";
    }
    else if (index == 2)
    {
        assist = @"0";
    }
    else if (index < 100)
    {
        assist = [[NSString alloc] initWithFormat:@"%i", LimitVal];
    }
    
    return assist;
}

/////////////////////////////////////// QUESTION //////////////////////////////////////
-(NSString *) question:(NSInteger)index
{
    NSString *assist;
    if (index == 1)
    {
        assist = @"2x - 4x^2";
    }
    else if (index == 2)
    {
        assist = @"(3x^2 - 4x)/2x";
    }
    else if (index < 100)
    {
        assist = [[NSString alloc] initWithFormat:@"%ix - %ix^%i", Cofficient1, Cofficient2, Power1];
    }
    return assist;
    
}

////////////////////////////////////////// RIGHT ANSWER ////////////////////////////////
-(NSString *) rightAnswer:(NSInteger)index
{
    NSString *assist;
    if (index == 1)
    {
        assist = @"-12";
    }
    else if (index == 2)
    {
        assist = @"-2";
    }
    else if (index < 100)
    {
        //Answer = (Cofficient1 * LimitVal) - (Cofficient2 * (LimitVal^(Power1)));
        Answer = (Cofficient1 * LimitVal) - Cofficient2 * pow((double)LimitVal, (double)Power1);
        assist = [[NSString alloc] initWithFormat:@"%i", Answer];
    }
    return assist;
}

//////////////////////////////////////////// WRONG ANSWER 1 //////////////////////////////////
-(NSString *) firstWrongAnswer:(NSInteger)index
{
    NSString *assist;
    if (index == 1)
    {
        assist = @"undefined";
    }
    else if (index == 2)
    {
        assist = @"16";
    }
    else if (index < 100)
    {
        assist = [[NSString alloc] initWithFormat:@"%i", (Answer + arc4random()%25 + 1)];
    }
    return assist;
}

//////////////////////////////////////////// WRONG ANSWER 2 /////////////////////////////////
-(NSString *) secondWrongAnswer:(NSInteger)index
{
    NSString *assist;
    if (index == 1)
    {
        assist = @"20";
    }
    else if (index == 2)
    {
        assist = @"-3";
    }
    else if (index < 100)
    {
        assist = [[NSString alloc] initWithFormat:@"%i", (Answer - (arc4random()%25 + 1))];
    }
    return assist;
}

//////////////////////////////////////// WRONG ANSWER 3///////////////////////////////////////
-(NSString *) thirdWrongAnswer:(NSInteger)index
{
    NSString *assist;
    if (index == 1)
    {
        assist = @"12";
    }
    else if (index == 2)
    {
        assist = @"0";
    }
    else if (index < 100)
    {
        assist = [[NSString alloc] initWithFormat:@"%i", (Answer + arc4random()%25 + 1)];
    }
    return assist;
}

@end
