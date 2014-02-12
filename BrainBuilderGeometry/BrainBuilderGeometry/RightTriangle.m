//
//  RightTriangle.m
//  BrainBuilderGeometry
//
//  Created by Fred Kneeland on 8/11/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import "RightTriangle.h"

@implementation RightTriangle

-(void) Create
{
    int helper;
    helper = arc4random()%10 + 1;
    int helper2;
    helper2 = arc4random()%2;
    if (helper2 == 0)
    {
        side1 = side2 = helper;
        hypotenuse = (int)((sqrt((double)(side1*side1 + side2*side2))) * 100);
    }
    else
    {
        side1 = helper;
        side2 = helper+1;
        hypotenuse = (int)((sqrt((double)(side1*side1 + side2*side2))) * 100);
    }
}

-(NSInteger)Area
{
    return (side1*side2)/2;
}

-(NSInteger)Perimeter
{
    return (side1 + side2 + (hypotenuse/100));
}

-(NSInteger)Side5
{
    return hypotenuse;
}

@end
