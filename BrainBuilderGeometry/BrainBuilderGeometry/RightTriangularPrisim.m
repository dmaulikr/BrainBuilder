//
//  RightTriangularPrisim.m
//  BrainBuilderGeometry
//
//  Created by Fred Kneeland on 8/30/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import "RightTriangularPrisim.h"

@implementation RightTriangularPrisim

-(void) Create
{
    side1 = side2 = arc4random()%7 + 1;
    side3 = sqrt((double)side1 * side1 * 2);
    if (side1 == side3)
    {
        side3++;
    }
    side4 = arc4random()%10 + 1;
}

-(NSInteger) Volume
{
    return (((side1 * side2)) * side4)/2;
}

@end
