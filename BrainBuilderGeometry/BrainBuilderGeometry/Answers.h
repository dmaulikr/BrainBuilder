//
//  Answers.h
//  BrainBuilderGeometry
//
//  Created by Fred Kneeland on 8/13/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Answers : NSObject
{
    NSString *rightAnswer;
    NSString *wrongAnswer;
    NSInteger random;
    int helper;
    int random2;
    int wrongAnswer1;
    int wrongAnswer2;
    int wrongAnswer3;
}

-(void) create:(NSInteger)CorrectAnswer;
-(NSString *) firstAnswer;
-(NSString *) secondAnswer;
-(NSString *) thirdAnswer;
-(NSString *) fourthAnswer;
-(NSInteger) choice;

@end
