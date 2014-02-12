//
//  BattlesQuestions.m
//  BrainBuilderHistory
//
//  Created by Fred Kneeland on 6/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BattlesQuestions.h"

@implementation BattlesQuestions

-(NSString *) getQuestion:(int16_t)choice
{
    if (choice == 1)
    {
        return @"Which battle was Napoleon finally defeated in?";
    }
    else
    {
        return @"Which battle turned the tide of the Civil War?";
    }
}
-(NSString *) getRightAnswer:(int32_t)choice2
{
    if (choice2 == 1)
    {
        return @"Waterloo";
    }
    else
    {
        return @"Gettysburg";
    }
}
-(NSString *) getWrongAnswers:(int32_t)choice3
{
    if (choice3 == 1)
    {
        return @"Gettysburg";
    }
    else
    {
        return @"Chanslorsville";
    }
}

-(NSString *) getWrongAnswers2:(int32_t)choice4
{
    if (choice4 == 1)
    {
        return @"Borodino";
    }
    else
    {
        return @"Pearl Harbor";
    }
}
-(NSString *) getWrongAnswers3:(int32_t)choice5
{
    if (choice5 == 1)
    {
        return @"Midway";
    }
    else
    {
        return @"first bull run";
    }
}


@end
