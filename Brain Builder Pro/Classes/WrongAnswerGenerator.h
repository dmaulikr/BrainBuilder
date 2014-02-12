//
//  WrongAnswerGenerator.h
//  BrainBuilderPro
//
//  Created by Fred Kneeland on 9/22/13.
//  Copyright (c) 2013 BLADE Enterprises LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WrongAnswerGenerator : NSObject
{
    float correctAnswer;
    float wrong;
    float wrong2;
    float wrong3;
    float randomNumb;
}

-(void)Create:(float)rightAnswer;
-(float) wrongAnswer1;
-(float) wrongAnswer2;
-(float) wrongAnswer3;

@end
