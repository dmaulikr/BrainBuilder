//
//  SecondDervHolder.h
//  BrainBuilderPro
//
//  Created by Fred Kneeland on 6/28/13.
//  Copyright (c) 2013 BLADE Enterprises LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

int firstLevelCofficient;
int firstLevelPower;
int firstLevelConstant;
int secondLevelCofficient;
int secondLevelPower;
int secondLevelConstant;
int answerCofficient;
int answerPower;
int answerConstant;

@interface SecondDervHolder : NSObject

-(NSString *) question:(NSInteger)index;
-(NSString *) rightAnswer:(NSInteger)index;
-(NSString *) firstWrongAnswer:(NSInteger)index;
-(NSString *) secondWrongAnswer:(NSInteger)index;
-(NSString *) thirdWrongAnswer:(NSInteger)index;
-(void) setUpProblem:(NSInteger)index;

@end
