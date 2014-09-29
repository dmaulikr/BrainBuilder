//
//  RootViewController.h
//  CascadeEffect Scorer
//
//  Created by Fred Kneeland on 9/9/14.
//  Copyright (c) 2014 Fred Kneeland. All rights reserved.
//

#import <UIKit/UIKit.h>

#define SCORERED @"SCORERED"
#define SCOREBLUE @"SCOREBLUE"
#define TELOPSCORERED @"TELOPSCORERED"
#define TELOPSCOREBLUE @"TELOPSCOREBLUE"
#define PENALTIESRED @"PENALTIESRED"
#define PENALTIESBLUE @"PENALTIESBLUE"

@interface RootViewController : UIViewController
{
    IBOutlet UILabel *redScore;
    IBOutlet UILabel *blueScore;
    IBOutlet UILabel *redQualifying;
    IBOutlet UILabel *blueQualifying;
    IBOutlet UILabel *redRanking;
    IBOutlet UILabel *blueRanking;
}

@property(retain, nonatomic) UILabel *redScore;
@property(retain, nonatomic) UILabel *blueScore;
@property(retain, nonatomic) UILabel *redQualifying;
@property(retain, nonatomic) UILabel *blueQualifying;
@property(retain, nonatomic) UILabel *redRanking;
@property(retain, nonatomic) UILabel *blueRanking;

- (IBAction) loadRedAuto:(id)sender;
- (IBAction) loadBlueAuto:(id)sender;
- (IBAction) loadRedTelop:(id)sender;
- (IBAction) loadBlueTelop:(id)sender;
- (IBAction) loadRedPenalty:(id)sender;
- (IBAction) loadBluePenalty:(id)sender;

+ (void) redAutoScore:(NSInteger)score;
+ (void) redTelopScore:(NSInteger)score;
+ (void) redPenaltyScore:(NSInteger)score;
+ (void) blueAutoScore:(NSInteger)score;
+ (void) blueTelopScore:(NSInteger)score;
+ (void) bluePenaltyScore:(NSInteger)score;

@end
