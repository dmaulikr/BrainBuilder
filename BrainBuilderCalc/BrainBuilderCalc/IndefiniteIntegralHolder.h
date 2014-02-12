//
//  IndefiniteIntegralHolder.h
//  BrainBuilderCalc
//
//  Created by Fred Kneeland on 3/29/13.
//
//

#import <Foundation/Foundation.h>

int Cofficient;
int Power;
int Constant;
int NewCofficient;
int NewPower;
int AnswerType;

@interface IndefiniteIntegralHolder : NSObject

-(NSString *) question:(NSInteger)index;
-(NSString *) rightAnswer:(NSInteger)index;
-(NSString *) firstWrongAnswer:(NSInteger)index;
-(NSString *) secondWrongAnswer:(NSInteger)index;
-(NSString *) thirdWrongAnswer:(NSInteger)index;
-(void) setUpProblem:(NSInteger)index;


@end
