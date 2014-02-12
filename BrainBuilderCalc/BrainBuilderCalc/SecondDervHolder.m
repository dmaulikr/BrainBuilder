//
//  SecondDervHolder.m
//  BrainBuilderCalc
//
//  Created by Fred Kneeland on 11/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SecondDervHolder.h"

@implementation SecondDervHolder

-(void) setUpProblem:(NSInteger)index
{
    // for the first 3 possiblities
    if (index > 0)
    {
        firstLevelCofficient = arc4random()%10 + 1;
        firstLevelPower = arc4random()%5 + 1;
        firstLevelConstant = arc4random()%100;
    }
}

/////////////////////////////////////// QUESTION //////////////////////////////////////
-(NSString *) question:(NSInteger)index
{
    NSString *assist;
    if (index == 1)
    {
        firstLevelPower += arc4random()%5 + 1;
        assist = [[NSString alloc] initWithFormat:@"x^%i", firstLevelPower];
    }
    else if (index == 2)
    {
        assist = [[NSString alloc] initWithFormat:@"%ix^%i", firstLevelCofficient, firstLevelPower];
    }
    else if (index > 2)
    {
        assist = [[NSString alloc] initWithFormat:@"%ix^%i + %i", firstLevelCofficient, firstLevelPower, firstLevelConstant];
    }
    return assist;
    
}

////////////////////////////////////////// RIGHT ANSWER ////////////////////////////////
-(NSString *) rightAnswer:(NSInteger)index
{
    NSString *assist;
    if (index == 1)
    {
        secondLevelCofficient = firstLevelPower;
        secondLevelPower = firstLevelPower - 1;
        answerCofficient = secondLevelCofficient * secondLevelPower;
        answerPower = secondLevelPower - 1;
        if (answerPower == 0)
        {
            assist = [[NSString alloc] initWithFormat:@"%i", answerCofficient];
        }
        else if (answerPower < 0)
        {
            assist = @"0";
        }
        else if (answerPower == 1)
        {
            assist = [[NSString alloc] initWithFormat:@"%ix", answerCofficient];
        }
        else
        {
            assist = [[NSString alloc] initWithFormat:@"%ix^%i", answerCofficient, answerPower];
        }

    }
    // 2 and 3 have identical answer format
    else if (index > 1)
    {
        secondLevelCofficient = firstLevelCofficient * firstLevelPower;
        secondLevelPower = firstLevelPower - 1;
        answerCofficient = secondLevelCofficient * secondLevelPower;
        answerPower = secondLevelPower - 1;
        if (answerPower == 0)
        {
            assist = [[NSString alloc] initWithFormat:@"%i", answerCofficient];
        }
        else if (answerPower < 0)
        {
            assist = @"0";
        }
        else if (answerPower == 1)
        {
            assist = [[NSString alloc] initWithFormat:@"%ix", answerCofficient];
        }
        else
        {
            assist = [[NSString alloc] initWithFormat:@"%ix^%i", answerCofficient, answerPower];
        }
    }
    return assist;
}

//////////////////////////////////////////// WRONG ANSWER 1 //////////////////////////////////
-(NSString *) firstWrongAnswer:(NSInteger)index
{
    NSString *assist;
    if (index == 1)
    {
        if (answerPower == 0)
        {
            assist = [[NSString alloc] initWithFormat:@"%i", (answerCofficient + arc4random()%25 + 2)];
        }
        else if (answerPower < 0)
        {
            assist = [[NSString alloc] initWithFormat:@"%i", (arc4random()%30 + 1)];
        }
        else if (answerPower == 1)
        {
            assist = [[NSString alloc] initWithFormat:@"%ix", (answerCofficient + arc4random()%10 + 1)];
        }
        else
        {
            assist = [[NSString alloc] initWithFormat:@"%ix^%i", (answerCofficient + arc4random()%10 + 1), answerPower];
        }
    }
    else if (index > 1)
    {
        if (answerPower == 0)
        {
            assist = [[NSString alloc] initWithFormat:@"%i", (answerCofficient + arc4random()%25 + 2)];
        }
        else if (answerPower < 0)
        {
            assist = [[NSString alloc] initWithFormat:@"%i", (arc4random()%30 + 1)];
        }
        else if (answerPower == 1)
        {
            assist = [[NSString alloc] initWithFormat:@"%ix", (answerCofficient + arc4random()%10 + 1)];
        }
        else
        {
            assist = [[NSString alloc] initWithFormat:@"%ix^%i", (answerCofficient + arc4random()%10 + 1), answerPower];
        }
    }
    return assist;
}

//////////////////////////////////////////// WRONG ANSWER 2 /////////////////////////////////
-(NSString *) secondWrongAnswer:(NSInteger)index
{
    NSString *assist;
    if (index == 1)
    {
        if (answerPower == 0)
        {
            assist = [[NSString alloc] initWithFormat:@"%i", (answerCofficient - (arc4random()%25 + 2))];
        }
        else if (answerPower < 0)
        {
            assist = [[NSString alloc] initWithFormat:@"%ix", (arc4random()%30 + 1)];
        }
        else if (answerPower == 1)
        {
            assist = [[NSString alloc] initWithFormat:@"%ix", (answerCofficient - (arc4random()%10 + 1))];
        }
        else
        {
            assist = [[NSString alloc] initWithFormat:@"%ix^%i", (answerCofficient - (arc4random()%10 + 1)), answerPower];
        }
    }
    else if (index > 1)
    {
        if (answerPower == 0)
        {
            assist = [[NSString alloc] initWithFormat:@"%i", (answerCofficient - (arc4random()%25 + 2))];
        }
        else if (answerPower < 0)
        {
            assist = [[NSString alloc] initWithFormat:@"%ix", (arc4random()%30 + 1)];
        }
        else if (answerPower == 1)
        {
            assist = [[NSString alloc] initWithFormat:@"%ix", (answerCofficient - (arc4random()%10 + 1))];
        }
        else
        {
            assist = [[NSString alloc] initWithFormat:@"%ix^%i", (answerCofficient - (arc4random()%10 + 1)), answerPower];
        }
    }
    return assist;
}

//////////////////////////////////////// WRONG ANSWER 3///////////////////////////////////////
-(NSString *) thirdWrongAnswer:(NSInteger)index
{
    NSString *assist;
    if (index == 1)
    {
        if (answerPower == 0)
        {
            assist = [[NSString alloc] initWithFormat:@"%ix", (answerCofficient + arc4random()%25 + 2)];
        }
        else if (answerPower < 0)
        {
            assist = [[NSString alloc] initWithFormat:@"%ix^-1", answerCofficient];
        }
        else if (answerPower == 1)
        {
            assist = [[NSString alloc] initWithFormat:@"%ix^%i", (answerCofficient + arc4random()%10 + 1), answerPower];
        }
        else
        {
            assist = [[NSString alloc] initWithFormat:@"%ix^%i", (answerCofficient + arc4random()%10 + 1), (answerPower + arc4random()%3 + 1)];
        }
    }
    else if (index > 1)
    {
        if (answerPower == 0)
        {
            assist = [[NSString alloc] initWithFormat:@"%ix", (answerCofficient + arc4random()%25 + 2)];
        }
        else if (answerPower < 0)
        {
            assist = [[NSString alloc] initWithFormat:@"%ix^-1", answerCofficient];
        }
        else if (answerPower == 1)
        {
            assist = [[NSString alloc] initWithFormat:@"%ix^%i", (answerCofficient + arc4random()%10 + 1), answerPower];
        }
        else
        {
            assist = [[NSString alloc] initWithFormat:@"%ix^%i", (answerCofficient + arc4random()%10 + 1), (answerPower + arc4random()%3 + 1)];
        }
    }
    return assist;
}

@end

