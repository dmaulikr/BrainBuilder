//
//  Cube.m
//  BrainBuilderGeometry
//
//  Created by Fred Kneeland on 8/13/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import "Cube.h"

@implementation Cube

-(void)Create
{
    side1 = side2 = side3 = arc4random()%10 + 1;
}

@end
