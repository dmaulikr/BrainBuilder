//
//  RectagularPrism.m
//  BrainBuilderGeometry
//
//  Created by Fred Kneeland on 8/13/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import "RectagularPrism.h"

@implementation RectagularPrism


-(void) Create
{
    side1 = arc4random()%10 + 1;
    side2 = arc4random()%10 + 1;
    side3 = arc4random()%10 + 1;
}

-(NSInteger) Volume
{
    return side1 * side2 * side3;
}

-(NSInteger) SurfaceArea
{
    return (2*side1*side2) + (2*side1*side3) + (2*side2*side3);
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
    return -1;
}

@end
