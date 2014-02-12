//
//  GameViewController.m
//  BrainBuilderAttention
//
//  Created by Fred Kneeland on 8/29/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import "GameViewController.h"
#import "HighScoreViewController.h"
#import "ThirdInstructionViewController.h"

@interface GameViewController ()

@property (nonatomic, strong) IBOutlet UILabel *timerLabel;

@end

@implementation GameViewController
{
    //ADBannerView *_bannerView;
    NSTimer *_timer;
    CFTimeInterval _ticks;
}

@synthesize scoreLabel;
@synthesize image1, image2, image3, image4;
@synthesize image1Level2, image2Level2, image3Level2, image4Level2, image5Level2, image6Level2, image7Level2, image8Level2;
@synthesize north, northEast, northWest, east, west, south, southEast, southWest;
@synthesize blueArrow, orangeArrow;
@synthesize answerImage;
@synthesize highScores;

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
    double seconds = fmod(_ticks, 60.0);
    double minutes = fmod(trunc(_ticks / 60.0), 60.0);
    self.timerLabel.text = [NSString stringWithFormat:@"%02.0f:%04.1f", minutes, seconds];
    timeCounter += 1;
    timeCounter2 += .1;
    //timeCounter3 += .01;
    if (timeCounter > 500)
    {
        // end the game
        title = @"Nice Work";
        message = [[NSString alloc] initWithFormat:@"You got %i points!", score];
        [self AlertView];
    }
    if (timeCounter2 > .5)
    {
        answerImage.image = [UIImage imageNamed:@"Empty2.png"];
    }
    
    if ( timeCounter % 10 == 5 || timeCounter % 10 == 0)
    {
        [self distractArrows];
    }
}

-(void) AlertView
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
                   initWithTitle:title
                   message:message
                   delegate:self
                   cancelButtonTitle:nil
                   otherButtonTitles:@"Again", @"Go Home", nil];
        [alertDialog show];
        [self stopTimer];
    }
    
}

-(void) alertView:(UIAlertView *)alertView
clickedButtonAtIndex:(NSInteger)buttonIndex
{
    buttonTitle = [alertView buttonTitleAtIndex:buttonIndex];
    if ([buttonTitle isEqualToString:@"Go Home"])
    {
        [self.navigationController popToRootViewControllerAnimated:YES];
    }
    else if ([buttonTitle isEqualToString:@"Again"])
    {
        [self blankViews];
        answerImage.image = [UIImage imageNamed:@"Empty2.png"];
        level = level/2;
        timeCounter2 = 0;
        timeCounter = 0;
        _ticks = 0;
        [self startTimer];
        [self setUpArrows];
        score = 0;
        scoreLabel.text = @"0";
    }
}


-(void) distractArrows
{
    if (level > 5)
    {
        int random;
        int random2;
        random = arc4random()%4;
        randomNumb6 = arc4random()%4;
        if (random == 0)
        {
            if (randomNumb6 == 0)
            {
                orangeArrow = [UIImage imageNamed:@"rightOrangeArrow.png"];
            }
            else if (randomNumb6 == 1)
            {
                orangeArrow = [UIImage imageNamed:@"rightBrownArrow.png"];
            }
            else if (randomNumb6 == 2)
            {
                orangeArrow = [UIImage imageNamed:@"rightGreenArrow.png"];
            }
            else
            {
                orangeArrow = [UIImage imageNamed:@"rightWhiteArrow.png"];
            }
            
        }
        else if (random == 1)
        {
            if (randomNumb6 == 0)
            {
                orangeArrow = [UIImage imageNamed:@"LeftOrangeArrow.png"];
            }
            else if (randomNumb6 == 1)
            {
                orangeArrow = [UIImage imageNamed:@"leftBrownArrow.png"];
            }
            else if (randomNumb6 == 2)
            {
                orangeArrow = [UIImage imageNamed:@"LeftGreenArrow.png"];
            }
            else
            {
                orangeArrow = [UIImage imageNamed:@"leftWhiteArrow.png"];
            }
        }
        else if (random == 2)
        {
            if (randomNumb6 == 0)
            {
                orangeArrow = [UIImage imageNamed:@"downOrangeArrow.png"];
            }
            else if (randomNumb6 == 1)
            {
                orangeArrow = [UIImage imageNamed:@"downBrownArrow.png"];
            }
            else if (randomNumb6 == 2)
            {
                orangeArrow = [UIImage imageNamed:@"downGreenArrow.png"];
            }
            else
            {
                orangeArrow = [UIImage imageNamed:@"downWhiteArrow.png"];
            }
        }
        else
        {
            if (randomNumb6 == 0)
            {
                orangeArrow = [UIImage imageNamed:@"upOrangeArrow.png"];
            }
            else if (randomNumb6 == 1)
            {
                orangeArrow = [UIImage imageNamed:@"upBrownArrow.png"];
            }
            else if (randomNumb6 == 2)
            {
                orangeArrow = [UIImage imageNamed:@"upGreenArrow.png"];
            }
            else
            {
                orangeArrow = [UIImage imageNamed:@"upWhiteArrow.png"];
            }
        }
        
        random2 = arc4random()%12;
        while (random2 == randomNumb || random2 == randomNumb3 || random2 == randomNumb7 || random2 == randomNumb8)
        {
            random2 = arc4random()%12;
        }
        
        if (random2 == 0)
        {
            image1.image = orangeArrow;
        }
        else if (random2 == 1)
        {
            image2.image = orangeArrow;
        }
        else if (random2 == 2)
        {
            image3.image = orangeArrow;
        }
        else if (random2 == 3)
        {
            image4.image = orangeArrow;;
        }
        else if (random2 == 4)
        {
            image1Level2.image = orangeArrow;
        }
        else if (random2 == 5)
        {
            image2Level2.image = orangeArrow;
        }
        else if (random2 == 6)
        {
            image3Level2.image = orangeArrow;
        }
        else if (random2 == 7)
        {
            image4Level2.image = orangeArrow;
        }
        else if (random2 == 8)
        {
            image5Level2.image = orangeArrow;
        }
        else if (random2 == 9)
        {
            image6Level2.image = orangeArrow;
        }
        else if (random2 == 10)
        {
            image7Level2.image = orangeArrow;
        }
        else if (random2 == 11)
        {
            image8Level2.image = orangeArrow;
        }

    }
}

-(IBAction)North:(id)sender
{
    [self upDateScore:1];
}

-(IBAction)NorthEast:(id)sender
{
    [self upDateScore:2];
}

-(IBAction)NorthWest:(id)sender
{
    [self upDateScore:8];
}

-(IBAction)East:(id)sender
{
    [self upDateScore:3];
}

-(IBAction)West:(id)sender
{
    [self upDateScore:7];
}

-(IBAction)South:(id)sender
{
    [self upDateScore:5];
}

-(IBAction)SouthEast:(id)sender
{
    [self upDateScore:4];
}

-(IBAction)SouthWest:(id)sender
{
    [self upDateScore:6];
}

-(void) upDateScore:(NSInteger)index
{
    if (index == correctDir1 || index == correctDir2 || index == correctDir3)
    {
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        score += 5 * level;
        scoreLabel.text = [[NSString alloc] initWithFormat:@"%i", score];
        level++;
        [userDefaults setInteger:level forKey:LEVEL];
        answerImage.image = [UIImage imageNamed:@"GreenCheckMark.png"];
        timeCounter2 = 0;
    }
    else if (pinkDir > 0)
    {
    }
    else
    {
        if (level > 1)
        {
            level--;
        }
        timeCounter += 10;
        answerImage.image = [UIImage imageNamed:@"redX.png"];
        timeCounter2 = 0;
    }
    if ((index == pinkDir || index == pinkDir - 1 || index == pinkDir + 1) && pinkDir != 1)
    {
        timeCounter -= 100;
        //scoreLabel.text = @"Pink";
    }
    else if (pinkDir == 1 && (index == 8 || index == pinkDir || index == pinkDir + 1))
    {
        timeCounter -= 100;
        //scoreLabel.text = @"Pink";
    }
    [self setUpArrows];
}

-(void) setUpArrows
{
    [self blankViews];
    randomNumb7 = 0;
    pinkDir = -32;
        randomNumb = arc4random()%4;
        if (randomNumb == 0)
        {
            blueArrow = [UIImage imageNamed:@"LeftBlueArrow.png"];
            correctDir1 = 6;
            correctDir2 = 7;
            correctDir3 = 8;
        }
        else if (randomNumb == 1)
        {
            blueArrow = [UIImage imageNamed:@"UpBlueArrow.png"];
            correctDir1 = 8;
            correctDir2 = 1;
            correctDir3 = 2;
        }
        else if (randomNumb == 2)
        {
            blueArrow = [UIImage imageNamed:@"RightBlueArrow.png"];
            correctDir1 = 2;
            correctDir2 = 3;
            correctDir3 = 4;
        }
        else if (randomNumb == 3)
        {
            blueArrow = [UIImage imageNamed:@"DownBlueArrow.png"];
            correctDir1 = 4;
            correctDir2 = 5;
            correctDir3 = 6;
        }
    if (level > 25)
    {
        randomNumb = arc4random()%8;
        if (randomNumb == 0)
        {
            blueArrow = [UIImage imageNamed:@"TurnedLeftBlueArrow.png"];
            correctDir1 = 6;
            correctDir2 = 7;
            correctDir3 = 8;
        }
        else if (randomNumb == 1)
        {
            blueArrow = [UIImage imageNamed:@"TurnedUpBlueArrow.png"];
            correctDir1 = 8;
            correctDir2 = 1;
            correctDir3 = 2;
        }
        else if (randomNumb == 2)
        {
            blueArrow = [UIImage imageNamed:@"TurnedRightBlueArrow.png"];
            correctDir1 = 2;
            correctDir2 = 3;
            correctDir3 = 4;
        }
        else if (randomNumb == 3)
        {
            blueArrow = [UIImage imageNamed:@"TurnedDownBlueArrow.png"];
            correctDir1 = 4;
            correctDir2 = 5;
            correctDir3 = 6;
        }

    }
    
    ////////////////////////// Arrows at Angle ////////////////////////
    
    if (level > 40)
    {
        randomNumb2 = arc4random()%2;
        if (randomNumb2 == 0)
        {
            randomNumb = arc4random()%4;
            if (randomNumb == 0)
            {
                blueArrow = [UIImage imageNamed:@"NEBlueArrow.png"];
                correctDir1 = 2;
                correctDir2 = 2;
                correctDir3 = 2;
            }
            else if (randomNumb == 1)
            {
                blueArrow = [UIImage imageNamed:@"SEBlueArrow.png"];
                correctDir1 = 4;
                correctDir2 = 4;
                correctDir3 = 4;
            }
            else if (randomNumb == 2)
            {
                blueArrow = [UIImage imageNamed:@"NWBlueArrow.png"];
                correctDir1 = 8;
                correctDir2 = 8;
                correctDir3 = 8;
            }
            else if (randomNumb == 3)
            {
                blueArrow = [UIImage imageNamed:@"SWBlueArrow.png"];
                correctDir1 = 6;
                correctDir2 = 6;
                correctDir3 = 6;
            }
        }
    }
    if (level < 6)
    {
        randomNumb = arc4random()%4;
        randomNumb3 = randomNumb;
    }
    else //if (level < 15)
    {
        randomNumb = arc4random()%12;
        randomNumb3 = randomNumb;
    }
    [self assignBlueArrow];
    
    if (level > 10)
    {
        [self distractArrows];
    }
    if (level > 25)
    {
        [self distractArrows];
    }
    if (level > 45)
    {
        [self distractArrows];
    }
    if (level > 75)
    {
        [self distractArrows];
    }
    
    ///////////////////// Multiple Blue Arrows /////////////////////////
    if (level > 45)
    {
        randomNumb2 = arc4random()%2;
        if (randomNumb2 == 0)
        {
            [self blankViews];
            randomNumb = arc4random()%4;
            if (randomNumb == 0)
            {
                blueArrow = [UIImage imageNamed:@"LeftBlueArrow.png"];
                randomNumb = arc4random()%12;
                [self assignBlueArrow];
                [self determineDir];
                randomNumb3 = arc4random()%12;
                while (randomNumb3  == randomNumb)
                {
                    randomNumb3 = arc4random()%12;
                }
                while (direction == 3)
                {
                    [self determineDir];
                }
                randomNumb4 = randomNumb;
                randomNumb = randomNumb3;
                randomNumb3 = randomNumb4;
                [self assignBlueArrow];
                if (direction == 2)
                {
                    correctDir1 = 8;
                    correctDir2 = 8;
                    correctDir3 = 8;
                }
                else if (direction == 1)
                {
                    correctDir1 = 8;
                    correctDir2 = 7;
                    correctDir3 = 6;
                }
                else
                {
                    correctDir1 = 6;
                    correctDir2 = 6;
                    correctDir3 = 6;
                }
            }
            else if (randomNumb == 1)
            {
                blueArrow = [UIImage imageNamed:@"UpBlueArrow.png"];
                randomNumb = arc4random()%12;
                [self assignBlueArrow];
                [self determineDir];
                randomNumb3 = arc4random()%12;
                while (randomNumb3  == randomNumb)
                {
                    randomNumb3 = arc4random()%12;
                }
                while (direction == 4)
                {
                    [self determineDir];
                }
                randomNumb4 = randomNumb;
                randomNumb = randomNumb3;
                randomNumb3 = randomNumb4;
                [self assignBlueArrow];
                if (direction == 3)
                {
                    correctDir1 = 2;
                    correctDir2 = 2;
                    correctDir3 = 2;
                }
                else if (direction == 1)
                {
                    correctDir1 = 8;
                    correctDir2 = 8;
                    correctDir3 = 8;
                }
                else
                {
                    correctDir1 = 8;
                    correctDir2 = 1;
                    correctDir3 = 2;
                }

            }
            else if (randomNumb == 2)
            {
                blueArrow = [UIImage imageNamed:@"RightBlueArrow.png"];
                randomNumb = arc4random()%12;
                [self assignBlueArrow];
                [self determineDir];
                randomNumb3 = arc4random()%12;
                while (randomNumb3  == randomNumb)
                {
                    randomNumb3 = arc4random()%12;
                }
                while (direction == 1)
                {
                    [self determineDir];
                }
                randomNumb4 = randomNumb;
                randomNumb = randomNumb3;
                randomNumb3 = randomNumb4;
                [self assignBlueArrow];
                if (direction == 2)
                {
                    correctDir1 = 2;
                    correctDir2 = 2;
                    correctDir3 = 2;
                }
                else if (direction == 3)
                {
                    correctDir1 = 2;
                    correctDir2 = 3;
                    correctDir3 = 4;
                }
                else
                {
                    correctDir1 = 4;
                    correctDir2 = 4;
                    correctDir3 = 4;
                }

            }
            else if (randomNumb == 3)
            {
                blueArrow = [UIImage imageNamed:@"DownBlueArrow.png"];
                randomNumb = arc4random()%12;
                [self assignBlueArrow];
                [self determineDir];
                randomNumb3 = arc4random()%12;
                while (randomNumb3  == randomNumb)
                {
                    randomNumb3 = arc4random()%12;
                }
                while (direction == 2)
                {
                    [self determineDir];
                }
                randomNumb4 = randomNumb;
                randomNumb = randomNumb3;
                randomNumb3 = randomNumb4;
                [self assignBlueArrow];
                if (direction == 1)
                {
                    correctDir1 = 6;
                    correctDir2 = 6;
                    correctDir3 = 6;
                }
                else if (direction == 3)
                {
                    correctDir1 = 4;
                    correctDir2 = 4;
                    correctDir3 = 4;
                }
                else
                {
                    correctDir1 = 4;
                    correctDir2 = 5;
                    correctDir3 = 6;
                }
            }
        }
    }
    
    /////////// MULTIPLE BLUE ARROWS AT ANGLE /////////////////
    if (level > 70)
    {
        randomNumb2 = arc4random()%2;
        if (randomNumb2 == 0)
        {
            [self blankViews];
            randomNumb = arc4random()%4;
            
            ////////// NE Arrow /////////
            if (randomNumb == 0)
            {
                blueArrow = [UIImage imageNamed:@"NEBlueArrow.png"];
                direction2 = 0;
            }
            
            ///////// SE Arrow /////////
            else if (randomNumb == 1)
            {
                blueArrow = [UIImage imageNamed:@"SEBlueArrow.png"];
                direction2 = 1;
            }
            
            //////// SW Arrow /////////
            else if (randomNumb == 2)
            {
                blueArrow = [UIImage imageNamed:@"SWBlueArrow.png"];
                direction2 = 2;
            }
            
            ////////// NW Arrow ///////
            else
            {
                blueArrow = [UIImage imageNamed:@"NWBlueArrow.png"];
                direction2 = 3;
            }
            [self assignBlueArrow];
            randomNumb3 = arc4random()%12;
            while (randomNumb3  == randomNumb)
            {
                randomNumb3 = arc4random()%12;
            }
            direction = arc4random()%4;
            while (direction == (direction2 + 2) || (direction2 == (direction + 2)))
            {
                direction = arc4random()%4;
            }
            
            if (direction == 0)
            {
                blueArrow = [UIImage imageNamed:@"NEBlueArrow.png"];
                if (direction2 == 0)
                {
                    correctDir1 = correctDir2 = correctDir3 = 2;
                }
                else if (direction2 == 1)
                {
                    correctDir1 = correctDir2 = correctDir3 = 3;
                }
                else
                {
                    correctDir1 = correctDir2 = correctDir3 = 1;
                }
            }
            else if (direction == 1)
            {
                blueArrow = [UIImage imageNamed:@"SEBlueArrow.png"];
                if (direction2 == 0)
                {
                    correctDir1 = correctDir2 = correctDir3 = 3;
                }
                else if (direction2 == 1)
                {
                    correctDir1 = correctDir2 = correctDir3 = 4;
                }
                else if (direction2 == 2)
                {
                    correctDir1 = correctDir2 = correctDir3 = 5;
                }
            }
            else if (direction == 2)
            {
                blueArrow = [UIImage imageNamed:@"SWBlueArrow.png"];
                if (direction2 == 1)
                {
                    correctDir1 = correctDir2 = correctDir3 = 5;
                }
                else if (direction2 == 2)
                {
                    correctDir1 = correctDir2 = correctDir3 = 6;
                }
                else
                {
                    correctDir1 = correctDir2 = correctDir3 = 7;
                }
            }
            else
            {
                blueArrow = [UIImage imageNamed:@"NWBlueArrow.png"];
                if (direction2 == 0)
                {
                    correctDir1 = correctDir2 = correctDir3 = 1;
                }
                else if (direction2 == 2)
                {
                    correctDir1 = correctDir2 = correctDir3 = 7;
                }
                else
                {
                    correctDir1 = correctDir2 = correctDir3 = 8;
                }
            }
            
            
            randomNumb4 = randomNumb;
            randomNumb = randomNumb3;
            randomNumb3 = randomNumb4;
            [self assignBlueArrow];
        }
    }
    
    
    ///////////////// 3 Straight Arrows /////////////////////
    if (level > 90)
    {
        randomNumb2 = arc4random()%2;
        if (randomNumb2 == 0)
        {
            [self blankViews];
            [self determineDir];
            randomNumb = arc4random()%12;
            [self assignBlueArrow];
            
            //// opposite direction of first arrow 
            if (direction == 1)
            {
                blueArrow = [UIImage imageNamed:@"RightBlueArrow.png"];
            }
            else if (direction == 2)
            {
                blueArrow = [UIImage imageNamed:@"DownBlueArrow.png"];
            }
            else if (direction == 3)
            {
                blueArrow = [UIImage imageNamed:@"LeftBlueArrow.png"];
            }
            else
            {
                blueArrow = [UIImage imageNamed:@"UpBlueArrow.png"];
            }
            
            randomNumb3 = arc4random()%12;
            while (randomNumb3  == randomNumb)
            {
                randomNumb3 = arc4random()%12;
            }
            randomNumb4 = randomNumb;
            randomNumb = randomNumb3;
            randomNumb3 = randomNumb4;
            [self assignBlueArrow];
            
            [self determineDir];
            
            randomNumb8 = arc4random()%12;
            while (randomNumb8  == randomNumb || randomNumb8 == randomNumb3)
            {
                randomNumb8 = arc4random()%12;
            }
            randomNumb4 = randomNumb;
            randomNumb = randomNumb8;
            randomNumb8 = randomNumb4;
            [self assignBlueArrow];
            if (direction == 1)
            {
                correctDir1 = 8;
                correctDir2 = 7;
                correctDir3 = 6;
            }
            else if (direction == 2)
            {
                correctDir1 = 8;
                correctDir2 = 1;
                correctDir3 = 2;
            }
            else if (direction == 3)
            {
                correctDir1 = 2;
                correctDir2 = 3;
                correctDir3 = 4;
            }
            else
            {
                correctDir1 = 6;
                correctDir2 = 4;
                correctDir3 = 5;
            }
        }
    }
    
    
    ////////////////////// 3 Angled Arrows ////////////////////////
    if (level > 100)
    {
        randomNumb2 = arc4random()%2;
        if (randomNumb2 == 0)
        {
            [self blankViews];
            direction2 = arc4random()%4;
            
            if (direction2 == 0)
            {
                blueArrow = [UIImage imageNamed:@"NEBlueArrow.png"];
            }
            else if (direction2 == 1)
            {
                blueArrow = [UIImage imageNamed:@"SEBlueArrow.png"];
            }
            else if (direction2 == 2)
            {
                blueArrow = [UIImage imageNamed:@"SWBlueArrow.png"];
            }
            else
            {
                blueArrow = [UIImage imageNamed:@"NWBlueArrow.png"];
            }
            randomNumb = arc4random()%12;
            [self assignBlueArrow];
            
            if (direction2 == 0)
            {
                blueArrow = [UIImage imageNamed:@"SWBlueArrow.png"];
            }
            else if (direction2 == 1)
            {
                blueArrow = [UIImage imageNamed:@"NWBlueArrow.png"];
            }
            else if (direction2 == 2)
            {
                blueArrow = [UIImage imageNamed:@"NEBlueArrow.png"];
            }
            else
            {
                blueArrow = [UIImage imageNamed:@"SEBlueArrow.png"];
            }
            randomNumb3 = arc4random()%12;
            while (randomNumb3  == randomNumb)
            {
                randomNumb3 = arc4random()%12;
            }
            randomNumb4 = randomNumb;
            randomNumb = randomNumb3;
            randomNumb3 = randomNumb4;
            [self assignBlueArrow];
            
            direction2 = arc4random()%4;
            
            if (direction2 == 0)
            {
                blueArrow = [UIImage imageNamed:@"NEBlueArrow.png"];
                correctDir1 = correctDir2 = correctDir3 = 2;
            }
            else if (direction2 == 1)
            {
                blueArrow = [UIImage imageNamed:@"SEBlueArrow.png"];
                correctDir1 = correctDir2 = correctDir3 = 4;
            }
            else if (direction2 == 2)
            {
                blueArrow = [UIImage imageNamed:@"SWBlueArrow.png"];
                correctDir1 = correctDir2 = correctDir3 = 6;
            }
            else
            {
                blueArrow = [UIImage imageNamed:@"NWBlueArrow.png"];
                correctDir1 = correctDir2 = correctDir3 = 8;
            }
            
            randomNumb8 = arc4random()%12;
            while (randomNumb8  == randomNumb || randomNumb8 == randomNumb3)
            {
                randomNumb8 = arc4random()%12;
            }
            randomNumb4 = randomNumb;
            randomNumb = randomNumb8;
            randomNumb8 = randomNumb4;
            [self assignBlueArrow];
            
        }
    }
    
    
    ////////////////////// 3 different type arrows ////////////////////
    
    if (level > 120)
    {
        randomNumb2 = arc4random()%2;
        if (randomNumb2 == 0)
        {
            [self blankViews];
            [self determineDir];
            randomNumb = arc4random()%12;
            [self assignBlueArrow];
            
            if (direction == 1)
            {
                blueArrow = [UIImage imageNamed:@"TurnedRightBlueArrow.png"];
            }
            else if (direction == 2)
            {
                blueArrow = [UIImage imageNamed:@"TurnedDownBlueArrow.png"];
            }
            else if (direction == 3)
            {
                blueArrow = [UIImage imageNamed:@"TurnedLeftBlueArrow.png"];
            }
            else
            {
                blueArrow = [UIImage imageNamed:@"TurnedUpBlueArrow.png"];
            }
            randomNumb3 = arc4random()%12;
            while (randomNumb3  == randomNumb)
            {
                randomNumb3 = arc4random()%12;
            }
            randomNumb4 = randomNumb;
            randomNumb = randomNumb3;
            randomNumb3 = randomNumb4;
            [self assignBlueArrow];
            
            direction2 = arc4random()%4;
            
            if (direction2 == 0)
            {
                blueArrow = [UIImage imageNamed:@"NEBlueArrow.png"];
                correctDir1 = correctDir2 = correctDir3 = 2;
            }
            else if (direction2 == 1)
            {
                blueArrow = [UIImage imageNamed:@"SEBlueArrow.png"];
                correctDir1 = correctDir2 = correctDir3 = 4;
            }
            else if (direction2 == 2)
            {
                blueArrow = [UIImage imageNamed:@"SWBlueArrow.png"];
                correctDir1 = correctDir2 = correctDir3 = 6;
            }
            else
            {
                blueArrow = [UIImage imageNamed:@"NWBlueArrow.png"];
                correctDir1 = correctDir2 = correctDir3 = 8;
            }
            
            randomNumb8 = arc4random()%12;
            while (randomNumb8  == randomNumb || randomNumb8 == randomNumb3)
            {
                randomNumb8 = arc4random()%12;
            }
            randomNumb4 = randomNumb;
            randomNumb = randomNumb8;
            randomNumb8 = randomNumb4;
            [self assignBlueArrow];

        }
    }
    
    //////////////////// 2 Angle Arrows 1 Straight or Turned ////////////////////
    
    if (level > 135)
    {
        randomNumb2 = arc4random()%2;
        if (randomNumb2 == 0)
        {
            [self blankViews];
            if (randomNumb2 == 0)
            {
                [self blankViews];
                direction2 = arc4random()%4;
                
                if (direction2 == 0)
                {
                    blueArrow = [UIImage imageNamed:@"NEBlueArrow.png"];
                }
                else if (direction2 == 1)
                {
                    blueArrow = [UIImage imageNamed:@"SEBlueArrow.png"];
                }
                else if (direction2 == 2)
                {
                    blueArrow = [UIImage imageNamed:@"SWBlueArrow.png"];
                }
                else
                {
                    blueArrow = [UIImage imageNamed:@"NWBlueArrow.png"];
                }
                randomNumb = arc4random()%12;
                [self assignBlueArrow];
                
                if (direction2 == 0)
                {
                    blueArrow = [UIImage imageNamed:@"SWBlueArrow.png"];
                }
                else if (direction2 == 1)
                {
                    blueArrow = [UIImage imageNamed:@"NWBlueArrow.png"];
                }
                else if (direction2 == 2)
                {
                    blueArrow = [UIImage imageNamed:@"NEBlueArrow.png"];
                }
                else
                {
                    blueArrow = [UIImage imageNamed:@"SEBlueArrow.png"];
                }
                randomNumb3 = arc4random()%12;
                while (randomNumb3  == randomNumb)
                {
                    randomNumb3 = arc4random()%12;
                }
                randomNumb4 = randomNumb;
                randomNumb = randomNumb3;
                randomNumb3 = randomNumb4;
                [self assignBlueArrow];
                
                direction2 = arc4random()%4;
                randomNumb9 = arc4random()%2;
                if (randomNumb9 == 0)
                {
                    if (direction2 == 0)
                    {
                        blueArrow = [UIImage imageNamed:@"RightBlueArrow.png"];
                        correctDir1 = 3;
                        correctDir2 = 4;
                        correctDir3 = 2;
                    }
                    else if (direction2 == 1)
                    {
                        blueArrow = [UIImage imageNamed:@"DownBlueArrow.png"];
                        correctDir1 = 5;
                        correctDir2 = 6;
                        correctDir3 = 4;
                    }
                    else if (direction2 == 2)
                    {
                        blueArrow = [UIImage imageNamed:@"LeftBlueArrow.png"];
                        correctDir1 = 8;
                        correctDir2 = 7;
                        correctDir3 = 6;
                    }
                    else
                    {
                        blueArrow = [UIImage imageNamed:@"UpBlueArrow.png"];
                        correctDir1 = 1;
                        correctDir2 = 2;
                        correctDir3 = 8;
                    }
                }
                else
                {
                    if (direction2 == 0)
                    {
                        blueArrow = [UIImage imageNamed:@"TurnedRightBlueArrow.png"];
                        correctDir1 = 3;
                        correctDir2 = 4;
                        correctDir3 = 2;
                    }
                    else if (direction2 == 1)
                    {
                        blueArrow = [UIImage imageNamed:@"TurnedDownBlueArrow.png"];
                        correctDir1 = 5;
                        correctDir2 = 6;
                        correctDir3 = 4;
                    }
                    else if (direction2 == 2)
                    {
                        blueArrow = [UIImage imageNamed:@"TurnedLeftBlueArrow.png"];
                        correctDir1 = 8;
                        correctDir2 = 7;
                        correctDir3 = 6;
                    }
                    else
                    {
                        blueArrow = [UIImage imageNamed:@"TurnedUpBlueArrow.png"];
                        correctDir1 = 1;
                        correctDir2 = 2;
                        correctDir3 = 8;
                    }

                }
                
                randomNumb8 = arc4random()%12;
                while (randomNumb8  == randomNumb || randomNumb8 == randomNumb3)
                {
                    randomNumb8 = arc4random()%12;
                }
                randomNumb4 = randomNumb;
                randomNumb = randomNumb8;
                randomNumb8 = randomNumb4;
                [self assignBlueArrow];
            }
        }
    }
    
    ///////////////////// Pink Arrow Code /////////////////////////////
    
    randomNumb7 = arc4random()%40;
    if (randomNumb7 == 0)
    {
        randomNumb5 = arc4random()%4;
        if (randomNumb5 == 0)
        {
            blueArrow = [UIImage imageNamed:@"leftPinkArrow.png"];
            pinkDir = 7;
        }
        else if (randomNumb5 == 1)
        {
            blueArrow = [UIImage imageNamed:@"upPinkArrow.png"];
            pinkDir = 1;
        }
        else if (randomNumb5 == 2)
        {
            blueArrow = [UIImage imageNamed:@"rightPinkArrow.png"];
            pinkDir = 3;
        }
        else if (randomNumb5 == 3)
        {
            blueArrow = [UIImage imageNamed:@"downPinkArrow.png"];
            pinkDir = 5;
        }
        randomNumb7 = arc4random()%12;
        randomNumb4 = randomNumb;
        randomNumb = randomNumb7;
        randomNumb7 = randomNumb4;
        [self assignBlueArrow];
    }
    else
    {
        pinkDir = -32;
    }
}

-(void) determineDir
{
    randomNumb5 = arc4random()%4;
    if (randomNumb5 == 0)
    {
        blueArrow = [UIImage imageNamed:@"LeftBlueArrow.png"];
        direction = 1;
    }
    else if (randomNumb5 == 1)
    {
        blueArrow = [UIImage imageNamed:@"UpBlueArrow.png"];
        direction = 2;
    }
    else if (randomNumb5 == 2)
    {
        blueArrow = [UIImage imageNamed:@"RightBlueArrow.png"];
        direction = 3;
    }
    else if (randomNumb5 == 3)
    {
        blueArrow = [UIImage imageNamed:@"DownBlueArrow.png"];
        direction = 4;
    }

}

-(IBAction) loadInstructionPage:(id)sender
{
    ThirdInstructionViewController *instructionViewController = [[ThirdInstructionViewController alloc] init];
    self.navigationItem.title = @"Back";
    [self.navigationController pushViewController:instructionViewController animated:YES];

}

-(void) assignBlueArrow
{
    if (randomNumb == 0)
    {
        image1.image = blueArrow;
    }
    else if (randomNumb == 1)
    {
        image2.image = blueArrow;
    }
    else if (randomNumb == 2)
    {
        image3.image = blueArrow;
    }
    else if (randomNumb == 3)
    {
        image4.image = blueArrow;;
    }
    else if (randomNumb == 4)
    {
        image1Level2.image = blueArrow;
    }
    else if (randomNumb == 5)
    {
        image2Level2.image = blueArrow;
    }
    else if (randomNumb == 6)
    {
        image3Level2.image = blueArrow;
    }
    else if (randomNumb == 7)
    {
        image4Level2.image = blueArrow;
    }
    else if (randomNumb == 8)
    {
        image5Level2.image = blueArrow;
    }
    else if (randomNumb == 9)
    {
        image6Level2.image = blueArrow;
    }
    else if (randomNumb == 10)
    {
        image7Level2.image = blueArrow;
    }
    else if (randomNumb == 11)
    {
        image8Level2.image = blueArrow;
    }

}

-(void) blankViews
{
    image1.image = [UIImage imageNamed:@"Empty2.png"];
    image2.image = [UIImage imageNamed:@"Empty2.png"];
    image3.image = [UIImage imageNamed:@"Empty2.png"];
    image4.image = [UIImage imageNamed:@"Empty2.png"];
    image1Level2.image = [UIImage imageNamed:@"Empty2.png"];
    image2Level2.image = [UIImage imageNamed:@"Empty2.png"];
    image3Level2.image = [UIImage imageNamed:@"Empty2.png"];
    image4Level2.image = [UIImage imageNamed:@"Empty2.png"];
    image5Level2.image = [UIImage imageNamed:@"Empty2.png"];
    image6Level2.image = [UIImage imageNamed:@"Empty2.png"];
    image7Level2.image = [UIImage imageNamed:@"Empty2.png"];
    image8Level2.image = [UIImage imageNamed:@"Empty2.png"];
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    int helper;
    helper = [userDefaults integerForKey:STARTLEVEL];
    if (helper == 2)
    {
        level = 50;
    }
    else if (helper == 3)
    {
        level = 100;
    }
    else
    {
        level = 1;
    }
    timeCounter2 = 0;
    timeCounter3 = 0;
    [self setUpArrows];
    
    scoreLabel.text = @"0";
    [self startTimer];
    self.navigationItem.title = @"Game Time!";
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void) viewWillAppear:(BOOL)animated
{
    self.navigationItem.title = @"Game Time!";
    [self startTimer];
    [super viewWillAppear:YES];
}

-(void) viewDidDisappear:(BOOL)animated
{
    [self stopTimer];
    [super viewDidDisappear:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
