//
//  Trapezoid.m
//  BrainBuilderGeometry
//
//  Created by Fred Kneeland on 8/29/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import "Trapezoid.h"

@implementation Trapezoid

-(void) Create
{
    side1 = arc4random()%8 + 2;
    side2 = side1 - (arc4random()%3 + 1);
    while (side2 < 1)
    {
        side2 = side1 - (arc4random()%3 + 1);
    }
    side3 = side4 = arc4random()%10 + 1;
    while (side3 < (side1-side2))
    {
        side3 = side4 = arc4random()%10 + 1;
    }
    double helper;
    helper = (double)side1 - side2;
    helper = helper/2;
    height = sqrt((double) ((double)side3 * side3) - (helper*helper));
}

-(NSInteger) Area
{
    area = height * ((side1 + side2) / 2);
    return area;
}

-(double) Height
{
    return height;
}

@end
