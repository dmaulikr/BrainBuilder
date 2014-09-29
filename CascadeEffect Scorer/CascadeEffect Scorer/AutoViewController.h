//
//  AutoViewController.h
//  CascadeEffect Scorer
//
//  Created by Fred Kneeland on 9/9/14.
//  Copyright (c) 2014 Fred Kneeland. All rights reserved.
//

#import <UIKit/UIKit.h>

#define OFFRAMPRED     @"OFFRAMPRED"
#define OFFRAMPBLUE    @"OFFRAMPBLUE"
#define KICKSTANDRED   @"KICKSTANDRED"
#define KICKSTANDBLUE  @"KICKSTANDBLUE"
#define CENTERGOALRED  @"CENTERGOALRED"
#define CENTERGOALBLUE @"CENTERGOALBLUE"
#define BALLINGOALRED  @"BALLINGOALRED"
#define BALLINGOALBLUE @"BALLINGOALBLUE"
#define GOALPARKEDRED  @"GOALPARKEDRED"
#define GOALPARKEDBLUE @"GOALPARKEDBLUE"
#define SCORERED       @"SCORERED"
#define SCOREBLUE      @"SCOREBLUE"

@interface AutoViewController : UIViewController
{
    Boolean werRed;
    IBOutlet UISwitch *offRamp;
    IBOutlet UISwitch *kickStand;
    IBOutlet UISwitch *centerGoal;
    IBOutlet UITextField *ballInGoals;
    IBOutlet UITextField *goalsParked;
    IBOutlet UILabel *score;
}

@property (retain, nonatomic) UISwitch *offRamp;
@property (retain, nonatomic) UISwitch *kickStand;
@property (retain, nonatomic) UISwitch *centerGoal;
@property (retain, nonatomic) UITextField *ballInGoals;
@property (retain, nonatomic) UITextField *goalsParked;
@property (retain, nonatomic) UILabel *score;

-(void) setRed:(Boolean) red;

-(IBAction)upDateScore:(id)sender;
-(IBAction) hideKeyboard:(id)sender;

@end
