//
//  Shape.h
//  BrainBuilderGeometry
//
//  Created by Fred Kneeland on 8/11/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Shape : NSObject
{
    NSInteger area;
    NSInteger perimeter;
    NSInteger volume;
    NSInteger surfaceArea;
}

-(NSInteger)Perimeter;
-(NSInteger)Area;
-(NSInteger)Volume;
-(NSInteger)SurfaceArea; 
-(NSInteger)Side1;
-(NSInteger)Side2;
-(NSInteger)Side3;
-(NSInteger)Side4;
-(NSInteger)Side5;
-(NSInteger)Radius;
-(void)Create;
-(double) Height;

@end
