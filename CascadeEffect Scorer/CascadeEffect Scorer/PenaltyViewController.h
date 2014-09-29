//
//  PenaltyViewController.h
//  CascadeEffect Scorer
//
//  Created by Fred Kneeland on 9/9/14.
//  Copyright (c) 2014 Fred Kneeland. All rights reserved.
//

#import <UIKit/UIKit.h>

#define MINORRED      @"MINORRED"
#define MINORBLUE     @"MINORBLUE"
#define MAJORRED      @"MAJORRED"
#define MAJORBLUE     @"MAJORBLUE"
#define PENALTIESRED  @"PENALTIESRED"
#define PENALTIESBLUE @"PENALTIESBLUE"

@interface PenaltyViewController : UIViewController
{
    Boolean werRed;
    
    IBOutlet UITextField *minor;
    IBOutlet UITextField *major;
    IBOutlet UILabel *penalties;
}

@property(nonatomic, retain) UITextField *minor;
@property(nonatomic, retain) UITextField *major;
@property(nonatomic, retain) UILabel *penalties;

-(void) setRed:(Boolean) red;

-(IBAction) calcPenalties:(id)sender;
-(IBAction) hideKeyboard:(id)sender;

@end
