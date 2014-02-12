//
//  NewCalcViewController.h
//  BrainBuilderPro
//
//  Created by Fred Kneeland on 6/25/13.
//  Copyright (c) 2013 BLADE Enterprises LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewCalcViewController : UIViewController
{
    
}

-(IBAction) loadLimits:(id)sender;
-(IBAction) loadDerivitive:(id)sender;
-(IBAction) loadSecondDerivitive:(id)sender;
-(IBAction) loadIndefiniteIntegral:(id)sender;
-(IBAction) loadDefiniteIntegral:(id)sender;
-(IBAction) loadHighScores:(id)sender;

@end
