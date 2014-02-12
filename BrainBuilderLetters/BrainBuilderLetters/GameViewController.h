//
//  GameViewController.h
//  BrainBuilderLetters
//
//  Created by Fred Kneeland on 11/13/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GameViewController : UIViewController
{
    IBOutlet UILabel *test;
    IBOutlet UILabel *topLabel;
    IBOutlet UILabel *bottomLabel;
    IBOutlet UILabel *score;
    IBOutlet UILabel *helper;
    NSArray *letters;
    int numbCorrect;
    int numbWrong;
    int ticks;
    int random;
    int random2;
    bool right;
    int points;
}

@property (retain, nonatomic) UILabel *test;
@property (retain, nonatomic) UILabel *topLabel;
@property (retain, nonatomic) UILabel *bottomLabel;
@property (retain, nonatomic) UILabel *score;
@property (retain, nonatomic) UILabel *helper;

-(IBAction) Yes:(id)sender;
-(IBAction) No:(id)sender;

-(void) setUp;
-(void) upDate;

@end
