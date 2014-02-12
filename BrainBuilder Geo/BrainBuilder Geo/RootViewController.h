//
//  RootViewController.h
//  BrainBuilder Geo
//
//  Created by Fred Kneeland on 5/23/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController
{
    IBOutlet UIButton *tester;
    IBOutlet UILabel *tester2;
}

@property (retain, nonatomic) UIButton *tester;
@property (retain, nonatomic) UILabel *tester2;

-(IBAction) buttonPressed:(id)sender;

@end
