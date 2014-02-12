//
//  TriangularPrism.m
//  BrainBuilderGeometry
//
//  Created by Fred Kneeland on 8/19/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import "TriangularPrism.h"

@implementation TriangularPrism

-(void) Create
{
    side1 = side2 = side3 = arc4random()%10 + 1;
    side4 = arc4random()%10 + 1;
}

-(NSInteger) Volume
{
    return (side1 * side2 * side4)/4;
}

-(NSInteger) SurfaceArea
{
    return (int)((side1 * side4 * 3.0) + ((side1 * side2 * 2.0)/4.0) * sqrt(3.0));
}

-(NSInteger)Side1
{
    return side1;
}

-(NSInteger)Side2
{
    return side2;
}

-(NSInteger)Side3
{
    return side3;
}

-(NSInteger)Side4
{
    return side4;
}


@end
