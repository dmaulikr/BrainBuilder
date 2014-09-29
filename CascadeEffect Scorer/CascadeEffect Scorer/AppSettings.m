//
//  AppSettings.m
//  CascadeEffect Scorer
//
//  Created by Fred Kneeland on 9/9/14.
//  Copyright (c) 2014 Fred Kneeland. All rights reserved.
//

#import "AppSettings.h"

static int _screenType = -1;

@implementation AppSettings

+ (ScreenType) screenType
{
    if (_screenType < 0)
    {
        CGSize iOSDeviceScreenSize = [[UIScreen mainScreen] bounds].size;
        if(iOSDeviceScreenSize.height == 240 || iOSDeviceScreenSize.height == 480)
        {
            _screenType = iOS_35;
        }
        else if (iOSDeviceScreenSize.height == 568 || iOSDeviceScreenSize.height == 1136)
        {
            _screenType = iOS_4;
        }
        else
        {
            // did not detect the screen... use 3.5"
            _screenType = iOS_35;
        }
    }
    return _screenType;
}


@end
