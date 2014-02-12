//
//  FirstDervHolder.m
//  BrainBuilderCalc
//
//  Created by Fred Kneeland on 11/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FirstDervHolder.h"

@implementation FirstDervHolder

/////////////////////////////////////// Set Up ////////////////////////////////////////

-(void) setUpProblem:(NSInteger)index
{
    randomCofficient = (arc4random()%10 + 1);
    randomPower = (arc4random()%5 + 2);
    randomConstant = arc4random()%100;
}

/////////////////////////////////////// QUESTION //////////////////////////////////////
-(NSString *) question:(NSInteger)index
{
    NSString *assist;
    if (index == 1)
    {
        assist = [[NSString alloc] initWithFormat:@"%ix^%i", randomCofficient, randomPower];
    }
    else if (index == 2)
    {
        assist = [[NSString alloc] initWithFormat:@"x^%i", randomPower];
    }
    else
    {
        assist = [[NSString alloc] initWithFormat:@"%ix^%i + %i", randomCofficient, randomPower, randomConstant];
    }
    return assist;
    
}

////////////////////////////////////////// RIGHT ANSWER ////////////////////////////////
-(NSString *) rightAnswer:(NSInteger)index
{
    NSString *assist;
    if (index == 1)
    {
        cofficientAnswer = randomCofficient * randomPower;
        powerAnswer = randomPower - 1;
        assist = [[NSString alloc] initWithFormat:@"%ix^%i", cofficientAnswer, powerAnswer];
    }
    else if (index == 2)
    {
        cofficientAnswer = randomPower;
        powerAnswer = randomPower - 1;
        assist = [[NSString alloc] initWithFormat:@"%ix^%i", cofficientAnswer, powerAnswer];
    }
    else
    {
        cofficientAnswer = randomPower * randomCofficient;
        powerAnswer = randomPower - 1;
        assist = [[NSString alloc] initWithFormat:@"%ix^%i", cofficientAnswer, powerAnswer];
    }
    return assist;
}

//////////////////////////////////////////// WRONG ANSWER 1 //////////////////////////////////
-(NSString *) firstWrongAnswer:(NSInteger)index
{
    NSString *assist;
    if (index == 1)
    {
        cofficientAnswer = randomPower * randomCofficient + (arc4random()%20 + 1);
        powerAnswer = randomPower;
        assist = [[NSString alloc] initWithFormat:@"%ix^%i", cofficientAnswer, powerAnswer];
    }
    else if (index == 2)
    {
        cofficientAnswer = randomPower + (arc4random()%20 + 1);
        powerAnswer = randomPower;
        assist = [[NSString alloc] initWithFormat:@"%ix^%i", cofficientAnswer, powerAnswer];
    }
    else
    {
        cofficientAnswer = randomPower * randomCofficient + (arc4random()%20 + 1);
        powerAnswer = randomPower;
        assist = [[NSString alloc] initWithFormat:@"%ix^%i", cofficientAnswer, powerAnswer];
    }
    return assist;
}

//////////////////////////////////////////// WRONG ANSWER 2 /////////////////////////////////
-(NSString *) secondWrongAnswer:(NSInteger)index
{
    NSString *assist;
    if (index == 1)
    {
        cofficientAnswer = randomPower * randomCofficient - (arc4random()%20 + 1);
        powerAnswer = randomPower - 2;
        assist = [[NSString alloc] initWithFormat:@"%ix^%i", cofficientAnswer, powerAnswer];
    }
    else if (index == 2)
    {
        cofficientAnswer = randomPower - (arc4random()%20 + 1);
        powerAnswer = randomPower - 2;
        assist = [[NSString alloc] initWithFormat:@"%ix^%i", cofficientAnswer, powerAnswer];
    }
    else
    {
        cofficientAnswer = randomPower * randomCofficient - (arc4random()%20 + 1);
        powerAnswer = randomPower - 2;
        assist = [[NSString alloc] initWithFormat:@"%ix^%i", cofficientAnswer, powerAnswer];
    }
    return assist;
}

//////////////////////////////////////// WRONG ANSWER 3///////////////////////////////////////
-(NSString *) thirdWrongAnswer:(NSInteger)index
{
    NSString *assist;
    if (index == 1)
    {
        cofficientAnswer = randomPower + randomCofficient;
        powerAnswer = randomPower - 1;
        assist = [[NSString alloc] initWithFormat:@"%ix^%i", cofficientAnswer, powerAnswer];
    }
    else if (index == 2)
    {
        cofficientAnswer = randomPower + randomCofficient;
        powerAnswer = randomPower - 1;
        assist = [[NSString alloc] initWithFormat:@"%ix^%i", cofficientAnswer, powerAnswer];
    }
    else
    {
        if (!((randomPower * randomCofficient) == (randomPower + randomCofficient)))
        {
            cofficientAnswer = randomPower + randomCofficient;
            powerAnswer = randomPower - 1;
            assist = [[NSString alloc] initWithFormat:@"%ix^%i", cofficientAnswer, powerAnswer];
        }
    }
    return assist;
}

@end
