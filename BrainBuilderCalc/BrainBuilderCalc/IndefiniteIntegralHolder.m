//
//  IndefiniteIntegralHolder.m
//  BrainBuilderCalc
//
//  Created by Fred Kneeland on 3/29/13.
//
//

#import "IndefiniteIntegralHolder.h"

@implementation IndefiniteIntegralHolder
/////////////////////////////////////// Set Up ////////////////////////////////////////

-(void) setUpProblem:(NSInteger)index
{
    if (index == 1)
    {
        Cofficient = arc4random()%10 + 1;
        Power = arc4random()%5 + 2;
        Constant = arc4random()%100 + 1;
    }
}

/////////////////////////////////////// QUESTION //////////////////////////////////////
-(NSString *) question:(NSInteger)index
{
    NSString *assist;
    if (index == 1)
    {
        assist = [[NSString alloc] initWithFormat:@"%ix^%i + %i", Cofficient, Power, Constant];
    }
    return assist;
    
}

////////////////////////////////////////// RIGHT ANSWER ////////////////////////////////
-(NSString *) rightAnswer:(NSInteger)index
{
    NSString *assist;
    if (index == 1)
    {
        NewPower = Power + 1;
        if (((Cofficient / NewPower) * NewPower) == Cofficient)
        {
            AnswerType = 1;
            NewCofficient = Cofficient / NewPower;
            assist = [[NSString alloc] initWithFormat:@"%ix^%i + %ix + C", NewCofficient, NewPower, Constant];
            //assist = @"1";
        }
        else if (((Cofficient / 2) * 2) == Cofficient && ((NewPower / 2) * 2) == NewPower)
        {
            AnswerType = 2;
            NewCofficient = Cofficient / 2;
            Power = NewPower / 2;
            assist = [[NSString alloc] initWithFormat:@"(%i/%i)x^%i + %ix + C", NewCofficient, Power, NewPower, Constant];
            //assist = @"2";
        }
        else if (((Cofficient / 3) * 3) == Cofficient && ((NewPower / 3) * 3) == NewPower)
        {
            AnswerType = 3;
            NewCofficient = Cofficient / 3;
            Power = (Power + 1) / 3;
            assist = [[NSString alloc] initWithFormat:@"(%i/%i)x^%i + %ix + C", NewCofficient, Power, NewPower, Constant];
            //assist = @"3";
        }
        else
        {
            AnswerType = 4;
            NewCofficient = Cofficient;
            assist = [[NSString alloc] initWithFormat:@"(%i/%i)x^%i + %ix + C", NewCofficient, NewPower, NewPower, Constant];
            //assist = @"4";
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
        if (AnswerType == 1)
        {
            assist = [[NSString alloc] initWithFormat:@"%ix^%i + %ix + C", (NewCofficient + arc4random()%15 + 1), NewPower, (Constant + arc4random()%13)];
        }
        else if (AnswerType == 2)
        {
            assist = [[NSString alloc] initWithFormat:@"(%i/%i)x^%i + %i + C", NewCofficient, Power, NewPower, (Constant - arc4random()%5 - 1)];
        }
        else if (AnswerType == 3)
        {
            assist = [[NSString alloc] initWithFormat:@"%ix^%i + %ix + C", (NewCofficient / Power), NewPower, (Constant + 1)];
        }
        else
        {
            assist = [[NSString alloc] initWithFormat:@"(%i/%i)x^%i + %ix", NewCofficient, NewPower, NewPower, Constant];
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
        if (AnswerType == 1)
        {
            assist = [[NSString alloc] initWithFormat:@"%ix^%i + %ix + C", (NewCofficient - (arc4random()%15 + 1)), NewPower, (Constant - (arc4random()%15 + 1))];
        }
        else if (AnswerType == 2)
        {
            assist = [[NSString alloc] initWithFormat:@"(%i/%i)x^%i + %ix + C", (NewCofficient - (arc4random()%10 + 1)), (Power + 1), NewPower, Constant];
        }
        else if (AnswerType == 3)
        {
            assist = [[NSString alloc] initWithFormat:@"(%i/%i)x^%i + %ix", NewCofficient, Power, NewPower, Constant];
        }
        else
        {
            assist = [[NSString alloc] initWithFormat:@"(%i/%i)x^%i + %ix + C", (NewCofficient + arc4random()%10 + 1), NewPower, NewPower, (Constant + arc4random()%15 + 1)];
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
        if (AnswerType == 1)
        {
            assist = [[NSString alloc] initWithFormat:@"%ix^%i + %ix + C", (NewCofficient + arc4random()%15 + 1), NewPower, (Constant - (arc4random()%15 + 1))];
        }
        else if (AnswerType == 2)
        {
            assist = [[NSString alloc] initWithFormat:@"(%i/%i)x^%i + %ix + C", (NewCofficient + arc4random()%15 + 1), Power, NewPower, (Constant + arc4random()%15 + 1)];
        }
        else if (AnswerType == 3)
        {
            assist = [[NSString alloc] initWithFormat:@"(%i/%i)x^%i + %ix + C", (NewCofficient + arc4random()%15 + 1), Power, NewPower, (Constant - (arc4random()%5 + 1))];
        }
        else
        {
            assist = [[NSString alloc] initWithFormat:@"(%i/%i)x^%i + %ix + C", NewCofficient, NewPower, NewPower, (Constant - (arc4random()%15 + 1))];
        }
    }

    return assist;
}


@end
