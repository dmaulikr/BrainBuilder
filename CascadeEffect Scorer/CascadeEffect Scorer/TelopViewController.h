//
//  TelopViewController.h
//  CascadeEffect Scorer
//
//  Created by Fred Kneeland on 9/9/14.
//  Copyright (c) 2014 Fred Kneeland. All rights reserved.
//

#import <UIKit/UIKit.h>

#define LOWGOALRED      @"LOWGOALRED"
#define LOWGOALBLUE     @"LOWGOALBLUE"
#define MEDGOALRED      @"MEDGOALRED"
#define MEDGOALBLUE     @"MEDGOALBLUE"
#define HIGHGOALRED     @"HIGHGOALRED"
#define HIGHGOALBLUE    @"HIGHGOALBLUE"
#define CENTERGOALRED2  @"CENTERGOALRED2"
#define CENTERGOALBLUE2 @"CENTERGOALBLUE2"
#define PARKINGZONEGRED @"PARKINGZONEGRED"
#define PARKINGZONEBLUE @"PARKINGZONEBLUE"
#define OFFFIELDRED     @"OFFFIELDRED"
#define OFFFIELDBLUE    @"OFFFIELDBLUE"
#define TELOPSCORERED   @"TELOPSCORERED"
#define TELOPSCOREBLUE  @"TELOPSCOREBLUE"

@interface TelopViewController : UIViewController
{
    Boolean werRed;
    
    IBOutlet UITextField *lowGoal;
    IBOutlet UITextField *medGoal;
    IBOutlet UITextField *highGoal;
    IBOutlet UITextField *centerGoal;
    IBOutlet UISegmentedControl *parkingZone;
    IBOutlet UISegmentedControl *offField;
    IBOutlet UILabel *score;
}

@property(retain, nonatomic) UITextField *lowGoal;
@property(retain, nonatomic) UITextField *medGoal;
@property(retain, nonatomic) UITextField *highGoal;
@property(retain, nonatomic) UITextField *centerGoal;
@property(retain, nonatomic) UISegmentedControl *parkingZone;
@property(retain, nonatomic) UISegmentedControl *offField;
@property(retain, nonatomic) UILabel *score;

-(void) setRed:(Boolean) red;

-(IBAction)hideKeyboard:(id)sender;

-(IBAction) calcScore:(id)sender;

@end
