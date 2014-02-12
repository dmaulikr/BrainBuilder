//
//  GameViewController.m
//  BrainBuilderLetters
//
//  Created by Fred Kneeland on 11/13/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import "GameViewController.h"

@interface GameViewController ()

@end

@implementation GameViewController
{
    NSTimer *_timer;
    CFTimeInterval _ticks;
}

@synthesize test;
@synthesize topLabel, bottomLabel, score, helper;

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
    ticks++;
    double seconds = fmod(_ticks, 60.0);
    double minutes = fmod(trunc(_ticks / 60.0), 60.0);
    test.text = [NSString stringWithFormat:@"%02.0f:%04.1f", minutes, seconds];
    //bottomLabel.text = [[NSString alloc] initWithFormat:@"%i", ticks];
    
    if (ticks == 10)
    {
        [self upDate];
    }
    
    if (right)
    {
        //self.view.backgroundColor = [UIColor greenColor];
    }
    else
    {
        //self.view.backgroundColor = [UIColor redColor];
    }
}

-(IBAction) Yes:(id)sender
{
    //bottomLabel.text = @"Yes";
    if (right)
    {
        numbCorrect++;
        points = points + 5 + (5*(numbCorrect-numbWrong));
        score.text = [[NSString alloc] initWithFormat:@"%i", points];
    }
    else
    {
        numbWrong++;
    }
    [self upDate];
}

-(IBAction) No:(id)sender
{
    //bottomLabel.text = @"No";
    if (!right)
    {
        numbCorrect++;
        points = points + (5*((numbCorrect+1)/(numbWrong+1)));
        score.text = [[NSString alloc] initWithFormat:@"%i", points];
    }
    else
    {
        numbWrong++;
    }
    [self upDate];
}

-(void) setUp
{
    numbCorrect = 0;
    numbWrong = 0;
    points = 0;
    score.text = @"0";
    [self startTimer];
}

-(void) upDate
{
    topLabel.text = @"";
    bottomLabel.text = @"";
    //self.view.backgroundColor = [UIColor redColor];
    random2 = arc4random()%2;
    
    // decide whether to go to top or bottom
    if (random2 == 0)
    {
        // decide whether right or wrong
        random2 = arc4random()%2;
        if (random2 == 0)
        {
            right = true;
            random = (random + 1) % 26;
            topLabel.text = [letters objectAtIndex:(random)];
        }
        else
        {
            right = false;
            random2 = arc4random()%26;
            while (random2 == random || random2 == (random+1))
            {
                random2 = arc4random()%26;
                //random2 = arc4random_uniform(26);
                helper.text = [[NSString alloc] initWithFormat:@"%i", random2];
            }
            topLabel.text = [letters objectAtIndex:(random2)];
            random = random2;
        }
    }
    else
    {
        // decide whether right or wrong
        random2 = arc4random()%2;
        if (random2 == 0)
        {
            right = true;
            random--;
            if (random < 0)
            {
                random = 26;
            }
            bottomLabel.text = [letters objectAtIndex:(random)];

        }
        else
        {
            right = false;
            random2 = arc4random()%26;
            while (random2 == random || random2 == (random-1))
            {
                random2 = arc4random()%26;
                //random2 = arc4random_uniform(26);
                helper.text = [[NSString alloc] initWithFormat:@"%i", random2];
            }
            bottomLabel.text = [letters objectAtIndex:(random2)];
            random = random2;
        }
    }
    
}

- (void)viewDidLoad
{
    
    test.text = @"Hello World";
    self.navigationItem.title = @"Game Page";
    letters = [NSArray arrayWithObjects:@"a", @"b", @"c", @"d", @"e", @"f", @"g", @"h", @"i", @"j", @"k", @"l", @"m", @"n", @"o", @"p", @"q", @"r", @"s", @"t", @"u", @"v", @"w", @"x", @"y", @"z", nil];
    random = arc4random()%26;
    topLabel.text = [letters objectAtIndex:random];
    bottomLabel.text = @"";
    [self setUp];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
