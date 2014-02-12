//
//  DefiniteIntegralHolder.m
//  BrainBuilderPro
//
//  Created by Fred Kneeland on 6/28/13.
//  Copyright (c) 2013 BLADE Enterprises LLC. All rights reserved.
//

#import "DefiniteIntegralHolder.h"

@implementation DefiniteIntegralHolder

/////////////////////////////////////// Set Up ////////////////////////////////////////

-(void) setUpProblem:(NSInteger)index
{
    if (index == 0)
    {
        Cofficient = arc4random()%10 + 2;
        Power = arc4random()%3 + 1;
        Constant = arc4random()%25 + 1;
    }
    else if (index == 1)
    {
        Power = arc4random()%3 + 1;
        LowerLimit = 0;
    }
    else if (index == 2)
    {
        LowerLimit = 0;
        Constant = arc4random()%10 + 2;
    }
    //LowerLimit = arc4random()%10 - 5;
    UpperLimit = LowerLimit + arc4random()%5 + 1;
}

////////////////////////////////////// UPPER LIMIT //////////////////////////////////
-(NSString *) UpperLimit:(NSInteger)index
{
    NSString *assist;
    if (index > 0)
    {
        assist = [[NSString alloc] initWithFormat:@"%i", UpperLimit];
    }
    return assist;
}

///////////////////////////////////// LOWER LIMIT ///////////////////////////////////
-(NSString *) LowerLimit:(NSInteger)index
{
    NSString *assist;
    if (index > 0)
    {
        assist = [[NSString alloc] initWithFormat:@"%i", LowerLimit];
    }
    return assist;
}

/////////////////////////////////////// QUESTION //////////////////////////////////////
-(NSString *) question:(NSInteger)index
{
    NSString *assist;
    if (index == 0)
    {
        assist = [[NSString alloc] initWithFormat:@"%ix^%i + %i", Cofficient, Power, Constant];
    }
    else if (index == 1)
    {
        assist = [[NSString alloc] initWithFormat:@"x^%i", Power];
    }
    else if (index == 2)
    {
        assist = [[NSString alloc] initWithFormat:@"%i", Constant];
    }
    return assist;
    
}

////////////////////////////////////////// RIGHT ANSWER ////////////////////////////////
-(NSString *) rightAnswer:(NSInteger)index
{
    NSString *assist;
    if (index == 0)
    {
        NewPower = Power + 1;
        if (((Cofficient / NewPower) * NewPower) == Cofficient)
        {
            AnswerType = 1;
            NewCofficient = Cofficient / NewPower;
            firstAnswrCmb = NewCofficient * (pow((double)UpperLimit, (double)NewPower));
            totalUpperLimit = firstAnswrCmb + (Constant * UpperLimit);
            totalLowerLimit = (NewCofficient * (pow((double)LowerLimit, (double)NewPower))) + (Constant * LowerLimit);
            finalAnswr = totalUpperLimit - totalLowerLimit;
            assist = [[NSString alloc] initWithFormat:@"%i", totalUpperLimit];
            
        }
        else if (((Cofficient / 2) * 2) == Cofficient && ((NewPower / 2) * 2) == NewPower)
        {
            AnswerType = 2;
            NewCofficient = Cofficient / 2;
            Power = NewPower / 2;
        }
        else if (((Cofficient / 3) * 3) == Cofficient && ((NewPower / 3) * 3) == NewPower)
        {
            AnswerType = 3;
            NewCofficient = Cofficient / 3;
            Power = (Power + 1) / 3;
        }
        else
        {
            NewCofficient = Cofficient;
            AnswerType = 4;
        }
        
        //assist = @"";
    }
    else if (index == 1)
    {
        NewPower = Power + 1;
        totalUpperLimit = pow((double)UpperLimit, (double)NewPower);
        totalLowerLimit = pow((double)LowerLimit, (double)NewPower);
        finalAnswr = totalUpperLimit - totalLowerLimit;
        if (((finalAnswr / NewPower) * NewPower) == finalAnswr)
        {
            AnswerType = 1;
            assist = [[NSString alloc] initWithFormat:@"%i", (finalAnswr / NewPower)];
        }
        else if (((finalAnswr / 2) * 2) == finalAnswr && ((NewPower / 2) * 2) == NewPower)
        {
            AnswerType = 2;
            assist = [[NSString alloc] initWithFormat:@"%i/%i", (finalAnswr / 2), (NewPower / 2)];
        }
        else if (((finalAnswr / 3) * 3) == finalAnswr && ((NewPower / 3) * 3) == NewPower)
        {
            AnswerType = 3;
            assist = [[NSString alloc] initWithFormat:@"%i/%i", (finalAnswr / 3), (NewPower / 3)];
        }
        else
        {
            AnswerType = 4;
            assist = [[NSString alloc] initWithFormat:@"%i/%i", (finalAnswr), (NewPower)];
        }
    }
    else if (index == 2)
    {
        finalAnswr = (Constant * UpperLimit);
        assist = [[NSString alloc] initWithFormat:@"%i", finalAnswr];
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
            assist = [[NSString alloc] initWithFormat:@"%i", ((finalAnswr / NewPower) + arc4random()%15 + 1)];
        }
        else if (AnswerType == 2)
        {
            assist = [[NSString alloc] initWithFormat:@"%i/%i", ((finalAnswr / 2) + arc4random()%15 + 1), (NewPower / 2)];
        }
        else if (AnswerType == 3)
        {
            assist = assist = [[NSString alloc] initWithFormat:@"%i/%i", ((finalAnswr / 3) + arc4random()%15 + 1), (NewPower / 3)];
        }
        else
        {
            assist = [[NSString alloc] initWithFormat:@"%i/%i", ((finalAnswr) + arc4random()%15 + 1), (NewPower)];
        }
    }
    else if (index == 2)
    {
        wrongAnswr = finalAnswr + arc4random()%10 + 2;
        assist = [[NSString alloc] initWithFormat:@"%i", wrongAnswr];
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
            assist = [[NSString alloc] initWithFormat:@"%i", ((finalAnswr / NewPower) - (arc4random()%15 + 1))];
        }
        else if (AnswerType == 2)
        {
            assist = [[NSString alloc] initWithFormat:@"%i/%i", ((finalAnswr / 2) - (arc4random()%15 + 1)), (NewPower / 2)];
        }
        else if (AnswerType == 3)
        {
            assist = assist = [[NSString alloc] initWithFormat:@"%i/%i", ((finalAnswr / 3) - (arc4random()%15 + 1)), (NewPower / 3)];
        }
        else
        {
            assist = [[NSString alloc] initWithFormat:@"%i/%i", ((finalAnswr) - (arc4random()%15 + 1)), (NewPower)];
        }
    }
    else if (index == 2)
    {
        wrongAnswr += arc4random()%10 + 2;
        assist = [[NSString alloc] initWithFormat:@"%i", wrongAnswr];
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
            assist = [[NSString alloc] initWithFormat:@"%i", ((finalAnswr / NewPower) + arc4random()%15 + 1)];
        }
        else if (AnswerType == 2)
        {
            assist = [[NSString alloc] initWithFormat:@"%i/%i", ((finalAnswr / 2) + arc4random()%15 + 1), (NewPower / 2)];
        }
        else if (AnswerType == 3)
        {
            assist = assist = [[NSString alloc] initWithFormat:@"%i/%i", ((finalAnswr / 3) + arc4random()%15 + 1), (NewPower / 3)];
        }
        else
        {
            assist = [[NSString alloc] initWithFormat:@"%i/%i", ((finalAnswr) + arc4random()%15 + 1), (NewPower)];
        }
    }
    else if (index == 2)
    {
        wrongAnswr = finalAnswr - (arc4random()%10 + 2);
        assist = [[NSString alloc] initWithFormat:@"%i", wrongAnswr];
    }
    
    return assist;
}


@end
