//
//  GameViewController.h
//  BrainBuilderCity
//
//  Created by Fred Kneeland on 4/26/14.
//  Copyright (c) 2014 Fred Kneeland. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HighScoresViewController;

@interface GameViewController : UIViewController
{
    NSString *workingSolution;
    NSString *answers[20];
    int level;
    int score;
    int currentAnswer;
    int correctInARow;
    int lives;
    int timeOfLastLoss;
    int totalHighScore;
    IBOutlet UILabel *output;
    IBOutlet UILabel *label1;
    IBOutlet UILabel *label2;
    IBOutlet UILabel *label3;
    IBOutlet UILabel *label4;
    IBOutlet UILabel *label5;
    IBOutlet UILabel *label6;
    IBOutlet UILabel *label7;
    IBOutlet UILabel *label8;
    IBOutlet UILabel *label9;
    IBOutlet UILabel *label10;
    IBOutlet UILabel *label11;
    IBOutlet UILabel *label12;
    IBOutlet UILabel *label13;
    IBOutlet UILabel *label14;
    IBOutlet UILabel *label15;
    IBOutlet UILabel *label16;
    IBOutlet UILabel *label17;
    IBOutlet UILabel *label18;
    IBOutlet UILabel *label19;
    IBOutlet UILabel *label20;
    IBOutlet HighScoresViewController *highScores;
    IBOutlet UILabel *levelLabel;
    int counter;
    NSString *message;
    NSString *title;
    NSString *buttonTitle;
}

@property (retain, nonatomic) UILabel *output;
@property (retain, nonatomic) UILabel *label1;
@property (retain, nonatomic) UILabel *label2;
@property (retain, nonatomic) UILabel *label3;
@property (retain, nonatomic) UILabel *label4;
@property (retain, nonatomic) UILabel *label5;
@property (retain, nonatomic) UILabel *label6;
@property (retain, nonatomic) UILabel *label7;
@property (retain, nonatomic) UILabel *label8;
@property (retain, nonatomic) UILabel *label9;
@property (retain, nonatomic) UILabel *label10;
@property (retain, nonatomic) UILabel *label11;
@property (retain, nonatomic) UILabel *label12;
@property (retain, nonatomic) UILabel *label13;
@property (retain, nonatomic) UILabel *label14;
@property (retain, nonatomic) UILabel *label15;
@property (retain, nonatomic) UILabel *label16;
@property (retain, nonatomic) UILabel *label17;
@property (retain, nonatomic) UILabel *label18;
@property (retain, nonatomic) UILabel *label19;
@property (retain, nonatomic) UILabel *label20;
@property (retain, nonatomic) HighScoresViewController *highScores;
@property (retain, nonatomic) UILabel *levelLabel;

-(void) upDate;
-(NSString *) getNewLabel;
-(void) initialize;
-(void) buttonPressed;

-(IBAction) Button1:(id)sender;
-(IBAction) Button2:(id)sender;
-(IBAction) Button3:(id)sender;
-(IBAction) Button4:(id)sender;
-(IBAction) Button5:(id)sender;
-(IBAction) Button6:(id)sender;
-(IBAction) Button7:(id)sender;
-(IBAction) Button8:(id)sender;
-(IBAction) Button9:(id)sender;
-(IBAction) Button0:(id)sender;
-(IBAction) ButtonClear:(id)sender;
-(IBAction) ButtonDelete:(id)sender;

@end
