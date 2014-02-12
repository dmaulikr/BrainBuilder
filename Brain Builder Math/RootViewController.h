//
//  RootViewController.h
//  Finale
//
//  Created by Fred Kneeland on 8/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

int highScorezes;
int repetition;

@class HighScore;


@interface RootViewController : UIViewController <ADBannerViewDelegate>
{
	IBOutlet HighScore *highScore;
    IBOutlet UILabel *test;
}

@property (retain, nonatomic) HighScore *highScore;
@property (retain, nonatomic) UILabel *test;

-(IBAction) loadNextPage:(id)sender;
-(IBAction) loadCustomGame:(id)sender;
-(IBAction) loadInstructionsPage:(id)sender;
-(IBAction) loadHighScorePage:(id)sender;
-(IBAction) loadCustomHighScore:(id)sender;
-(IBAction) loadUpDatePage:(id)sender;


@end
