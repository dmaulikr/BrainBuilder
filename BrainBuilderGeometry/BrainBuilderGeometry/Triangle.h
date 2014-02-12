//
//  Triangle.h
//  BrainBuilderGeometry
//
//  Created by Fred Kneeland on 8/11/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FlatShape.h"

@interface Triangle : FlatShape
{
    NSInteger side1;
    NSInteger side2;
    NSInteger side3;
    Float32 hypotenuse;
    NSInteger height;
    NSInteger width;
}

@end
