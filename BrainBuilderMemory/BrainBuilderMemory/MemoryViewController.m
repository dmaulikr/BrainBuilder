//
//  MemoryViewController.m
//  BrainBuilder
//
//  Created by Fred Kneeland on 8/19/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import "MemoryViewController.h"
#import "InstructionViewController.h"
#import "HighScoreViewController.h"

@interface MemoryViewController ()

@property (nonatomic,weak) IBOutlet UIView *test2;
@property (nonatomic, strong) IBOutlet UILabel *timerLabel;
@property (nonatomic, strong) IBOutlet UILabel *timerTest;
@property (nonatomic, strong) IBOutlet UILabel *RoundLabel;
@property (nonatomic, strong) IBOutlet UILabel *LevelLabel;
@property (nonatomic, strong) IBOutlet UILabel *BlackOutLabel;
@property (nonatomic, strong) IBOutlet UILabel *ScoreLabel;
@property (nonatomic, strong) IBOutlet UILabel *LivesLabel;

@end

@implementation MemoryViewController
{
    NSTimer *_timer;
    CFTimeInterval _ticks;
}
@synthesize tester;
@synthesize button1, button2, button3, button4, button5, button6, button7, button8, button9, button10, button11, button12,button13, button14, button15, button16, button17, button18, button19, button20;
@synthesize gameView;
@synthesize highScores;
@synthesize info;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)startTimer
{
    if (_timer == nil) {
        _timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(timerTick:) userInfo:nil repeats:YES];
    }
}

- (void)stopTimer
{
    [_timer invalidate];
    _timer = nil;
}

- (void)timerTick:(NSTimer *)timer
{
    // Timers are not guaranteed to tick at the nominal rate specified, so this isn't technically accurate.
    // However, this is just an example to demonstrate how to stop some ongoing activity, so we can live with that inaccuracy.
    _ticks += 0.1;
    assist += 1;
    double seconds = fmod(_ticks, 60.0);
    double minutes = fmod(trunc(_ticks / 60.0), 60.0);
    self.timerLabel.text = [NSString stringWithFormat:@"%02.0f:%04.1f", minutes, seconds];
    if (assist == 1)
    {
        self.RoundLabel.text = [[NSString alloc] initWithFormat:@"%i", round];
        self.LevelLabel.text = [[NSString alloc] initWithFormat:@"%i", level];
        [self coverUpButtons];
        [self returnButtons];
        //[self coverUpButtons];
    }
    if (assist == 10)
    {
        //self.timerTest.text = @"Hello World!";
        [self setButtons];
        [self printValues];
        if (round == 2 || round == 6 || round == 8)
        {
            [self distractButtons];
        }
    }
    if (assist == 30)
    {
        [self returnButtons];
        if (round == 3)
        {
            //[self.view insertSubview:blackScreen.view aboveSubview:self.view];
            self.BlackOutLabel.backgroundColor = [UIColor blackColor];
        }
        if (round == 4)
        {
            [UIView animateWithDuration:3.0
                             animations:^{
                                 gameView.transform = CGAffineTransformMakeRotation(deg2rad * -90);
                             }];
            [UIView commitAnimations];
            
        }
        if (round == 5 || round == 7 || round == 8)
        {
            self.BlackOutLabel.backgroundColor = [UIColor blackColor];
        }
        if (round == 6)
        {
            //self.BlackOutLabel.backgroundColor = [UIColor clearColor];
            randomTurns = arc4random()%5;
            [UIView animateWithDuration:3.0
                             animations:^{
                                 gameView.transform = CGAffineTransformMakeRotation(deg2rad * -90 * randomTurns);
                             }];
            [UIView commitAnimations];
        }
    }
    if (assist == 45)
    {
        if (round == 3)
        {
            self.BlackOutLabel.backgroundColor = [UIColor clearColor];
        }
        if (round == 5)
        {
            self.BlackOutLabel.backgroundColor = [UIColor clearColor];
            [UIView animateWithDuration:3.0
                             animations:^{
                                 gameView.transform = CGAffineTransformMakeRotation(deg2rad * -90);
                             }];
            [UIView commitAnimations];
        }
        if (round == 7 || round == 8)
        {
            self.BlackOutLabel.backgroundColor = [UIColor clearColor];
            randomTurns = arc4random()%3 + 1;
            [UIView animateWithDuration:3.0
                             animations:^{
                                 gameView.transform = CGAffineTransformMakeRotation(deg2rad * -90 * randomTurns);
                             }];
            [UIView commitAnimations];
        }
    }
}

-(void) printValues
{
    self.timerTest.text = [[NSString alloc] initWithFormat:@"Level:%i 1:%i 2:%i 3:%i 4:%i", level, rightButton1, rightButton2 ,rightButton3, rightButton4];
}
-(Boolean) aCorrectNumb:(NSInteger)helper
{
    if (level == 3)
    {
        if (rightButton1 == helper || rightButton2 == helper || rightButton3 == helper)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    else if (level == 4)
    {
        if (rightButton1 == helper || rightButton2 == helper || rightButton3 == helper || rightButton4 == helper)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    else if (level == 5)
    {
        if (rightButton1 == helper || rightButton2 == helper || rightButton3 == helper || rightButton4 == helper || rightButton5 == helper)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    else if (level == 6)
    {
        if (rightButton1 == helper || rightButton2 == helper || rightButton3 == helper || rightButton4 == helper || rightButton5 == helper || rightButton6 == helper)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    else if (level == 7)
    {
        if (rightButton1 == helper || rightButton2 == helper || rightButton3 == helper || rightButton4 == helper || rightButton5 == helper || rightButton6 == helper || rightButton7 == helper)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    else if (level == 8)
    {
        if (rightButton1 == helper || rightButton2 == helper || rightButton3 == helper || rightButton4 == helper || rightButton5 == helper || rightButton6 == helper || rightButton7 == helper || rightButton8 == helper)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    else if (level == 9)
    {
        if (rightButton1 == helper || rightButton2 == helper || rightButton3 == helper || rightButton4 == helper || rightButton5 == helper || rightButton6 == helper || rightButton7 == helper || rightButton8 == helper || rightButton9 == helper)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    else
    {
        if (rightButton1 == helper || rightButton2 == helper || rightButton3 == helper || rightButton4 == helper || rightButton5 == helper || rightButton6 == helper || rightButton7 == helper || rightButton8 == helper || rightButton9 == helper || rightButton10 == helper)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
}

-(NSInteger) LevelValue
{
    if (level == 3)
    {
        return 8;
    }
    else if (level < 6)
    {
        return 10;
    }
    else if (level < 8)
    {
        return 12;
    }
    else if (level < 9)
    {
        return 16;
    }
    else
    {
        return 20;
    }

    return -1;
}

-(void) setButtons
{
    rightButton1 = arc4random()%[self LevelValue];
    rightButton2 = arc4random()%[self LevelValue];
    rightButton3 = arc4random()%[self LevelValue];
    rightButton4 = arc4random()%[self LevelValue];
    rightButton5 = arc4random()%[self LevelValue];
    rightButton6 = arc4random()%[self LevelValue];
    rightButton7 = arc4random()%[self LevelValue];
    rightButton8 = arc4random()%[self LevelValue];
    rightButton9 = arc4random()%[self LevelValue];
    rightButton10 = arc4random()%[self LevelValue];
    
    
    while (rightButton2 == rightButton1)
    {
        rightButton2 = arc4random()%[self LevelValue];
    }
    while (rightButton3 == rightButton2 || rightButton3 == rightButton1)
    {
        rightButton3 = arc4random()%[self LevelValue];
    }
    if (level > 3)
    {
        while (rightButton4 == rightButton2 || rightButton4 == rightButton1 || rightButton4 == rightButton3)
        {
            rightButton4 = arc4random()%[self LevelValue];
        }
        while (rightButton5 == rightButton2 || rightButton5 == rightButton1 || rightButton5 == rightButton3 || rightButton5 == rightButton4)
        {
            rightButton5 = arc4random()%[self LevelValue];
        }
    }
    if (level > 5)
    {
        while (rightButton6 == rightButton2 || rightButton6 == rightButton1 || rightButton6 == rightButton3 || rightButton6 == rightButton4 || rightButton6 == rightButton5)
        {
            rightButton6 = arc4random()%[self LevelValue];
        }
        while (rightButton7 == rightButton2 || rightButton7 == rightButton1 || rightButton7 == rightButton3 || rightButton7 == rightButton4 || rightButton7 == rightButton5 || rightButton7 == rightButton6)
        {
            rightButton7 = arc4random()%[self LevelValue];
        }
    }
    if (level > 7)
    {
        while (rightButton8 == rightButton2 || rightButton8 == rightButton1 || rightButton8 == rightButton3 || rightButton8 == rightButton4 || rightButton8 == rightButton5 || rightButton8 == rightButton6 || rightButton8 == rightButton7)
        {
            rightButton8 = arc4random()%[self LevelValue];
        }
    }
    if (level > 8)
    {
        while (rightButton9 == rightButton2 || rightButton9 == rightButton1 || rightButton9 == rightButton3 || rightButton9 == rightButton4 || rightButton9 == rightButton5 || rightButton9 == rightButton6 || rightButton9 == rightButton7 || rightButton9 == rightButton8)
        {
            rightButton9 = arc4random()%[self LevelValue];
        }
        while (rightButton10 == rightButton2 || rightButton10 == rightButton1 || rightButton10 == rightButton3 || rightButton10 == rightButton4 || rightButton10 == rightButton5 || rightButton10 == rightButton6 || rightButton10 == rightButton7 || rightButton10 == rightButton8 || rightButton10 == rightButton9)
        {
            rightButton10 = arc4random()%[self LevelValue];
        }
    }
    
    if ([self aCorrectNumb:0])
    {
        [self.button1 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
    }
    if ([self aCorrectNumb:1])
    {
        [self.button2 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
    }
    if ([self aCorrectNumb:2])
    {
        [self.button3 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
    }
    if ([self aCorrectNumb:3])
    {
        [self.button4 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
    }
    if ([self aCorrectNumb:4])
    {
        [self.button5 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
    }
    if ([self aCorrectNumb:5])
    {
        [self.button6 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
    }
    if ([self aCorrectNumb:6])
    {
        [self.button7 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
    }
    if ([self aCorrectNumb:7])
    {
        [self.button8 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
    }
    if ([self aCorrectNumb:8])
    {
        [self.button9 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
    }
    if ([self aCorrectNumb:9])
    {
        [self.button10 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
    }
    if ([self aCorrectNumb:10])
    {
        [self.button11 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
    }
    if ([self aCorrectNumb:11])
    {
        [self.button12 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
    }
    if ([self aCorrectNumb:12])
    {
        [self.button13 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
    }
    if ([self aCorrectNumb:13])
    {
        [self.button14 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
    }
    if ([self aCorrectNumb:14])
    {
        [self.button15 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
    }
    if ([self aCorrectNumb:15])
    {
        [self.button16 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
    }
    if ([self aCorrectNumb:16])
    {
        [self.button17 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
    }
    if ([self aCorrectNumb:17])
    {
        [self.button18 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
    }
    if ([self aCorrectNumb:18])
    {
        [self.button19 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
    }
    if ([self aCorrectNumb:19])
    {
        [self.button20 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
    }
}

-(void) distractButtons
{
    if (round == 2 || round == 6 || round == 8)
    {
        int helper, helper2, helper3, helper4, helper5;;
            helper = arc4random()%[self LevelValue];
            helper2 = arc4random()%[self LevelValue];
            while ([self aCorrectNumb:helper])
            {
                helper = arc4random()%[self LevelValue];
            }
            while ([self aCorrectNumb:helper2] || helper2 == helper)
            {
                helper2 = arc4random()%[self LevelValue];
            }
        if (level > 7)
        {
            helper3 = arc4random()%[self LevelValue];
            helper4 = arc4random()%[self LevelValue];
            while ([self aCorrectNumb:helper3] || helper3 == helper || helper3 == helper2)
            {
                helper3 = arc4random()%[self LevelValue];
            }
            while ([self aCorrectNumb:helper4] || helper4 == helper || helper4 == helper2 || helper4 == helper3)
            {
                helper4 = arc4random()%[self LevelValue];
            }
        }
        else
        {
            helper3 = -1;
            helper4 = -1;
        }
        if (helper == 0 || helper2 == 0 || helper3 == 0 || helper4 == 0)
        {
            helper5 = arc4random()%3;
            if (helper5 == 0)
            {
                [self.button1 setImage:[UIImage imageNamed:@"BrownOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 1)
            {
                [self.button1 setImage:[UIImage imageNamed:@"BlackOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 2)
            {
                [self.button1 setImage:[UIImage imageNamed:@"BlueOctogon.png"] forState:UIControlStateNormal];
            }
        }
        if (helper == 1 || helper2 == 1 || helper3 == 1 || helper4 == 1)
        {
            helper5 = arc4random()%3;
            if (helper5 == 0)
            {
                [self.button2 setImage:[UIImage imageNamed:@"BrownOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 1)
            {
                [self.button2 setImage:[UIImage imageNamed:@"BlackOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 2)
            {
                [self.button2 setImage:[UIImage imageNamed:@"BlueOctogon.png"] forState:UIControlStateNormal];
            }
        }
        if (helper == 2 || helper2 == 2 || helper3 == 2 || helper4 == 2)
        {
            helper5 = arc4random()%3;
            if (helper5 == 0)
            {
                [self.button3 setImage:[UIImage imageNamed:@"BrownOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 1)
            {
                [self.button3 setImage:[UIImage imageNamed:@"BlackOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 2)
            {
                [self.button3 setImage:[UIImage imageNamed:@"BlueOctogon.png"] forState:UIControlStateNormal];
            }
        }
        if (helper == 3 || helper2 == 3 || helper3 == 3 || helper4 == 3)
        {
            helper5 = arc4random()%3;
            if (helper5 == 0)
            {
                [self.button4 setImage:[UIImage imageNamed:@"BrownOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 1)
            {
                [self.button4 setImage:[UIImage imageNamed:@"BlackOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 2)
            {
                [self.button4 setImage:[UIImage imageNamed:@"BlueOctogon.png"] forState:UIControlStateNormal];
            }
        }
        if (helper == 4 || helper2 == 4 || helper3 == 4 || helper4 == 4)
        {
            helper5 = arc4random()%3;
            if (helper5 == 0)
            {
                [self.button5 setImage:[UIImage imageNamed:@"BrownOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 1)
            {
                [self.button5 setImage:[UIImage imageNamed:@"BlackOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 2)
            {
                [self.button5 setImage:[UIImage imageNamed:@"BlueOctogon.png"] forState:UIControlStateNormal];
            }
        }
        if (helper == 5 || helper2 == 5 || helper3 == 5 || helper4 == 5)
        {
            helper5 = arc4random()%3;
            if (helper5 == 0)
            {
                [self.button6 setImage:[UIImage imageNamed:@"BrownOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 1)
            {
                [self.button6 setImage:[UIImage imageNamed:@"BlackOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 2)
            {
                [self.button6 setImage:[UIImage imageNamed:@"BlueOctogon.png"] forState:UIControlStateNormal];
            }
        }
        if (helper == 6 || helper2 == 6 || helper3 == 6 || helper4 == 6)
        {
            helper5 = arc4random()%3;
            if (helper5 == 0)
            {
                [self.button7 setImage:[UIImage imageNamed:@"BrownOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 1)
            {
                [self.button7 setImage:[UIImage imageNamed:@"BlackOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 2)
            {
                [self.button7 setImage:[UIImage imageNamed:@"BlueOctogon.png"] forState:UIControlStateNormal];
            }
        }
        if (helper == 7 || helper2 == 7 || helper3 == 7 || helper4 == 7)
        {
            helper5 = arc4random()%3;
            if (helper5 == 0)
            {
                [self.button8 setImage:[UIImage imageNamed:@"BrownOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 1)
            {
                [self.button8 setImage:[UIImage imageNamed:@"BlackOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 2)
            {
                [self.button8 setImage:[UIImage imageNamed:@"BlueOctogon.png"] forState:UIControlStateNormal];
            }
        }
        if (helper == 8 || helper2 == 8 || helper3 == 8 || helper4 == 8)
        {
            helper5 = arc4random()%3;
            if (helper5 == 0)
            {
                [self.button9 setImage:[UIImage imageNamed:@"BrownOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 1)
            {
                [self.button9 setImage:[UIImage imageNamed:@"BlackOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 2)
            {
                [self.button9 setImage:[UIImage imageNamed:@"BlueOctogon.png"] forState:UIControlStateNormal];
            }
        }
        if (helper == 9 || helper2 == 9 || helper3 == 9 || helper4 == 9)
        {
            helper5 = arc4random()%3;
            if (helper5 == 0)
            {
                [self.button10 setImage:[UIImage imageNamed:@"BrownOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 1)
            {
                [self.button10 setImage:[UIImage imageNamed:@"BlackOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 2)
            {
                [self.button10 setImage:[UIImage imageNamed:@"BlueOctogon.png"] forState:UIControlStateNormal];
            }
        }
        if (helper == 10 || helper2 == 10 || helper3 == 10 || helper4 == 10)
        {
            helper5 = arc4random()%3;
            if (helper5 == 0)
            {
                [self.button11 setImage:[UIImage imageNamed:@"BrownOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 1)
            {
                [self.button11 setImage:[UIImage imageNamed:@"BlackOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 2)
            {
                [self.button11 setImage:[UIImage imageNamed:@"BlueOctogon.png"] forState:UIControlStateNormal];
            }
        }
        if (helper == 11 || helper2 == 11 || helper3 == 11 || helper4 == 11)
        {
            helper5 = arc4random()%3;
            if (helper5 == 0)
            {
                [self.button12 setImage:[UIImage imageNamed:@"BrownOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 1)
            {
                [self.button12 setImage:[UIImage imageNamed:@"BlackOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 2)
            {
                [self.button12 setImage:[UIImage imageNamed:@"BlueOctogon.png"] forState:UIControlStateNormal];
            }
        }
        if (helper == 12 || helper2 == 12 || helper3 == 12 || helper4 == 12)
        {
            helper5 = arc4random()%3;
            if (helper5 == 0)
            {
                [self.button13 setImage:[UIImage imageNamed:@"BrownOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 1)
            {
                [self.button13 setImage:[UIImage imageNamed:@"BlackOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 2)
            {
                [self.button13 setImage:[UIImage imageNamed:@"BlueOctogon.png"] forState:UIControlStateNormal];
            }
        }
        if (helper == 13 || helper2 == 13 || helper3 == 13 || helper4 == 13)
        {
            helper5 = arc4random()%3;
            if (helper5 == 0)
            {
                [self.button14 setImage:[UIImage imageNamed:@"BrownOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 1)
            {
                [self.button14 setImage:[UIImage imageNamed:@"BlackOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 2)
            {
                [self.button14 setImage:[UIImage imageNamed:@"BlueOctogon.png"] forState:UIControlStateNormal];
            }
        }
        if (helper == 14 || helper2 == 14 || helper3 == 14 || helper4 == 14)
        {
            helper5 = arc4random()%3;
            if (helper5 == 0)
            {
                [self.button15 setImage:[UIImage imageNamed:@"BrownOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 1)
            {
                [self.button15 setImage:[UIImage imageNamed:@"BlackOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 2)
            {
                [self.button15 setImage:[UIImage imageNamed:@"BlueOctogon.png"] forState:UIControlStateNormal];
            }
        }
        if (helper == 15 || helper2 == 15 || helper3 == 15 || helper4 == 15)
        {
            helper5 = arc4random()%3;
            if (helper5 == 0)
            {
                [self.button16 setImage:[UIImage imageNamed:@"BrownOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 1)
            {
                [self.button16 setImage:[UIImage imageNamed:@"BlackOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 2)
            {
                [self.button16 setImage:[UIImage imageNamed:@"BlueOctogon.png"] forState:UIControlStateNormal];
            }
        }
        if (helper == 16 || helper2 == 16 || helper3 == 16 || helper4 == 16)
        {
            helper5 = arc4random()%3;
            if (helper5 == 0)
            {
                [self.button17 setImage:[UIImage imageNamed:@"BrownOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 1)
            {
                [self.button17 setImage:[UIImage imageNamed:@"BlackOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 2)
            {
                [self.button17 setImage:[UIImage imageNamed:@"BlueOctogon.png"] forState:UIControlStateNormal];
            }
        }
        if (helper == 17 || helper2 == 17 || helper3 == 17 || helper4 == 17)
        {
            helper5 = arc4random()%3;
            if (helper5 == 0)
            {
                [self.button18 setImage:[UIImage imageNamed:@"BrownOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 1)
            {
                [self.button18 setImage:[UIImage imageNamed:@"BlackOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 2)
            {
                [self.button18 setImage:[UIImage imageNamed:@"BlueOctogon.png"] forState:UIControlStateNormal];
            }
        }
        if (helper == 18 || helper2 == 18 || helper3 == 18 || helper4 == 18)
        {
            helper5 = arc4random()%3;
            if (helper5 == 0)
            {
                [self.button19 setImage:[UIImage imageNamed:@"BrownOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 1)
            {
                [self.button19 setImage:[UIImage imageNamed:@"BlackOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 2)
            {
                [self.button19 setImage:[UIImage imageNamed:@"BlueOctogon.png"] forState:UIControlStateNormal];
            }
        }
        if (helper == 19 || helper2 == 19 || helper3 == 19 || helper4 == 19)
        {
            helper5 = arc4random()%3;
            if (helper5 == 0)
            {
                [self.button20 setImage:[UIImage imageNamed:@"BrownOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 1)
            {
                [self.button20 setImage:[UIImage imageNamed:@"BlackOctogon.png"] forState:UIControlStateNormal];
            }
            else if (helper5 == 2)
            {
                [self.button20 setImage:[UIImage imageNamed:@"BlueOctogon.png"] forState:UIControlStateNormal];
            }
        }
    }
}

-(void) returnButtons
{
    buttonPressed1 = buttonPressed2 = buttonPressed3 = buttonPressed4 = buttonPressed5 = buttonPressed6 = buttonPressed7 = buttonPressed8 = buttonPressed9 = buttonPressed10 = buttonPressed11 = buttonPressed12 = buttonPressed13 = buttonPressed14 = buttonPressed15 = buttonPressed16 = buttonPressed17 = buttonPressed18 = buttonPressed19 = buttonPressed20 = 0;
    [self.button1 setImage:[UIImage imageNamed:@"WhiteOctogon.png"] forState:UIControlStateNormal];
    [self.button2 setImage:[UIImage imageNamed:@"WhiteOctogon.png"] forState:UIControlStateNormal];
    [self.button3 setImage:[UIImage imageNamed:@"WhiteOctogon.png"] forState:UIControlStateNormal];
    [self.button4 setImage:[UIImage imageNamed:@"WhiteOctogon.png"] forState:UIControlStateNormal];
    [self.button5 setImage:[UIImage imageNamed:@"WhiteOctogon.png"] forState:UIControlStateNormal];
    [self.button6 setImage:[UIImage imageNamed:@"WhiteOctogon.png"] forState:UIControlStateNormal];
    [self.button7 setImage:[UIImage imageNamed:@"WhiteOctogon.png"] forState:UIControlStateNormal];
    [self.button8 setImage:[UIImage imageNamed:@"WhiteOctogon.png"] forState:UIControlStateNormal];
    if (level > 3)
    {
        [self.button9 setImage:[UIImage imageNamed:@"WhiteOctogon.png"] forState:UIControlStateNormal];
        [self.button10 setImage:[UIImage imageNamed:@"WhiteOctogon.png"] forState:UIControlStateNormal];
    }
    else
    {
        
    }
    if (level > 5)
    {
        [self.button11 setImage:[UIImage imageNamed:@"WhiteOctogon.png"] forState:UIControlStateNormal];
        [self.button12 setImage:[UIImage imageNamed:@"WhiteOctogon.png"] forState:UIControlStateNormal];
    }
    if (level > 7)
    {
        [self.button13 setImage:[UIImage imageNamed:@"WhiteOctogon.png"] forState:UIControlStateNormal];
        [self.button14 setImage:[UIImage imageNamed:@"WhiteOctogon.png"] forState:UIControlStateNormal];
        [self.button15 setImage:[UIImage imageNamed:@"WhiteOctogon.png"] forState:UIControlStateNormal];
        [self.button16 setImage:[UIImage imageNamed:@"WhiteOctogon.png"] forState:UIControlStateNormal];
    }
    if (level > 8)
    {
        [self.button19 setImage:[UIImage imageNamed:@"WhiteOctogon.png"] forState:UIControlStateNormal];
        [self.button20 setImage:[UIImage imageNamed:@"WhiteOctogon.png"] forState:UIControlStateNormal];
        [self.button17 setImage:[UIImage imageNamed:@"WhiteOctogon.png"] forState:UIControlStateNormal];
        [self.button18 setImage:[UIImage imageNamed:@"WhiteOctogon.png"] forState:UIControlStateNormal];
    }
}

-(void) AlertView
{
    UIAlertView *alertDialog;
    alertDialog = [[UIAlertView alloc]
                   initWithTitle:title
                   message:message
                   delegate:self
                   cancelButtonTitle:nil
                   otherButtonTitles:@"Next", nil];
    [alertDialog show];

}

-(void) AlertView2
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    totalHighScore = [userDefaults floatForKey:SCORE9];
    
    if (score > totalHighScore)
    {
        [userDefaults setFloat:score forKey:SCORE];
        [highScores alertOn];
        [self.view insertSubview:highScores.view atIndex:121];
    }
    else
    {
        UIAlertView *alertDialog;
        alertDialog = [[UIAlertView alloc]
                   initWithTitle:@"Great Game!"
                   message:@"Would You like to play again?"
                   delegate:self
                   cancelButtonTitle:nil
                   otherButtonTitles:@"Yes!", @"Go home", nil];
        [alertDialog show];
    }
    
}

-(void) alertView:(UIAlertView *)alertView
clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if ([buttonTitle isEqualToString:@"Go Home"])
    {
        [self.navigationController popToRootViewControllerAnimated:YES];
    }
    else if ([buttonTitle isEqualToString:@"Yes!"])
    {
        level = 3;
        assist = 0;
        [self startTimer];
    }
    if (round == 4)
    {
        [UIView animateWithDuration:2.0
                         animations:^{
                             gameView.transform = CGAffineTransformMakeRotation(0);//deg2rad * 90);
                         }];
        [UIView commitAnimations];
        [self stopTimer];
        assist = -4;
        [self startTimer];
    }
    else if (round == 5 || round == 6)
    {
        [UIView animateWithDuration:2.0
                         animations:^{
                             gameView.transform = CGAffineTransformMakeRotation(0);//deg2rad * 90);
                         }];
        [UIView commitAnimations];
        [self stopTimer];
        assist = -4;
        [self startTimer];
    }
    else
    {
        [self stopTimer];
        assist = 0;
        [self startTimer];
    }
}


-(void) determineCorrect:(NSInteger)helper
{
    if ([self aCorrectNumb:helper])
    {
        rightCounter++;
        if (helper == 0)
        {
            if (buttonPressed1 == 0)
            {
                [self.button1 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
                buttonPressed1 = 1;
                score += 5;
                self.ScoreLabel.text = [[NSString alloc] initWithFormat:@"%i", score];
            }
            else
            {
                rightCounter--;
            }
        }
        else if (helper == 1)
        {
            if (buttonPressed2 == 0)
            {
                [self.button2 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
                score += 5;
                self.ScoreLabel.text = [[NSString alloc] initWithFormat:@"%i", score];
                buttonPressed2 = 1;
            }
            else
            {
                rightCounter--;
            }
        }
        else if (helper == 2)
        {
            if (buttonPressed3 == 0)
            {
                [self.button3 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
                score += 5;
                self.ScoreLabel.text = [[NSString alloc] initWithFormat:@"%i", score];
                buttonPressed3 = 1;
            }
            else
            {
                rightCounter--;
            }
        }
        else if (helper == 3)
        {
            if (buttonPressed4 == 0)
            {
                [self.button4 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
                score += 5;
                self.ScoreLabel.text = [[NSString alloc] initWithFormat:@"%i", score];
                buttonPressed4 = 1;
            }
            else
            {
                rightCounter--;
            }
        }
        else if (helper == 4)
        {
            if (buttonPressed5 == 0)
            {
                [self.button5 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
                score += 5;
                self.ScoreLabel.text = [[NSString alloc] initWithFormat:@"%i", score];
                buttonPressed5 = 1;
            }
            else
            {
                rightCounter--;
            }
        }
        else if (helper == 5)
        {
            if (buttonPressed6 == 0)
            {
                [self.button6 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
                score += 5;
                self.ScoreLabel.text = [[NSString alloc] initWithFormat:@"%i", score];
                buttonPressed6 = 1;
            }
            else
            {
                rightCounter--;
            }
        }
        else if (helper == 6)
        {
            if (buttonPressed7 == 0)
            {
                [self.button7 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
                score += 5;
                self.ScoreLabel.text = [[NSString alloc] initWithFormat:@"%i", score];
                buttonPressed7 = 1;
            }
            else
            {
                rightCounter--;
            }
        }
        else if (helper == 7)
        {
            if (buttonPressed8 == 0)
            {
                [self.button8 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
                score += 5;
                self.ScoreLabel.text = [[NSString alloc] initWithFormat:@"%i", score];
                buttonPressed8 = 1;
            }
            else
            {
                rightCounter--;
            }
        }
        if (helper == 8)
        {
            if (buttonPressed9 == 0)
            {
                [self.button9 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
                score += 5;
                self.ScoreLabel.text = [[NSString alloc] initWithFormat:@"%i", score];
                buttonPressed9 = 1;
            }
            else
            {
                rightCounter--;
            }
        }
        if (helper == 9)
        {
            if (buttonPressed10 == 0)
            {
                [self.button10 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
                score += 5;
                self.ScoreLabel.text = [[NSString alloc] initWithFormat:@"%i", score];
                buttonPressed10 = 1;
            }
            else
            {
                rightCounter--;
            }
        }
        if (helper == 10)
        {
            if (buttonPressed11 == 0)
            {
                [self.button11 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
                score += 5;
                self.ScoreLabel.text = [[NSString alloc] initWithFormat:@"%i", score];
                buttonPressed11 = 1;
            }
            else
            {
                rightCounter--;
            }
        }
        if (helper == 11)
        {
            if (buttonPressed12 == 0)
            {
                [self.button12 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
                score += 5;
                self.ScoreLabel.text = [[NSString alloc] initWithFormat:@"%i", score];
                buttonPressed12 = 1;
            }
            else
            {
                rightCounter--;
            }
        }
        if (helper == 12)
        {
            if (buttonPressed13 == 0)
            {
                [self.button13 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
                score += 5;
                self.ScoreLabel.text = [[NSString alloc] initWithFormat:@"%i", score];
                buttonPressed13 = 1;
            }
            else
            {
                rightCounter--;
            }
        }
        if (helper == 13)
        {
            if (buttonPressed14 == 0)
            {
                [self.button14 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
                score += 5;
                self.ScoreLabel.text = [[NSString alloc] initWithFormat:@"%i", score];
                buttonPressed14 = 1;
            }
            else
            {
                rightCounter--;
            }
        }
        if (helper == 14)
        {
            if (buttonPressed15 == 0)
            {
                [self.button15 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
                score += 5;
                self.ScoreLabel.text = [[NSString alloc] initWithFormat:@"%i", score];
                buttonPressed15 = 1;
            }
            else
            {
                rightCounter--;
            }
        }
        if (helper == 15)
        {
            if (buttonPressed16 == 0)
            {
                [self.button16 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
                score += 5;
                self.ScoreLabel.text = [[NSString alloc] initWithFormat:@"%i", score];
                buttonPressed16 = 1;
            }
            else
            {
                rightCounter--;
            }
        }
        if (helper == 16)
        {
            if (buttonPressed17 == 0)
            {
                [self.button17 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
                score += 5;
                self.ScoreLabel.text = [[NSString alloc] initWithFormat:@"%i", score];
                buttonPressed17 = 1;
            }
            else
            {
                rightCounter--;
            }
        }
        if (helper == 17)
        {
            if (buttonPressed18 == 0)
            {
                [self.button18 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
                score += 5;
                self.ScoreLabel.text = [[NSString alloc] initWithFormat:@"%i", score];
                buttonPressed18 = 1;
            }
            else
            {
                rightCounter--;
            }
        }
        if (helper == 18)
        {
            if (buttonPressed19 == 0)
            {
                [self.button19 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
                score += 5;
                self.ScoreLabel.text = [[NSString alloc] initWithFormat:@"%i", score];
                buttonPressed19 = 1;
            }
            else
            {
                rightCounter--;
            }
        }
        if (helper == 19)
        {
            if (buttonPressed20 == 0)
            {
                [self.button20 setImage:[UIImage imageNamed:@"RedOctogon.png"] forState:UIControlStateNormal];
                score += 5;
                self.ScoreLabel.text = [[NSString alloc] initWithFormat:@"%i", score];
                buttonPressed20 = 1;
            }
            else
            {
                rightCounter--;
            }
        }
        if (rightCounter == level)
        {
            score += level*5;
            score += round*5;
            self.ScoreLabel.text = [[NSString alloc] initWithFormat:@"%i", score];
            title = @"Congrats!";
            message = @"You can advance to next Level";
            rightCounter = 0;
            [self AlertView];
            level++;
            if (level == 11)
            {
                round++;
                NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
                [userDefaults setInteger:round forKey:ROUND];
                level = 5;
            }
        }

    }
    else
    {
        //[self coverUpButtons];
        if (level > 3)
        {
            level--;
        }
        else if (round > 1)
        {
            round--;
            NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
            [userDefaults setInteger:round forKey:ROUND];
            level = 6;
        }
        
        if (numbWrong < 3)
        {
            title = @"Sad Panda";
            message = @"Better luck next time!";
            rightCounter = 0;
            [self AlertView];
            numbWrong++;
            self.LivesLabel.text = [[NSString alloc] initWithFormat:@"%i", (4-numbWrong)];
        }
        else
        {
            [self AlertView2];
        }
    }
}

-(void) coverUpButtons
{
    if (level < 4)
    {
        [button9 setImage:[UIImage imageNamed:@"Empty.png"] forState:UIControlStateNormal];
        [button10 setImage:[UIImage imageNamed:@"Empty.png"] forState:UIControlStateNormal];
    }
    if (level < 6)
    {
        [button11 setImage:[UIImage imageNamed:@"Empty.png"] forState:UIControlStateNormal];
        [button12 setImage:[UIImage imageNamed:@"Empty.png"] forState:UIControlStateNormal];
        //[button13 setImage:[UIImage imageNamed:@"Empty.png"] forState:UIControlStateNormal];
    }
    if (level < 8)
    {
        [button13 setImage:[UIImage imageNamed:@"Empty.png"] forState:UIControlStateNormal];
        [button14 setImage:[UIImage imageNamed:@"Empty.png"] forState:UIControlStateNormal];
        [button15 setImage:[UIImage imageNamed:@"Empty.png"] forState:UIControlStateNormal];
        [button16 setImage:[UIImage imageNamed:@"Empty.png"] forState:UIControlStateNormal];
    }
    if (level < 9)
    {
        [button17 setImage:[UIImage imageNamed:@"Empty.png"] forState:UIControlStateNormal];
        [button18 setImage:[UIImage imageNamed:@"Empty.png"] forState:UIControlStateNormal];
        [button19 setImage:[UIImage imageNamed:@"Empty.png"] forState:UIControlStateNormal];
        [button20 setImage:[UIImage imageNamed:@"Empty.png"] forState:UIControlStateNormal];
    }
}

-(IBAction)Button1:(id)sender
{
    if (assist > 30)
    {
        [self determineCorrect:0];
    }

}
-(IBAction)Button2:(id)sender
{
    if (assist > 30)
    {
        [self determineCorrect:1];
    }
}
-(IBAction)Button3:(id)sender
{
    if (assist > 30)
    {
        [self determineCorrect:2];
    }
}
-(IBAction)Button4:(id)sender
{
    if (assist > 30)
    {
        [self determineCorrect:3];
    }
}
-(IBAction)Button5:(id)sender
{
    if (assist > 30)
    {
        [self determineCorrect:4];
    }
}
-(IBAction)Button6:(id)sender
{
    if (assist > 30)
    {
        [self determineCorrect:5];
    }
}
-(IBAction)Button7:(id)sender
{
    if (assist > 30)
    {
        [self determineCorrect:6];
    }
}
-(IBAction)Button8:(id)sender
{
    if (assist > 30)
    {
        [self determineCorrect:7];
    }
}

-(IBAction)Button9:(id)sender
{
    if (level > 3)
    {
        [self determineCorrect:8];
    }
}

-(IBAction)Button10:(id)sender
{
    if (level > 3)
    {
        [self determineCorrect:9];
    }
}

-(IBAction)Button11:(id)sender
{
    if (level > 5)
    {
        [self determineCorrect:10];
    }
}

-(IBAction)Button12:(id)sender
{
    if (level > 5)
    {
        [self determineCorrect:11];
    }
}

-(IBAction)Button13:(id)sender
{
    if (level > 7)
    {
        [self determineCorrect:12];
    }
}

-(IBAction)Button14:(id)sender
{
    if (level > 7)
    {
        [self determineCorrect:13];
    }
}

-(IBAction)Button15:(id)sender
{
    if (level > 7)
    {
        [self determineCorrect:14];
    }
}

-(IBAction)Button16:(id)sender
{
    if (level > 7)
    {
        [self determineCorrect:15];
    }
}

-(IBAction)Button17:(id)sender
{
    if (level > 8)
    {
        [self determineCorrect:16];
    }
}

-(IBAction)Button18:(id)sender
{
    if (level > 8)
    {
        [self determineCorrect:17];
    }
}

-(IBAction)Button19:(id)sender
{
    if (level > 8)
    {
        [self determineCorrect:18];
    }
}

-(IBAction)Button20:(id)sender
{
    if (level > 8)
    {
        [self determineCorrect:19];
    }
}

-(IBAction)upRound:(id)sender
{
    round++;
    self.RoundLabel.text = [[NSString alloc] initWithFormat:@"%i", round];
}

-(IBAction)upLevel:(id)sender
{
    level++;
    self.LevelLabel.text = [[NSString alloc] initWithFormat:@"%i", level];
}

-(IBAction)StartTimer:(id)sender
{
    assist = 0;
    [self startTimer];
}

-(IBAction)loadInstructions:(id)sender
{
    InstructionViewController *instructionViewController = [[InstructionViewController alloc] init];
    self.navigationItem.title = @"Back";
    [instructionViewController lastView:12];
    [self.navigationController pushViewController:instructionViewController animated:YES];
}

- (void)viewDidLoad
{
    self.navigationItem.title = @"Game Time";
    numbWrong = 0;
    self.LivesLabel.text = [[NSString alloc] initWithFormat:@"%i", (4-numbWrong)];
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    savedRound = [userDefaults integerForKey:ROUND];
    if (savedRound < 1)
    {
        round = 1;
    }
    else
    {
        round = [userDefaults integerForKey:ROUND];
    }
    level = 3;
    score = 0;
    self.ScoreLabel.text = @"0";
    [button9 setImage:[UIImage imageNamed:@"Empty.png"] forState:UIControlStateNormal];
    [button10 setImage:[UIImage imageNamed:@"Empty.png"] forState:UIControlStateNormal];
    [button11 setImage:[UIImage imageNamed:@"Empty.png"] forState:UIControlStateNormal];
    [button12 setImage:[UIImage imageNamed:@"Empty.png"] forState:UIControlStateNormal];
    [button13 setImage:[UIImage imageNamed:@"Empty.png"] forState:UIControlStateNormal];
    [button14 setImage:[UIImage imageNamed:@"Empty.png"] forState:UIControlStateNormal];
    [button15 setImage:[UIImage imageNamed:@"Empty.png"] forState:UIControlStateNormal];
    [button16 setImage:[UIImage imageNamed:@"Empty.png"] forState:UIControlStateNormal];
    [button17 setImage:[UIImage imageNamed:@"Empty.png"] forState:UIControlStateNormal];
    [button18 setImage:[UIImage imageNamed:@"Empty.png"] forState:UIControlStateNormal];
    [button19 setImage:[UIImage imageNamed:@"Empty.png"] forState:UIControlStateNormal];
    [button20 setImage:[UIImage imageNamed:@"Empty.png"] forState:UIControlStateNormal];
    assist = 0;
    [self startTimer];
    //[self FlipViews];
    //[self.myButton setBackgroundImage:[UIImage imageNamed:@"myOddlyShapedImage"] forState:UIControlStateNormal];
    //[self.button1 setBackgroundImage:[UIImage imageNamed:@"OctogonWhite.png"] forState:UIControlStateNormal];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void) viewWillAppear:(BOOL)animated
{
    self.navigationItem.title = @"Game Time!";
    assist = 0;
    [self startTimer];
    [super viewWillAppear:YES];
    if (self.view.frame.size.height > 500.0)
    {
        CGRect buttonFrame = info.frame;
        buttonFrame.origin.y = 475.0;
        info.frame = buttonFrame;
    }
    else
    {
        CGRect buttonFrame = info.frame;
        buttonFrame.origin.y = 400.0;
        info.frame = buttonFrame;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
