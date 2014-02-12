//
//  InstructionViewController.h
//  BrainBuilder
//
//  Created by Fred Kneeland on 8/22/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@interface InstructionViewController : UIViewController <ADBannerViewDelegate>
{
    int viewShouldLoad;
}

-(void) lastView:(NSInteger)helper;

@end
