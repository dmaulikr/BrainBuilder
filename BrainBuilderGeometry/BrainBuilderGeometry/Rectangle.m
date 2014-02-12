//
//  Rectangle.m
//  BrainBuilderGeometry
//
//  Created by Fred Kneeland on 8/11/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

-(NSInteger)Area
{
    if (side4 == side3)
    {
        area = side4 * side2;
    }
    else
    {
        area = side4 * side3;
    }
    return area;
}

-(void)Create
{
    side1 = side3 = arc4random()%10 + 1;
    side2 = side4 = arc4random()%10 + 1;
}

@end
