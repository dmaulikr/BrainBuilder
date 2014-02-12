//
//  AttentionViewController.h
//  BrainBuilderAttention
//
//  Created by Fred Kneeland on 8/29/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import <UIKit/UIKit.h>
#define FIRSTLOAD @"FIRSTLOAD"

@interface AttentionViewController : UIViewController
{
    
}

-(IBAction) loadGamePage:(id)sender;
-(IBAction) loadInstructions:(id)sender;
-(IBAction) loadHighScores:(id)sender;
-(IBAction) loadSettings:(id)sender;

@end
