//
//  RootViewController.h
//  Finale
//
//  Created by Fred Kneeland on 8/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAD.h>

int highScorezes;
int repetition;
NSDate *startTimez;
NSDate *endTimez;
NSTimeInterval elapsedTimez;

@class HighScore;

#define SharedAdBannerView ((AdBannerNavigationAppDelegate *)[[UIApplication sharedApplication] delegate]).adBanner

@interface RootViewController : UIViewController <ADBannerViewDelegate> 
{
	IBOutlet HighScore *highScore;
	ADBannerView *bannerView;
}

@property (retain, nonatomic) HighScore *highScore;

-(IBAction) loadNextPage:(id)sender;
-(IBAction) loadCustomGame:(id)sender;
-(IBAction) loadInstructionsPage:(id)sender;
-(IBAction) loadHighScorePage:(id)sender;
-(IBAction) loadCustomHighScore:(id)sender;

-(void) updateHighScorez;
-(void) Repeat;

@end
