//
//  RootViewController.h
//  BrainBuilderTrig
//
//  Created by Fred Kneeland on 3/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController

-(IBAction) loadNextPage:(id)sender;
-(IBAction) loadCustomPage:(id)sender;
-(IBAction) loadHighScoreQuickPage:(id)sender;
-(IBAction) loadHighScoreCustomPage:(id)sender;
-(IBAction) loadInstructionsPage:(id)sender;
-(IBAction) loadUpgradePage:(id)sender;

@end
