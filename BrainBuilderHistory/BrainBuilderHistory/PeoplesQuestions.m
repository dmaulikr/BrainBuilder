//
//  PeoplesQuestions.m
//  BrainBuilderHistory
//
//  Created by Fred Kneeland on 6/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PeoplesQuestions.h"

@implementation PeoplesQuestions

-(NSString *) getQuestion:(int16_t)choice
{
    if (choice == 1)
    {
        return @"Who was president of the US during the Civil War?";
    }
    else
    {
        return @"Which crusader conquered Jerusalem?";
    }
}
-(NSString *) getRightAnswer:(int32_t)choice2
{
    if (choice2 == 1)
    {
        return @"Lincoln";
    }
    else
    {
        return @"Godfrey";
    }
}
-(NSString *) getWrongAnswers:(int32_t)choice3
{
    if (choice3 == 1)
    {
        return @"F.D.R.";
    }
    else
    {
        return @"Baldwin VI";
    }
}

-(NSString *) getWrongAnswers2:(int32_t)choice4
{
    if (choice4 == 1)
    {
        return @"Regan";
    }
    else
    {
        return @"Richard";
    }
}
-(NSString *) getWrongAnswers3:(int32_t)choice5
{
    if (choice5 == 1)
    {
        return @"Washington";
    }
    else
    {
        return @"Lious XIV";
    }
}


@end
