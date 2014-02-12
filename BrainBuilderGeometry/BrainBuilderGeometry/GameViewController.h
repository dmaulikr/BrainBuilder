//
//  GameViewController.h
//  BrainBuilderGeometry
//
//  Created by Fred Kneeland on 8/11/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@class Square;
@class Answers;
@class HighScoreViewController;

@interface GameViewController : UIViewController <ADBannerViewDelegate>
{
    IBOutlet UIImageView *ShapeView;
    IBOutlet Square *square;
    IBOutlet Answers *answers;
    IBOutlet UILabel *side1;
    IBOutlet UILabel *side2;
    IBOutlet UILabel *side3;
    IBOutlet UILabel *side4;
    IBOutlet UILabel *side5;
    IBOutlet UILabel *side6;
    IBOutlet UILabel *side7;
    IBOutlet UILabel *answer;
    IBOutlet UIButton *buttonA;
    IBOutlet UIButton *buttonB;
    IBOutlet UIButton *buttonC;
    IBOutlet UIButton *buttonD;
    IBOutlet UILabel *rightAnswerLabel;
    IBOutlet UILabel *wrongAnswerLabel;
    IBOutlet UILabel *test;
    IBOutlet HighScoreViewController *highScores;
    
    int chooser;
    int game;
    int rightAnswerCounter;
    int wrongAnswerCounter;
    int helper;
    
    NSDate *startTime;
    NSDate *endTime;
    NSTimeInterval elapsedTime;
    int totalHighScore;
    float finalScore;
    NSString *numbRight;
    NSString *buttonTitle;
}

@property (retain, nonatomic) UIImageView *ShapeView;
@property (retain, nonatomic) Square *square;
@property (retain, nonatomic) Answers *answers;
@property (retain, nonatomic) UILabel *side1;
@property (retain, nonatomic) UILabel *side2;
@property (retain, nonatomic) UILabel *side3;
@property (retain, nonatomic) UILabel *side4;
@property (retain, nonatomic) UILabel *side5;
@property (retain, nonatomic) UILabel *side6;
@property (retain, nonatomic) UILabel *side7;
@property (retain, nonatomic) UILabel *answer;
@property (retain, nonatomic) UIButton *buttonA;
@property (retain, nonatomic) UIButton *buttonB;
@property (retain, nonatomic) UIButton *buttonC;
@property (retain, nonatomic) UIButton *buttonD;
@property (retain, nonatomic) UILabel *rightAnswerLabel;
@property (retain, nonatomic) UILabel *wrongAnswerLabel;
@property (retain, nonatomic) UILabel *test;
@property (retain, nonatomic)  HighScoreViewController *highScores;

-(void) setUp;
-(void) gameType:(NSInteger)index;
-(void) text:(NSInteger)index;
-(void) newGame;
-(void) upDateLabels;
-(void) alertSetUp;
-(void) initialSetUp;

-(IBAction)Button1:(id)sender;
-(IBAction)Button2:(id)sender;
-(IBAction)Button3:(id)sender;
-(IBAction)Button4:(id)sender;

@end
