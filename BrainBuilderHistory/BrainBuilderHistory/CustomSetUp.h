//
//  CustomSetUp.h
//  BrainBuilderHistory
//
//  Created by Fred Kneeland on 6/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#define OBJECT1 @"OBJECT1"
#define OBJECT2 @"OBJECT2"
#define OBJECT3 @"OBJECT3"
#define OBJECT4 @"OBJECT4"
#define NUMB @"NUMB"

@interface CustomSetUp : UIViewController
{
    IBOutlet UISwitch *object1;
    IBOutlet UISwitch *object2;
    IBOutlet UISwitch *object3;
    IBOutlet UISwitch *object4;
}

@property (retain, nonatomic) UISwitch *object1;
@property (retain, nonatomic) UISwitch *object2;
@property (retain, nonatomic) UISwitch *object3;
@property (retain, nonatomic) UISwitch *object4;

-(IBAction) loadCustomGamePage:(id)sender;
-(IBAction) saver:(id)sender;

-(void) save;

@end
