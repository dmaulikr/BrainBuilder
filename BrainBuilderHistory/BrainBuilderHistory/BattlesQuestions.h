//
//  BattlesQuestions.h
//  BrainBuilderHistory
//
//  Created by Fred Kneeland on 6/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BattlesQuestions : NSObject

-(NSString *) getQuestion:(int16_t)choice;
-(NSString *) getRightAnswer:(int32_t)choice2;
-(NSString *) getWrongAnswers:(int32_t)choice3;
-(NSString *) getWrongAnswers2:(int32_t)choice4;
-(NSString *) getWrongAnswers3:(int32_t)choice5;

@end
