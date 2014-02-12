//
//  GameViewController.h
//  BrainBuilderAttention
//
//  Created by Fred Kneeland on 8/29/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import <UIKit/UIKit.h>
#define LEVEL @"LEVEL"
#define STARTLEVEL @"STARTLEVEL"

@class HighScoreViewController;

@interface GameViewController : UIViewController
{
    IBOutlet UILabel *scoreLabel;
    IBOutlet UIImageView *image1;
    IBOutlet UIImageView *image2;
    IBOutlet UIImageView *image3;
    IBOutlet UIImageView *image4;
    IBOutlet UIImageView *image1Level2;
    IBOutlet UIImageView *image2Level2;
    IBOutlet UIImageView *image3Level2;
    IBOutlet UIImageView *image4Level2;
    IBOutlet UIImageView *image5Level2;
    IBOutlet UIImageView *image6Level2;
    IBOutlet UIImageView *image7Level2;
    IBOutlet UIImageView *image8Level2;
    IBOutlet UIImageView *answerImage;
    IBOutlet UIImage *blueArrow;
    IBOutlet UIImage *orangeArrow;
    IBOutlet UIButton *north;
    IBOutlet UIButton *northEast;
    IBOutlet UIButton *east;
    IBOutlet UIButton *southEast;
    IBOutlet UIButton *south;
    IBOutlet UIButton *southWest;
    IBOutlet UIButton *west;
    IBOutlet UIButton *northWest;
    IBOutlet HighScoreViewController *highScores;
    
    int level;
    int correctDir1;
    int correctDir2;
    int correctDir3;
    int pinkDir;
    int score;
    int randomNumb;
    int randomNumb2;
    int randomNumb3;
    int randomNumb4;
    int randomNumb5;
    int randomNumb6;
    int randomNumb7;
    int randomNumb8;
    int randomNumb9;
    int timeCounter;
    float timeCounter2;
    float timeCounter3;
    float totalHighScore;
    int direction;
    int direction2;
    
    NSString *message;
    NSString *title;
    NSString *buttonTitle;
}

@property(retain, nonatomic) UILabel *scoreLabel;
@property(retain, nonatomic) UIImageView *image1;
@property(retain, nonatomic) UIImageView *image2;
@property(retain, nonatomic) UIImageView *image3;
@property(retain, nonatomic) UIImageView *image4;
@property(retain, nonatomic) UIImageView *image1Level2;
@property(retain, nonatomic) UIImageView *image2Level2;
@property(retain, nonatomic) UIImageView *image3Level2;
@property(retain, nonatomic) UIImageView *image4Level2;
@property(retain, nonatomic) UIImageView *image5Level2;
@property(retain, nonatomic) UIImageView *image6Level2;
@property(retain, nonatomic) UIImageView *image7Level2;
@property(retain, nonatomic) UIImageView *image8Level2;
@property(retain, nonatomic) UIImage *blueArrow;
@property(retain, nonatomic) UIImage *orangeArrow;
@property(retain, nonatomic) UIButton *north;
@property(retain, nonatomic) UIButton *northEast;
@property(retain, nonatomic) UIButton *east;
@property(retain, nonatomic) UIButton *southEast;
@property(retain, nonatomic) UIButton *south;
@property(retain, nonatomic) UIButton *southWest;
@property(retain, nonatomic) UIButton *west;
@property(retain, nonatomic) UIButton *northWest;
@property(retain, nonatomic) UIImageView *answerImage;
@property(retain, nonatomic) HighScoreViewController *highScores;

-(IBAction)North:(id)sender;
-(IBAction)NorthEast:(id)sender;
-(IBAction)NorthWest:(id)sender;
-(IBAction)East:(id)sender;
-(IBAction)West:(id)sender;
-(IBAction)South:(id)sender;
-(IBAction)SouthEast:(id)sender;
-(IBAction)SouthWest:(id)sender;
-(IBAction) loadInstructionPage:(id)sender;

-(void) upDateScore:(NSInteger)index;
-(void) setUpArrows;
-(void) blankViews;
-(void) distractArrows;
-(void) AlertView;
-(void) assignBlueArrow;
-(void) determineDir;

@end
