//
//  LimitsHolder.h
//  BrainBuilderPro
//
//  Created by Fred Kneeland on 6/28/13.
//  Copyright (c) 2013 BLADE Enterprises LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

int LimitVal;
int Cofficient1;
int Cofficient2;
int Power1;
int Answer;

@interface LimitsHolder : NSObject

-(NSString *) limit:(NSInteger)index;
-(NSString *) question:(NSInteger)index;
-(NSString *) rightAnswer:(NSInteger)index;
-(NSString *) firstWrongAnswer:(NSInteger)index;
-(NSString *) secondWrongAnswer:(NSInteger)index;
-(NSString *) thirdWrongAnswer:(NSInteger)index;
-(void) setUpProblem:(NSInteger)index;

@end
