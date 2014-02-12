//
//  Quadrilateral.h
//  BrainBuilderGeometry
//
//  Created by Fred Kneeland on 8/11/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FlatShape.h"

@interface Quadrilateral : FlatShape
{
    NSInteger side1;
    NSInteger side2;
    NSInteger side3;
    NSInteger side4;
}

@end
