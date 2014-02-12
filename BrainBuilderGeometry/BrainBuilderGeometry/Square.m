//
//  Square.m
//  BrainBuilderGeometry
//
//  Created by Fred Kneeland on 8/11/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import "Square.h"

@implementation Square

-(void)Create
{
    side4 = side3 = side2 = side1 = arc4random()%10 + 1;
}

@end
