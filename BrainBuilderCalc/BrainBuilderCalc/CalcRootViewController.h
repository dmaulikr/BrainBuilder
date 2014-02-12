//
//  CalcRootViewController.h
//  BrainBuilderCalc
//
//  Created by Fred Kneeland on 5/29/13.
//
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

BOOL BannerViewOff;

@interface CalcRootViewController : UIViewController <ADBannerViewDelegate>
{
    //IBOutlet UILabel *test;
}

//@property (nonatomic, retain) UILabel *test;;

-(IBAction) loadLimits:(id)sender;
-(IBAction) loadDerivitive:(id)sender;
-(IBAction) loadSecondDerivitive:(id)sender;
-(IBAction) loadIndefiniteIntegral:(id)sender;
-(IBAction) loadDefiniteIntegral:(id)sender;
-(IBAction) loadHighScores:(id)sender;
-(IBAction) loadUpGrade:(id)sender;

@end
