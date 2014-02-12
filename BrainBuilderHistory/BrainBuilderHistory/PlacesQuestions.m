//
//  PlacesQuestions.m
//  BrainBuilderHistory
//
//  Created by Fred Kneeland on 5/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PlacesQuestions.h"

@implementation PlacesQuestions

-(NSString *) getQuestion:(int16_t)choice
{
    if (choice == 1)
    {
        return @"Where did is the Panama cannal located?";
    }
    else
    {
        return @"Where did Marco Polo claim to have traveled to?";
    }
}
-(NSString *) getRightAnswer:(int32_t)choice2
{
    if (choice2 == 1)
    {
        return @"Panama";
    }
    else
    {
        return @"China";
    }
}
-(NSString *) getWrongAnswers:(int32_t)choice3
{
    if (choice3 == 1)
    {
        return @"America";
    }
    else
    {
        return @"Venice";
    }
}

-(NSString *) getWrongAnswers2:(int32_t)choice4
{
    if (choice4 == 1)
    {
        return @"Siberia";
    }
    else
    {
        return @"India";
    }
}
-(NSString *) getWrongAnswers3:(int32_t)choice5
{
    if (choice5 == 1)
    {
        return @"China";
    }
    else
    {
        return @"Hawaii";
    }
}


@end
