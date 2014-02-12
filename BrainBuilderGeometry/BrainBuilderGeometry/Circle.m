//
//  Circle.m
//  BrainBuilderGeometry
//
//  Created by Fred Kneeland on 8/16/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import "Circle.h"

@implementation Circle

-(void) Create
{
    radius = arc4random()%10 + 1;
}

-(NSInteger)Perimeter
{
    return radius * 2;
}

-(NSInteger)Area
{
    return radius*radius;
}

-(NSInteger)Radius
{
    return radius;
}

@end
