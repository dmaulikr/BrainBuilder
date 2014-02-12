//
//  Answers.m
//  BrainBuilderGeometry
//
//  Created by Fred Kneeland on 8/13/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import "Answers.h"

@implementation Answers

-(void) create:(NSInteger)CorrectAnswer
{
    rightAnswer = [[NSString alloc] initWithFormat:@"%i", CorrectAnswer];
    random = arc4random()%4;
    wrongAnswer1 = 0;
    wrongAnswer2 = 0;
    wrongAnswer3 = 0;
}

-(NSString *) firstAnswer
{
    if (random == 0)
    {
        return rightAnswer;
    }
    else
    {
        wrongAnswer = rightAnswer;
        while ([wrongAnswer isEqualToString:rightAnswer] || [wrongAnswer intValue] < 1)
        {
            helper = [wrongAnswer intValue];
            random2 = arc4random()%2;
            if (random2 == 0)
            {
                helper += arc4random()%5 + 1;
            }
            else
            {
                helper -= (arc4random()%5 + 1);
            }
            wrongAnswer = [[NSString alloc] initWithFormat:@"%i", helper];
        }
        wrongAnswer1 = helper;
        return wrongAnswer;
    }
}

-(NSString *) secondAnswer
{
    if (random == 1)
    {
        return rightAnswer;
    }
    else
    {
        wrongAnswer = rightAnswer;
        while ([wrongAnswer isEqualToString:rightAnswer] || [wrongAnswer intValue] < 1 || helper == wrongAnswer1)
        {
            helper = [wrongAnswer intValue];
            random2 = arc4random()%2;
            if (random2 == 0)
            {
                helper += arc4random()%5 + 1;
            }
            else
            {
                helper -= (arc4random()%5 + 1);
            }
            wrongAnswer = [[NSString alloc] initWithFormat:@"%i", helper];
        }
        wrongAnswer2 = helper;
        return wrongAnswer;
    }

}

-(NSString *) thirdAnswer
{
    if (random == 2)
    {
        return rightAnswer;
    }
    else
    {
        wrongAnswer = rightAnswer;
        while ([wrongAnswer isEqualToString:rightAnswer] || [wrongAnswer intValue] < 1 || helper == wrongAnswer1 || helper == wrongAnswer2)
        {
            helper = [wrongAnswer intValue];
            random2 = arc4random()%2;
            if (random2 == 0)
            {
                helper += arc4random()%5 + 1;
            }
            else
            {
                helper -= (arc4random()%5 + 1);
            }
            wrongAnswer = [[NSString alloc] initWithFormat:@"%i", helper];
        }
        wrongAnswer3 = helper;
        return wrongAnswer;
    }

}

-(NSString *) fourthAnswer
{
    if (random == 3)
    {
        return rightAnswer;
    }
    else
    {
        wrongAnswer = rightAnswer;
        while ([wrongAnswer isEqualToString:rightAnswer] || [wrongAnswer intValue] < 1 || helper == wrongAnswer1 || helper == wrongAnswer2 || helper == wrongAnswer3)
        {
            helper = [wrongAnswer intValue];
            random2 = arc4random()%2;
            if (random2 == 0)
            {
                helper += arc4random()%5 + 1;
            }
            else
            {
                helper -= (arc4random()%5 + 1);
            }
            wrongAnswer = [[NSString alloc] initWithFormat:@"%i", helper];
        }

        return wrongAnswer;
    }

}

-(NSInteger) choice
{
    return random;
}

@end
