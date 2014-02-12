//
//  DefiniteIntegralHolder.h
//  BrainBuilderPro
//
//  Created by Fred Kneeland on 6/28/13.
//  Copyright (c) 2013 BLADE Enterprises LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

int Cofficient;
int Power;
int Constant;
int UpperLimit;
int LowerLimit;
int NewCofficient;
int NewPower;
int AnswerType;
int firstAnswrCmb;
int totalUpperLimit;
int totalLowerLimit;
int finalAnswr;
int wrongAnswr;

@interface DefiniteIntegralHolder : NSObject

-(NSString *) question:(NSInteger)index;
-(NSString *) rightAnswer:(NSInteger)index;
-(NSString *) firstWrongAnswer:(NSInteger)index;
-(NSString *) secondWrongAnswer:(NSInteger)index;
-(NSString *) thirdWrongAnswer:(NSInteger)index;
-(NSString *) UpperLimit:(NSInteger)index;
-(NSString *) LowerLimit:(NSInteger)index;
-(void) setUpProblem:(NSInteger)index;

@end
