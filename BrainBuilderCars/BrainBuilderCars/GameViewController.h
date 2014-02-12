//
//  GameViewController.h
//  BrainBuilderCars
//
//  Created by Fred Kneeland on 9/4/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import <UIKit/UIKit.h>
#define deg2rad (3.1415926/180.0)

@interface GameViewController : UIViewController
{
    IBOutlet UIView *car1;
    IBOutlet UIView *car2;
    IBOutlet UIView *car3;
    IBOutlet UIView *car4;
    IBOutlet UIView *car5;
    IBOutlet UIView *car6;
    IBOutlet UIView *car7;
    IBOutlet UIView *car8;
    IBOutlet UIView *car9;
    IBOutlet UIView *car10;
    IBOutlet UILabel *timerLabel;
    IBOutlet UILabel *helper;
    IBOutlet UIView *innerCar1;
    IBOutlet UIView *innerCar2;
    IBOutlet UIView *innerCar3;
    IBOutlet UIView *innerCar4;
    IBOutlet UIView *innerCar5;
    IBOutlet UIView *innerCar6;
    IBOutlet UIView *innerCar7;
    IBOutlet UIView *innerCar8;
    IBOutlet UIView *innerCar9;
    IBOutlet UIView *innerCar10;
    IBOutlet UILabel *helperLabel;
    IBOutlet UIView *temp;
    IBOutlet UIView *temp2;
    
    int correctButton;
    int animationTimer;
    int returnTimer;
    int randomNumb;
    int randomNumb2;
    bool rightSide;
    float travelDistX;
    float travelDistY;
    float finalYHeight;
    float finalXLocation;
    float initialX;
    float initialY;
    float x_2;
    float y_2;
    
    bool backUp;
    bool moveVerticle;
    bool secondTurn;
    bool moveHorizontal;
    bool toMiddle;
    bool toBottom;
    bool toRotated;
    bool toParked;
}

@property (retain, nonatomic) UIView *car1;
@property (retain, nonatomic) UILabel *timerLabel;
@property (retain, nonatomic) UILabel *helper;
@property (retain, nonatomic) UIView *innerCar1;
@property (retain, nonatomic) UILabel *helperLabel;
@property (retain, nonatomic) UIView *car2;
@property (retain, nonatomic) UIView *car3;
@property (retain, nonatomic) UIView *car4;
@property (retain, nonatomic) UIView *car5;
@property (retain, nonatomic) UIView *car6;
@property (retain, nonatomic) UIView *car7;
@property (retain, nonatomic) UIView *car8;
@property (retain, nonatomic) UIView *car9;
@property (retain, nonatomic) UIView *car10;
@property (retain, nonatomic) UIView *innerCar2;
@property (retain, nonatomic) UIView *innerCar3;
@property (retain, nonatomic) UIView *innerCar4;
@property (retain, nonatomic) UIView *innerCar5;
@property (retain, nonatomic) UIView *innerCar6;
@property (retain, nonatomic) UIView *innerCar7;
@property (retain, nonatomic) UIView *innerCar8;
@property (retain, nonatomic) UIView *innerCar9;
@property (retain, nonatomic) UIView *innerCar10;
@property (retain, nonatomic) UIView *temp;
@property (retain, nonatomic) UIView *temp2;

-(IBAction) Car1:(id)sender;
-(IBAction) Car2:(id)sender;
-(IBAction) Car3:(id)sender;
-(IBAction) Car4:(id)sender;
-(IBAction) Car5:(id)sender;
-(IBAction) Car6:(id)sender;
-(IBAction) Car7:(id)sender;
-(IBAction) Car8:(id)sender;
-(IBAction) Car9:(id)sender;
-(IBAction) Car10:(id)sender;
-(IBAction) Car1Park:(id)sender;
-(IBAction) Car2Park:(id)sender;
-(IBAction) Car3Park:(id)sender;
-(IBAction) Car4Park:(id)sender;
-(IBAction) Car5Park:(id)sender;
-(IBAction) Car6Park:(id)sender;
-(IBAction) Car7Park:(id)sender;
-(IBAction) Car8Park:(id)sender;
-(IBAction) Car9Park:(id)sender;
-(IBAction) Car10Park:(id)sender;

-(void)ButtonPressed:(NSInteger)location: (NSInteger)button;
-(void) animate:(NSTimer *)timer;
-(void) animateStart;
-(void) animateStop;
-(void) clearViews;
-(void) setBackGround;
-(void) rightBackUp;
-(void) leftBackUp;
-(void) position:(NSInteger)index;
-(void) horizontalSlide;
-(void) returnCar:(NSTimer *)timer;
-(void) startReturn;
-(void) stopReturn;
-(void) slideBackToMiddle;
-(void) slideDown;
-(void) rotateToParkSpot;
-(void) slideIntoParkSpot;

-(void) slideHorizontallyTo:(float)locX;
-(void) slideVerticlyTo:(float)locY;
-(void) rotateDegrees:(float)degrees;

@end
