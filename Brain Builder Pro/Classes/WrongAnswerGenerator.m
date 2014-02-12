//
//  WrongAnswerGenerator.m
//  BrainBuilderPro
//
//  Created by Fred Kneeland on 9/22/13.
//  Copyright (c) 2013 BLADE Enterprises LLC. All rights reserved.
//

#import "WrongAnswerGenerator.h"

@implementation WrongAnswerGenerator

-(void)Create:(float)rightAnswer
{
    correctAnswer = rightAnswer;
}

-(float) wrongAnswer1
{
    
    wrong = -1;
    while (wrong < 0 || wrong > 50000)
    {
        randomNumb = arc4random()%2;
        if (randomNumb == 0)
        {
            randomNumb = arc4random()%10 + 1;
            wrong = correctAnswer + randomNumb;
        }
        else
        {
            randomNumb = arc4random()%10 + 1;
            wrong = correctAnswer - randomNumb;
        }
    }
    return wrong;
}

-(float) wrongAnswer2
{
    
    wrong2 = -1;
    while (wrong2 == wrong || wrong2 < 0 || wrong > 50000)
    {
        randomNumb = arc4random()%2;
        if (randomNumb == 0)
        {
            randomNumb = arc4random()%10 + 1;
            wrong2 = correctAnswer + randomNumb;
        }
        else
        {
            randomNumb = arc4random()%10 + 1;
            wrong2 = correctAnswer - randomNumb;
        }
    }
    

    return wrong2;
}

-(float) wrongAnswer3
{
    
    wrong3 = -1;
    while (wrong3 == wrong || wrong3 == wrong2 || wrong3 < 0 || wrong > 50000)
    {
        randomNumb = arc4random()%2;
        if (randomNumb == 0)
        {
            randomNumb = arc4random()%10 + 1;
            wrong3 = correctAnswer + randomNumb;
        }
        else
        {
            randomNumb = arc4random()%10 + 1;
            wrong3 = correctAnswer - randomNumb;
        }
    }

    return wrong3;
}

@end
