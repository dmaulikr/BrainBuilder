//
//  Parallelagram.m
//  BrainBuilderGeometry
//
//  Created by Fred Kneeland on 8/29/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import "Parallelagram.h"

@implementation Parallelagram

-(void) Create
{
    side1 = side2 = arc4random()%8 + 3;
    side3 = side4 = arc4random()%8 + 3;
    height = sqrt(((double) side1*side1) - 2);
}

-(NSInteger) Area
{
    return (height * (double)side1);
}

-(double) Height
{
    return height;
}

@end
