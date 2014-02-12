//
//  Quadrilateral.m
//  BrainBuilderGeometry
//
//  Created by Fred Kneeland on 8/11/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import "Quadrilateral.h"

@implementation Quadrilateral

-(NSInteger)Perimeter
{
    perimeter = side1 + side2 + side3 + side4;
    return perimeter;
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
