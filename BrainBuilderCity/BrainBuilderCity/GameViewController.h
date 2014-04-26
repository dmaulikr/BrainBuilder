//
//  GameViewController.h
//  BrainBuilderCity
//
//  Created by Fred Kneeland on 4/26/14.
//  Copyright (c) 2014 Fred Kneeland. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GameViewController : UIViewController
{
    NSString *workingSolution;
    IBOutlet UILabel *output;
}

@property (retain, nonatomic) UILabel *output;


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
