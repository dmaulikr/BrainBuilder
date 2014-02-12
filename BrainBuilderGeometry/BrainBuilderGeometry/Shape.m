//
//  Shape.m
//  BrainBuilderGeometry
//
//  Created by Fred Kneeland on 8/11/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import "Shape.h"

@implementation Shape

-(NSInteger)Perimeter
{
    return perimeter;
}
-(NSInteger)Area
{
    return area;
}
-(NSInteger)Volume;
{
    return volume;
}
-(NSInteger)Side1
{
    return 0;
}
-(NSInteger)Side2
{
    return 0;
}
-(NSInteger)Side3
{
    return 0;
}
-(NSInteger)Side4
{
    return 0;
}
-(void)Create
{
    area = 0;
    perimeter = 0;
    volume = 0;
}

-(NSInteger)Radius
{
    return 0;
}

@end
