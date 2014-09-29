//
//  GameViewController.m
//  BrainBuilderCity
//
//  Created by Fred Kneeland on 4/26/14.
//  Copyright (c) 2014 Fred Kneeland. All rights reserved.
//

#import "GameViewController.h"
#import "HighScoresViewController.h"

@interface GameViewController ()

@end

@implementation GameViewController
{
    CFTimeInterval _ticks;
    NSTimer *_timer;
}
@synthesize output;
@synthesize label1, label10, label11, label12, label13, label14, label15, label16, label17, label18, label19, label2, label20, label3, label4, label5, label6, label7, label8, label9, levelLabel;
@synthesize highScores;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        // Custom initialization
    }
    return self;
}


-(void) animate:(NSTimer *)timer
{
    counter++;
    if (counter - 10 > timeOfLastLoss)
    {
        self.view.backgroundColor = [UIColor whiteColor];
    }
    int fallAmount = 0;
    int fastFallAmount = 5;
    int waitTillGo = 20;
    switch (level)
    {
        case 1:
            fallAmount = 0;
            waitTillGo = 15;
            break;
        case 2:
            fallAmount = -0.2;
            waitTillGo = 13;
            break;
        case 3:
            fallAmount = -0.4;
            waitTillGo = 13;
            break;
        case 4:
            fallAmount = -0.6;
            waitTillGo = 13;
            break;
        case 5:
            fallAmount = -0.8;
            waitTillGo = 11;
            break;
        case 6:
            fallAmount = -0.8;
            waitTillGo = 10;
            break;
        case 7:
            fallAmount = -1;
            waitTillGo = 10;
            break;
        case 8:
            fallAmount = -1.2;
            waitTillGo = 9;
            break;
        case 9:
            fallAmount = -1.4;
            waitTillGo = 8;
            break;
        case 10:
            fallAmount = -1.6;
            waitTillGo = 8;
            break;
        case 11:
            fallAmount = -1.7;
            waitTillGo = 8;
            break;
        case 12:
            fallAmount = -1.8;
            waitTillGo = 8;
            break;
        case 13:
            fallAmount = -1.8;
            waitTillGo = 7;
            break;
        case 14:
            fallAmount = -1.9;
            waitTillGo = 7;
            break;
        case 15:
            fallAmount = -2;
            waitTillGo = 7;
            break;
        case 16:
            fallAmount = -1.9;
            waitTillGo = 6;
            break;
        case 17:
            fallAmount = -2;
            waitTillGo = 6;
            break;
        default:
            fallAmount = -2.1;
            waitTillGo = 6;
            break;
    }
    
    if (counter % waitTillGo == 0 && counter > 0)
    {
        levelLabel.text = [[NSString alloc] initWithFormat:@"%i", level];
        [self upDate];
    }
    
    for (int i = 0; i < 20; i++)
    {
        int pos = 0;
        if (!([answers[i] isEqualToString:@""]))
        {
            if (i == 0)
            {
                [UILabel animateWithDuration:0.1
                                  animations:^{
                                        label1.transform = CGAffineTransformMakeTranslation(0, ABS(label1.frame.origin.y - fallAmount));
                                  }];
                [UILabel commitAnimations];
                pos = label1.frame.origin.y;
            }
            else if (i == 1)
            {
                    [UILabel animateWithDuration:0.1
                                      animations:^{
                                          label2.transform = CGAffineTransformMakeTranslation(0, label2.frame.origin.y - fallAmount);
                                      }];
                    [UILabel commitAnimations];
                pos = label2.frame.origin.y;
            }
            else if (i == 2)
            {
                    [UILabel animateWithDuration:0.1
                                      animations:^{
                                          label3.transform = CGAffineTransformMakeTranslation(0, label3.frame.origin.y - fallAmount);
                                      }];
                    [UILabel commitAnimations];
                pos = label3.frame.origin.y;
            }
            else if (i == 3)
            {
                    [UILabel animateWithDuration:0.1
                                      animations:^{
                                          label4.transform = CGAffineTransformMakeTranslation(0, label4.frame.origin.y - fallAmount);
                                      }];
                    [UILabel commitAnimations];
                pos = label4.frame.origin.y;
            }
            else if (i == 4)
            {
                    [UILabel animateWithDuration:0.1
                                      animations:^{
                                          label5.transform = CGAffineTransformMakeTranslation(0, label5.frame.origin.y - fallAmount);
                                      }];
                    [UILabel commitAnimations];
                pos = label5.frame.origin.y;
            }
            else if (i == 5)
            {
                    [UILabel animateWithDuration:0.1
                                      animations:^{
                                          label6.transform = CGAffineTransformMakeTranslation(0, label6.frame.origin.y - fallAmount);
                                      }];
                    [UILabel commitAnimations];
                pos = label6.frame.origin.y;
            }
            else if (i == 6)
            {
                    [UILabel animateWithDuration:0.1
                                      animations:^{
                                          label7.transform = CGAffineTransformMakeTranslation(0, label7.frame.origin.y - fallAmount);
                                      }];
                    [UILabel commitAnimations];
                pos = label7.frame.origin.y;
            }
            else if (i == 7)
            {
                    [UILabel animateWithDuration:0.1
                                      animations:^{
                                          label8.transform = CGAffineTransformMakeTranslation(0, label8.frame.origin.y - fallAmount);
                                      }];
                    [UILabel commitAnimations];
                pos = label8.frame.origin.y;
            }
            else if (i == 8)
            {
                    [UILabel animateWithDuration:0.1
                                      animations:^{
                                          label9.transform = CGAffineTransformMakeTranslation(0, label9.frame.origin.y - fallAmount);
                                      }];
                    [UILabel commitAnimations];
                pos = label9.frame.origin.y;
            }
            else if (i == 9)
            {
                    [UILabel animateWithDuration:0.1
                                      animations:^{
                                          label10.transform = CGAffineTransformMakeTranslation(0, label10.frame.origin.y - fallAmount);
                                      }];
                    [UILabel commitAnimations];
                pos = label10.frame.origin.y;
            }
            else if (i == 10)
            {
                    [UILabel animateWithDuration:0.1
                                      animations:^{
                                          label11.transform = CGAffineTransformMakeTranslation(0, label11.frame.origin.y - fallAmount);
                                      }];
                    [UILabel commitAnimations];
                pos = label11.frame.origin.y;
            }
            else if (i == 11)
            {
                    [UILabel animateWithDuration:0.1
                                      animations:^{
                                          label12.transform = CGAffineTransformMakeTranslation(0, label12.frame.origin.y - fallAmount);
                                      }];
                    [UILabel commitAnimations];
                pos = label12.frame.origin.y;
            }
            else if (i == 12)
            {
                    [UILabel animateWithDuration:0.1
                                      animations:^{
                                          label13.transform = CGAffineTransformMakeTranslation(0, label13.frame.origin.y - fallAmount);
                                      }];
                    [UILabel commitAnimations];
                pos = label13.frame.origin.y;
            }
            else if (i == 13)
            {
                    [UILabel animateWithDuration:0.1
                                      animations:^{
                                          label14.transform = CGAffineTransformMakeTranslation(0, label14.frame.origin.y - fallAmount);
                                      }];
                    [UILabel commitAnimations];
                pos = label14.frame.origin.y;
            }
            else if (i == 14)
            {
                    [UILabel animateWithDuration:0.1
                                      animations:^{
                                          label15.transform = CGAffineTransformMakeTranslation(0, label15.frame.origin.y - fallAmount);
                                      }];
                    [UILabel commitAnimations];
                pos = label15.frame.origin.y;
            }
            else if (i == 15)
            {
                    [UILabel animateWithDuration:0.1
                                      animations:^{
                                          label16.transform = CGAffineTransformMakeTranslation(0, label16.frame.origin.y - fallAmount);
                                      }];
                    [UILabel commitAnimations];
                pos = label16.frame.origin.y;
            }
            else if (i == 16)
            {
                    [UILabel animateWithDuration:0.1
                                      animations:^{
                                          label17.transform = CGAffineTransformMakeTranslation(0, label17.frame.origin.y - fallAmount);
                                      }];
                    [UILabel commitAnimations];
                pos = label17.frame.origin.y;
            }
            else if (i == 17)
            {
                    [UILabel animateWithDuration:0.1
                                      animations:^{
                                          label18.transform = CGAffineTransformMakeTranslation(0, label18.frame.origin.y - fallAmount);
                                      }];
                    [UILabel commitAnimations];
                pos = label18.frame.origin.y;
            }
            else if (i == 18)
            {
                    [UILabel animateWithDuration:0.1
                                      animations:^{
                                          label19.transform = CGAffineTransformMakeTranslation(0, label19.frame.origin.y - fallAmount);
                                      }];
                    [UILabel commitAnimations];
                pos = label19.frame.origin.y;
            }
            else if (i == 19)
            {
                    [UILabel animateWithDuration:0.1
                                      animations:^{
                                          label20.transform = CGAffineTransformMakeTranslation(0, label20.frame.origin.y - fallAmount);
                                      }];
                    [UILabel commitAnimations];
                pos = label20.frame.origin.y;
            }
            
            if (pos > 300)
            {
                self.view.backgroundColor = [UIColor redColor];
                counter = -5;
                lives--;
                for (int j = 0; j < 20; j++)
                {
                    answers[j] = @"";
                }
                
                label1.text = @"";
                label2.text = @"";
                label3.text = @"";
                label4.text = @"";
                label5.text = @"";
                label6.text = @"";
                label7.text = @"";
                label8.text = @"";
                label9.text = @"";
                label10.text = @"";
                label11.text = @"";
                label12.text = @"";
                label13.text = @"";
                label14.text = @"";
                label15.text = @"";
                label16.text = @"";
                label17.text = @"";
                label18.text = @"";
                label19.text = @"";
                label20.text = @"";
                timeOfLastLoss = counter;
                level--;
                level--;
                if (level < 1)
                {
                    level = 1;
                }
                output.text = @"";
                workingSolution = @"";
                if (lives < 1)
                {
                    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
                    
                    totalHighScore = [userDefaults floatForKey:SCORE9];
                    
                    if (score > totalHighScore)
                    {
                        [self animateStop];
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
            }
        }
    }
}

-(void) animateStart
{
    if (_timer == nil) {
        counter = 0;
        _timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(animate:) userInfo:nil repeats:YES];
    }
}

-(void) animateStop
{
    counter = 0;
    [_timer invalidate];
    _timer = nil;
}

-(void) alertView:(UIAlertView *)alertView
clickedButtonAtIndex:(NSInteger)buttonIndex
{
    buttonTitle = [alertView buttonTitleAtIndex:buttonIndex];
    if ([buttonTitle isEqualToString:@"Go home"])
    {
        [self.navigationController popToRootViewControllerAnimated:YES];
    }
    else if ([buttonTitle isEqualToString:@"Yes!"])
    {
        self.view.backgroundColor = [UIColor whiteColor];
        [self animateStop];
        [self initialize];
        [self upDate];
        output.text = @"";
        workingSolution = @"";
        [self animateStart];
    }
    else
    {
        NSLog(@"Hello World");
    }
}


-(void) buttonPressed
{
    Boolean answer = false;
    Boolean stay = false;
    
    NSString *string1 = [[NSString alloc] initWithFormat:@"%@1", output.text];
    NSString *string2 = [[NSString alloc] initWithFormat:@"%@2", output.text];
    NSString *string3 = [[NSString alloc] initWithFormat:@"%@3", output.text];
    NSString *string4 = [[NSString alloc] initWithFormat:@"%@4", output.text];
    NSString *string5 = [[NSString alloc] initWithFormat:@"%@5", output.text];
    NSString *string6 = [[NSString alloc] initWithFormat:@"%@6", output.text];
    NSString *string7 = [[NSString alloc] initWithFormat:@"%@7", output.text];
    NSString *string8 = [[NSString alloc] initWithFormat:@"%@8", output.text];
    NSString *string9 = [[NSString alloc] initWithFormat:@"%@9", output.text];
    NSString *string0 = [[NSString alloc] initWithFormat:@"%@0", output.text];
    
    for (int i = 0; i < 20; i++)
    {
        if ([answers[i] isEqualToString:output.text])
        {
            answer = true;
            answers[i] = @"";
            score += 5 * level;
            correctInARow++;
            if (correctInARow % 10 == 0)
            {
                level++;
            }
            
            switch (i) {
                case 0:
                    label1.text = @"";
                    break;
                case 1:
                    label2.text = @"";
                    break;
                case 2:
                    label3.text = @"";
                    break;
                case 3:
                    label4.text = @"";
                    break;
                case 4:
                    label5.text = @"";
                    break;
                case 5:
                    label6.text = @"";
                    break;
                case 6:
                    label7.text = @"";
                    break;
                case 7:
                    label8.text = @"";
                    break;
                case 8:
                    label9.text = @"";
                    break;
                case 9:
                    label10.text = @"";
                    break;
                case 10:
                    label11.text = @"";
                    break;
                case 11:
                    label12.text = @"";
                    break;
                case 12:
                    label13.text = @"";
                    break;
                case 13:
                    label14.text = @"";
                    break;
                case 14:
                    label15.text = @"";
                    break;
                case 15:
                    label16.text = @"";
                    break;
                case 16:
                    label17.text = @"";
                    break;
                case 17:
                    label18.text = @"";
                    break;
                case 18:
                    label19.text = @"";
                    break;
                case 19:
                    label20.text = @"";
                    break;
                    
                default:
                    break;
            }
        }
        else if ([answers[i] isEqualToString:string1])
        {
            stay = true;
        }
        else if ([answers[i] isEqualToString:string2])
        {
            stay = true;
        }
        else if ([answers[i] isEqualToString:string3])
        {
            stay = true;
        }
        else if ([answers[i] isEqualToString:string4])
        {
            stay = true;
        }
        else if ([answers[i] isEqualToString:string5])
        {
            stay = true;
        }
        else if ([answers[i] isEqualToString:string6])
        {
            stay = true;
        }
        else if ([answers[i] isEqualToString:string7])
        {
            stay = true;
        }
        else if ([answers[i] isEqualToString:string8])
        {
            stay = true;
        }
        else if ([answers[i] isEqualToString:string9])
        {
            stay = true;
        }
        else if ([answers[i] isEqualToString:string0])
        {
            stay = true;
        }
    }
    
    
    if (answer && !stay)
    {
        output.text = @"";
        workingSolution = @"";
    }
    
}

-(void) initialize
{
    correctInARow = 0;
    level = 1;
    score = 0;
    
    for (int i = 0; i < 20; i++)
    {
        answers[i] = @"";
    }
    currentAnswer = 0;
    lives = 3;
    timeOfLastLoss = 0;
}

-(NSString *) getNewLabel
{
    NSString *label;
    int numb1;
    int numb2;
    int symNumb;
    char symbol;
    int sum = 0;
    
    switch (level)
    {
        case 1:
            numb1 = arc4random()%5 + 1;
            numb2 = arc4random()%5 + 1;
            symNumb = arc4random()%2;
            
            switch (symNumb)
            {
                case 0:
                    symbol = '+';
                    sum = numb1 + numb2;
                    break;
                case 1:
                    symbol = '-';
                    if (numb2 > numb1)
                    {
                        int temp = numb1;
                        numb1 = numb2;
                        numb2 = temp;
                    }
                    sum = numb1 - numb2;
                    break;
            }
            label = [[NSString alloc] initWithFormat:@"%i %c %i", numb1, symbol, numb2];
            break;
        case 2:
            numb1 = arc4random()%7 + 1;
            numb2 = arc4random()%7 + 1;
            symNumb = arc4random()%2;
            
            switch (symNumb)
            {
                case 0:
                    symbol = '+';
                    sum = numb1 + numb2;
                    break;
                case 1:
                    symbol = '-';
                    if (numb2 > numb1)
                    {
                        int temp = numb1;
                        numb1 = numb2;
                        numb2 = temp;
                    }
                    sum = numb1 - numb2;
                    break;
            }
            label = [[NSString alloc] initWithFormat:@"%i %c %i", numb1, symbol, numb2];

            break;
        case 3:
            numb1 = arc4random()%7 + 1;
            numb2 = arc4random()%7 + 1;
            symNumb = arc4random()%2;
            
            switch (symNumb)
            {
                case 0:
                    symbol = '+';
                    sum = numb1 + numb2;
                    break;
                case 1:
                    symbol = '-';
                    if (numb2 > numb1)
                    {
                        int temp = numb1;
                        numb1 = numb2;
                        numb2 = temp;
                    }
                    sum = numb1 - numb2;
                    break;
            }
            label = [[NSString alloc] initWithFormat:@"%i %c %i", numb1, symbol, numb2];
            
            break;
        case 4:
            numb1 = arc4random()%7 + 1;
            numb2 = arc4random()%7 + 1;
            symNumb = arc4random()%2;
            
            switch (symNumb)
            {
                case 0:
                    symbol = '+';
                    sum = numb1 + numb2;
                    break;
                case 1:
                    symbol = '-';
                    if (numb2 > numb1)
                    {
                        int temp = numb1;
                        numb1 = numb2;
                        numb2 = temp;
                    }
                    sum = numb1 - numb2;
                    break;
            }
            label = [[NSString alloc] initWithFormat:@"%i %c %i", numb1, symbol, numb2];
            
            break;
        case 5:
            numb1 = arc4random()%7 + 1;
            numb2 = arc4random()%7 + 1;
            symNumb = arc4random()%2;
            
            switch (symNumb)
            {
                case 0:
                    symbol = '+';
                    sum = numb1 + numb2;
                    break;
                case 1:
                    symbol = '-';
                    if (numb2 > numb1)
                    {
                        int temp = numb1;
                        numb1 = numb2;
                        numb2 = temp;
                    }
                    sum = numb1 - numb2;
                    break;
            }
            label = [[NSString alloc] initWithFormat:@"%i %c %i", numb1, symbol, numb2];
            
            break;
        case 6:
            numb1 = arc4random()%7 + 1;
            numb2 = arc4random()%7 + 1;
            symNumb = arc4random()%3;
            
            switch (symNumb)
            {
                case 0:
                    symbol = '+';
                    sum = numb1 + numb2;
                    break;
                case 1:
                    symbol = '-';
                    if (numb2 > numb1)
                    {
                        int temp = numb1;
                        numb1 = numb2;
                        numb2 = temp;
                    }
                    sum = numb1 - numb2;
                    break;
                case 2:
                    symbol = 'x';
                    sum = numb1 * numb2;
                    break;
            }
            label = [[NSString alloc] initWithFormat:@"%i %c %i", numb1, symbol, numb2];

            break;
        case 7:
            numb1 = arc4random()%10 + 1;
            numb2 = arc4random()%10 + 1;
            symNumb = arc4random()%4;
            
            switch (symNumb)
            {
                case 0:
                    symbol = '+';
                    sum = numb1 + numb2;
                    break;
                case 1:
                    symbol = '-';
                    if (numb2 > numb1)
                    {
                        int temp = numb1;
                        numb1 = numb2;
                        numb2 = temp;
                    }
                    sum = numb1 - numb2;
                    break;
                case 2:
                    symbol = 'x';
                    sum = numb1 * numb2;
                    break;
                case 3:
                    symbol = '/';
                    if (numb2 > numb1)
                    {
                        int temp = numb1;
                        numb1 = numb2;
                        numb2 = temp;
                    }
                    sum = numb1 / numb2;
                    while (sum * numb2 != numb1)
                    {
                        numb1++;
                        sum = numb1 / numb2;
                    }
            }
            label = [[NSString alloc] initWithFormat:@"%i %c %i", numb1, symbol, numb2];
            break;
        case 8:
            numb1 = arc4random()%11 + 1;
            numb2 = arc4random()%10 + 1;
            symNumb = arc4random()%2;
            
            switch (symNumb)
            {
                case 0:
                    symbol = '+';
                    sum = numb1 + numb2;
                    break;
                case 1:
                    symbol = '-';
                    if (numb2 > numb1)
                    {
                        int temp = numb1;
                        numb1 = numb2;
                        numb2 = temp;
                    }
                    sum = numb1 - numb2;
                    break;
                case 2:
                    symbol = 'x';
                    sum = numb1 * numb2;
                    break;
                case 3:
                    symbol = '/';
                    if (numb2 > numb1)
                    {
                        int temp = numb1;
                        numb1 = numb2;
                        numb2 = temp;
                    }
                    sum = numb1 / numb2;
                    while (sum * numb2 != numb1)
                    {
                        numb1++;
                        sum = numb1 / numb2;
                    }
            }
            label = [[NSString alloc] initWithFormat:@"%i %c %i", numb1, symbol, numb2];
            break;
        case 9:
            numb1 = arc4random()%12 + 1;
            numb2 = arc4random()%10 + 1;
            symNumb = arc4random()%2;
            
            switch (symNumb)
            {
                case 0:
                    symbol = '+';
                    sum = numb1 + numb2;
                    break;
                case 1:
                    symbol = '-';
                    if (numb2 > numb1)
                    {
                        int temp = numb1;
                        numb1 = numb2;
                        numb2 = temp;
                    }
                    sum = numb1 - numb2;
                    break;
                case 2:
                    symbol = 'x';
                    sum = numb1 * numb2;
                    break;
                case 3:
                    symbol = '/';
                    if (numb2 > numb1)
                    {
                        int temp = numb1;
                        numb1 = numb2;
                        numb2 = temp;
                    }
                    sum = numb1 / numb2;
                    while (sum * numb2 != numb1)
                    {
                        numb1++;
                        sum = numb1 / numb2;
                    }
            }
            label = [[NSString alloc] initWithFormat:@"%i %c %i", numb1, symbol, numb2];
            break;
        case 10:
            numb1 = arc4random()%13;
            numb2 = arc4random()%10 + 1;
            symNumb = arc4random()%2;
            
            switch (symNumb)
            {
                case 0:
                    symbol = '+';
                    sum = numb1 + numb2;
                    break;
                case 1:
                    symbol = '-';
                    if (numb2 > numb1)
                    {
                        int temp = numb1;
                        numb1 = numb2;
                        numb2 = temp;
                    }
                    sum = numb1 - numb2;
                    break;
                case 2:
                    symbol = 'x';
                    sum = numb1 * numb2;
                    break;
                case 3:
                    symbol = '/';
                    if (numb2 > numb1)
                    {
                        int temp = numb1;
                        numb1 = numb2;
                        numb2 = temp;
                    }
                    sum = numb1 / numb2;
                    while (sum * numb2 != numb1)
                    {
                        numb1++;
                        sum = numb1 / numb2;
                    }
            }
            label = [[NSString alloc] initWithFormat:@"%i %c %i", numb1, symbol, numb2];
            break;
        case 11:
            numb1 = arc4random()%14;
            numb2 = arc4random()%10 + 1;
            symNumb = arc4random()%2;
            
            switch (symNumb)
            {
                case 0:
                    symbol = '+';
                    sum = numb1 + numb2;
                    break;
                case 1:
                    symbol = '-';
                    if (numb2 > numb1)
                    {
                        int temp = numb1;
                        numb1 = numb2;
                        numb2 = temp;
                    }
                    sum = numb1 - numb2;
                    break;
                case 2:
                    symbol = 'x';
                    sum = numb1 * numb2;
                    break;
                case 3:
                    symbol = '/';
                    if (numb2 > numb1)
                    {
                        int temp = numb1;
                        numb1 = numb2;
                        numb2 = temp;
                    }
                    sum = numb1 / numb2;
                    while (sum * numb2 != numb1)
                    {
                        numb1++;
                        sum = numb1 / numb2;
                    }
            }
            label = [[NSString alloc] initWithFormat:@"%i %c %i", numb1, symbol, numb2];
            break;
        default:
            numb1 = arc4random()%15;
            numb2 = arc4random()%10 + 1;
            symNumb = arc4random()%4;
            
            switch (symNumb)
            {
                case 0:
                    symbol = '+';
                    sum = numb1 + numb2;
                    break;
                case 1:
                    symbol = '-';
                    if (numb2 > numb1)
                    {
                        int temp = numb1;
                        numb1 = numb2;
                        numb2 = temp;
                    }
                    sum = numb1 - numb2;
                    break;
                case 2:
                    symbol = 'x';
                    sum = numb1 * numb2;
                    break;
                case 3:
                    symbol = '/';
                    if (numb2 > numb1)
                    {
                        int temp = numb1;
                        numb1 = numb2;
                        numb2 = temp;
                    }
                    sum = numb1 / numb2;
                    while (sum * numb2 != numb1)
                    {
                        numb1++;
                        sum = numb1 / numb2;
                    }
            }
            label = [[NSString alloc] initWithFormat:@"%i %c %i", numb1, symbol, numb2];
            break;
    }
    
    answers[currentAnswer] = [[NSString alloc] initWithFormat:@"%i", sum];
    currentAnswer++;
    currentAnswer %= 20;
    
    return label;
}

-(void) upDate
{
    int xPos = arc4random()%5;
    
    switch (xPos) {
        case 0:
            xPos = 20;
            break;
        case 1:
            xPos = 70;
            break;
        case 2:
            xPos = 120;
            break;
        case 3:
            xPos = 170;
            break;
        case 4:
            xPos = 220;
            break;
        default:
            xPos = 270;
            break;
    }
    
    switch (currentAnswer) {
        case 0:
            label1 = [[UILabel alloc] initWithFrame:CGRectMake(xPos,5, 100, 100)];
            label1.textColor = [UIColor blackColor];
            label1.text = [self getNewLabel];
            [label1 setFont:[UIFont systemFontOfSize:20]];
            [self.view addSubview:label1];
            break;
        case 1:
            label2 = [[UILabel alloc] initWithFrame:CGRectMake(xPos,5, 100, 100)];
            label2.textColor = [UIColor blackColor];
            label2.text = [self getNewLabel];
            [label2 setFont:[UIFont systemFontOfSize:20]];
            [self.view addSubview:label2];
            break;
        case 2:
            label3 = [[UILabel alloc] initWithFrame:CGRectMake(xPos,5, 100, 100)];
            label3.textColor = [UIColor blackColor];
            label3.text = [self getNewLabel];
            [label3 setFont:[UIFont systemFontOfSize:20]];
            [self.view addSubview:label3];
            break;
        case 3:
            label4 = [[UILabel alloc] initWithFrame:CGRectMake(xPos,5, 100, 100)];
            label4.textColor = [UIColor blackColor];
            label4.text = [self getNewLabel];
            [label4 setFont:[UIFont systemFontOfSize:20]];
            [self.view addSubview:label4];
            break;
        case 4:
            label5 = [[UILabel alloc] initWithFrame:CGRectMake(xPos,5, 100, 100)];
            label5.textColor = [UIColor blackColor];
            label5.text = [self getNewLabel];
            [label5 setFont:[UIFont systemFontOfSize:20]];
            [self.view addSubview:label5];
            break;
        case 5:
            label6 = [[UILabel alloc] initWithFrame:CGRectMake(xPos,5, 100, 100)];
            label6.textColor = [UIColor blackColor];
            label6.text = [self getNewLabel];
            [label6 setFont:[UIFont systemFontOfSize:20]];
            [self.view addSubview:label6];
            break;
        case 6:
            label7 = [[UILabel alloc] initWithFrame:CGRectMake(xPos,5, 100, 100)];
            label7.textColor = [UIColor blackColor];
            label7.text = [self getNewLabel];
            [label7 setFont:[UIFont systemFontOfSize:20]];
            [self.view addSubview:label7];
            break;
        case 7:
            label8 = [[UILabel alloc] initWithFrame:CGRectMake(xPos,5, 100, 100)];
            label8.textColor = [UIColor blackColor];
            label8.text = [self getNewLabel];
            [label8 setFont:[UIFont systemFontOfSize:20]];
            [self.view addSubview:label8];
            break;
        case 8:
            label9 = [[UILabel alloc] initWithFrame:CGRectMake(xPos,5, 100, 100)];
            label9.textColor = [UIColor blackColor];
            label9.text = [self getNewLabel];
            [label9 setFont:[UIFont systemFontOfSize:20]];
            [self.view addSubview:label9];
            break;
        case 9:
            label10 = [[UILabel alloc] initWithFrame:CGRectMake(xPos,5, 100, 100)];
            label10.textColor = [UIColor blackColor];
            label10.text = [self getNewLabel];
            [label10 setFont:[UIFont systemFontOfSize:20]];
            [self.view addSubview:label10];
            break;
        case 10:
            label11 = [[UILabel alloc] initWithFrame:CGRectMake(xPos,5, 100, 100)];
            label11.textColor = [UIColor blackColor];
            label11.text = [self getNewLabel];
            [label11 setFont:[UIFont systemFontOfSize:20]];
            [self.view addSubview:label11];
            break;
        case 11:
            label12 = [[UILabel alloc] initWithFrame:CGRectMake(xPos,5, 100, 100)];
            label12.textColor = [UIColor blackColor];
            label12.text = [self getNewLabel];
            [label12 setFont:[UIFont systemFontOfSize:20]];
            [self.view addSubview:label12];
            break;
        case 12:
            label13 = [[UILabel alloc] initWithFrame:CGRectMake(xPos,5, 100, 100)];
            label13.textColor = [UIColor blackColor];
            label13.text = [self getNewLabel];
            [label13 setFont:[UIFont systemFontOfSize:20]];
            [self.view addSubview:label13];
            break;
        case 13:
            label14 = [[UILabel alloc] initWithFrame:CGRectMake(xPos,5, 100, 100)];
            label14.textColor = [UIColor blackColor];
            label14.text = [self getNewLabel];
            [label14 setFont:[UIFont systemFontOfSize:20]];
            [self.view addSubview:label14];
            break;
        case 14:
            label15 = [[UILabel alloc] initWithFrame:CGRectMake(xPos,5, 100, 100)];
            label15.textColor = [UIColor blackColor];
            label15.text = [self getNewLabel];
            [label15 setFont:[UIFont systemFontOfSize:20]];
            [self.view addSubview:label15];
            break;
        case 15:
            label16 = [[UILabel alloc] initWithFrame:CGRectMake(xPos,5, 100, 100)];
            label16.textColor = [UIColor blackColor];
            label16.text = [self getNewLabel];
            [label16 setFont:[UIFont systemFontOfSize:20]];
            [self.view addSubview:label16];
            break;
        case 16:
            label17 = [[UILabel alloc] initWithFrame:CGRectMake(xPos,5, 100, 100)];
            label17.textColor = [UIColor blackColor];
            label17.text = [self getNewLabel];
            [label17 setFont:[UIFont systemFontOfSize:20]];
            [self.view addSubview:label17];
            break;
        case 17:
            label18 = [[UILabel alloc] initWithFrame:CGRectMake(xPos,5, 100, 100)];
            label18.textColor = [UIColor blackColor];
            label18.text = [self getNewLabel];
            [label18 setFont:[UIFont systemFontOfSize:20]];
            [self.view addSubview:label18];
            break;
        case 18:
            label19 = [[UILabel alloc] initWithFrame:CGRectMake(xPos,5, 100, 100)];
            label19.textColor = [UIColor blackColor];
            label19.text = [self getNewLabel];
            [label19 setFont:[UIFont systemFontOfSize:20]];
            [self.view addSubview:label19];
            break;
        case 19:
            label20 = [[UILabel alloc] initWithFrame:CGRectMake(xPos,5, 100, 100)];
            label20.textColor = [UIColor blackColor];
            label20.text = [self getNewLabel];
            [label20 setFont:[UIFont systemFontOfSize:20]];
            [self.view addSubview:label20];
            break;
        default:
            NSLog(@"Incorrect Data");
            break;
    }
}

-(IBAction) Button1:(id)sender
{
    NSString *string1 = @"1";
    workingSolution = [workingSolution stringByAppendingString:string1];
    output.text = workingSolution;
    [self buttonPressed];
}

-(IBAction) Button2:(id)sender
{
    NSString *string2 = @"2";
    workingSolution = [workingSolution stringByAppendingString:string2];
    output.text = workingSolution;
    [self buttonPressed];
}

-(IBAction) Button3:(id)sender
{
    NSString *string3 = @"3";
    workingSolution = [workingSolution stringByAppendingString:string3];
    output.text = workingSolution;
    [self buttonPressed];
}

-(IBAction) Button4:(id)sender
{
    NSString *string4 = @"4";
    workingSolution = [workingSolution stringByAppendingString:string4];
    output.text = workingSolution;
    [self buttonPressed];
}

-(IBAction) Button5:(id)sender
{
    NSString *string5 = @"5";
    workingSolution = [workingSolution stringByAppendingString:string5];
    output.text = workingSolution;
    [self buttonPressed];
}

-(IBAction) Button6:(id)sender
{
    NSString *string6 = @"6";
    workingSolution = [workingSolution stringByAppendingString:string6];
    output.text = workingSolution;
    [self buttonPressed];
}

-(IBAction) Button7:(id)sender
{
    NSString *string7 = @"7";
    workingSolution = [workingSolution stringByAppendingString:string7];
    output.text = workingSolution;
    [self buttonPressed];
}

-(IBAction) Button8:(id)sender
{
    NSString *string8 = @"8";
    workingSolution = [workingSolution stringByAppendingString:string8];
    output.text = workingSolution;
    [self buttonPressed];
}

-(IBAction) Button9:(id)sender
{
    NSString *string9 = @"9";
    workingSolution = [workingSolution stringByAppendingString:string9];
    output.text = workingSolution;
    [self buttonPressed];
}

-(IBAction) Button0:(id)sender
{
    NSString *string0 = @"0";
    workingSolution = [workingSolution stringByAppendingString:string0];
    output.text = workingSolution;
    [self buttonPressed];
}

-(IBAction) ButtonClear:(id)sender
{
    workingSolution = @"";
    output.text = workingSolution;
}

-(IBAction) ButtonDelete:(id)sender
{
    if ([workingSolution length] > 0) {
        workingSolution = [workingSolution substringToIndex:[workingSolution length] - 1];
    }
    output.text = workingSolution;
}

- (void)viewDidLoad
{
    [self initialize];
    [self upDate];
    output.text = @"";
    workingSolution = @"";
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void) viewWillAppear:(BOOL)animated
{
    lives = 3;
    [self animateStart];
}

-(void) viewWillDisappear:(BOOL)animated
{
    [self animateStop];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
