//
//  AppSettings.h
//  CascadeEffect Scorer
//
//  Created by Fred Kneeland on 9/9/14.
//  Copyright (c) 2014 Fred Kneeland. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppSettings : NSObject

typedef enum ScreenType {
    iOS_35,
    iOS_4
}ScreenType;

+ (ScreenType) screenType;

@end
