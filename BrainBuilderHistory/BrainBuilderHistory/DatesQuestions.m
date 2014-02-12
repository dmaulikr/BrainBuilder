//
//  DatesQuestions.m
//  BrainBuilderHistory
//
//  Created by Fred Kneeland on 5/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DatesQuestions.h"

@implementation DatesQuestions

-(NSString *) getQuestion:(int16_t)choice
{
    if (choice == 1)
    {
        return @"When did WWII start?";
    }
    else
    {
        return @"When was the American declaration of independance ratified?";
    }
}
-(NSString *) getRightAnswer:(int32_t)choice2
{
    if (choice2 == 1)
    {
        return @"1939";
    }
    else
    {
        return @"1776";
    }
}
-(NSString *) getWrongAnswers:(int32_t)choice3
{
    if (choice3 == 1)
    {
        return @"1876";
    }
    else
    {
        return @"1982";
    }
}

-(NSString *) getWrongAnswers2:(int32_t)choice4
{
    if (choice4 == 1)
    {
        return @"1283";
    }
    else
    {
        return @"1767";
    }
}
-(NSString *) getWrongAnswers3:(int32_t)choice5
{
    if (choice5 == 1)
    {
        return @"1943";
    }
    else
    {
        return @"1745";
    }
}

@end
