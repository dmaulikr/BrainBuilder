//
//  RootViewController.h
//  BrainBuilderGeometry
//
//  Created by Fred Kneeland on 8/11/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@interface RootViewController : UIViewController <ADBannerViewDelegate>
{
    
}

-(IBAction) loadGamePage:(id)sender;
-(IBAction) loadGamePage2:(id)sender;
-(IBAction) loadGamePage3:(id)sender;
-(IBAction) loadGamePage4:(id)sender;
-(IBAction) loadWebPage:(id)sender;
-(IBAction) loadHighScores:(id)sender;

@end
