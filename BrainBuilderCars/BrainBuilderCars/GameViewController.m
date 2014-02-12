//
//  GameViewController.m
//  BrainBuilderCars
//
//  Created by Fred Kneeland on 9/4/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import "GameViewController.h"

@interface GameViewController ()
{
    float assist;
    float y;
    float x;
    float rad;
    //@property (nonatomic, strong) IBOutlet UILabel *timerLabel;
}

@end

@implementation GameViewController
{
    //ADBannerView *_bannerView;
    NSTimer *_timer;
    NSTimer *_timerAnimation;
    NSTimer *_timerReturn;
    CFTimeInterval _ticks;
}
@synthesize car1, car10, car2, car3, car4, car5, car6, car7, car8, car9;
@synthesize timerLabel;
@synthesize helper;
@synthesize innerCar1, innerCar2, innerCar3, innerCar4, innerCar10, innerCar5, innerCar6, innerCar7, innerCar8, innerCar9;
@synthesize helperLabel;
@synthesize temp, temp2;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void) animate:(NSTimer *)timer
{
    animationTimer++;
    self.timerLabel.text = [[NSString alloc] initWithFormat:@"%i", animationTimer];
    
    if (animationTimer > 190)
    {
        if (animationTimer == 200)
        {
            switch (randomNumb)
            {
                case 0:
                    temp = car1;
                    temp2 = innerCar1;
                    break;
                    
                case 1:
                    temp = car2;
                    temp2 = innerCar2;
                    break;
                
                case 2:
                    temp = car3;
                    temp2 = innerCar3;
                    break;
                
                case 3:
                    temp = car4;
                    temp2 = innerCar4;
                    break;
                
                case 4:
                    temp = car5;
                    temp2 = innerCar5;
                    break;
                
                case 5:
                    temp = car6;
                    temp2 = innerCar6;
                    break;
                
                case 6:
                    temp = car7;
                    temp2 = innerCar7;
                    break;
                
                case 7:
                    temp = car8;
                    temp2 = innerCar8;
                    break;
                
                case 8:
                    temp = car9;
                    temp2 = innerCar9;
                    break;
                
                case 9:
                    temp = car10;
                    temp2 = innerCar10;
                    break;
            }
            if (randomNumb > 4)
            {
                rightSide = FALSE;
            }
            else
            {
                rightSide = TRUE;
            }
        
            travelDistY = temp.frame.origin.y;
            travelDistY *= -2;
        }
        
        [self position:randomNumb2];
        if (backUp)
        {
            if (rightSide)
            {
                [self rightBackUp];
            }
            else
            {
                [self leftBackUp];
            }
            
            if (rad == 90 && animationTimer > 400)
            {
                backUp = FALSE;
            }
        }
        else if (moveVerticle)
        {
            if (temp.frame.origin.y > finalYHeight)
            {
                [UIView animateWithDuration:0.1
                                 animations:^{
                                     temp.transform = CGAffineTransformMakeTranslation((x), y);
                                 }];
                [UIView commitAnimations];
                
                y-= 3;
                
            }
            else if (temp.frame.origin.y <= finalYHeight)
            {
                moveVerticle = FALSE;
            }

        }
        else if (secondTurn)
        {
            if (rad == 90)
            {
                //if (randomNumb2 == 0 || randomNumb2 == 1 || )
                rad = 180;
                [UIView animateWithDuration:1.0
                             animations:^{
                                 temp2.transform = CGAffineTransformMakeRotation(deg2rad * rad);
                             }];
                [UIView commitAnimations];
                
            }
            
            if ((rad == 180 || rad == 0) && animationTimer > 750)
            {
                secondTurn = FALSE;
            }
        }
        else if (moveHorizontal)
        {
            [self horizontalSlide];
            if (temp.frame.origin.x == finalXLocation)
            {
                moveHorizontal = FALSE;
            }
        }
    }
}

-(void) horizontalSlide
{
    if  (temp.frame.origin.x != finalXLocation)
    {
        //self.helper.text = @"Hello World";
        [UIView animateWithDuration:0.1
                         animations:^{
                             temp.transform = CGAffineTransformMakeTranslation(x, (y));
                         }];
        [UIView commitAnimations];
        if (temp.frame.origin.x < finalXLocation)
        {
            x++;
            //x++;
        }
        else
        {
            x--;
            //x--;
        }
        self.helper.text = [[NSString alloc] initWithFormat:@"%1.1f, %1.1f", x, temp.frame.origin.x];
    }

}

-(void) position:(NSInteger)index
{
    //// Verticle positioning
    if (index > -1 && index < 5)
    {
        finalYHeight = 10;
    }
    else if (index == -1)
    {
        
    }
    else if (index < 10)
    {
        finalYHeight = 70;
    }
    else if (index < 15)
    {
        finalYHeight = 130;
    }
    
    if (index == 0 || index == 5 || index == 10)// || index == 15 || index == 20)
    {
        finalXLocation = 10;
    }
    else if (index == 1 || index == 6 || index == 11)// || index == 16 || index == 21)
    {
        finalXLocation = 70;
    }
    else if (index == 2 || index == 7 || index == 12)// || index == 17 || index == 22)
    {
        finalXLocation = 130;
    }
    else if (index == 3 || index == 8 || index == 13)// || index == 18 || index == 23)
    {
        finalXLocation = 190;
    }
    else if (index == 4 || index == 9 || index == 14)// || index == 19 || index == 24)
    {
        finalXLocation = 250;
    }
    
    //self.helper.text = [[NSString alloc] initWithFormat:@"%i", index];
}

-(void) rightBackUp
{
    if (x <= 100)
    {
        self.helper.text = [[NSString alloc] initWithFormat:@"%1.1f",x];
        [UIView animateWithDuration:0.1
                         animations:^{
                             temp.transform = CGAffineTransformMakeTranslation(x, y);
                             
                         }];
        [UIView commitAnimations];
        x++;
        x++;
    }
    else if (rad < 90)
    {
        x = 100;
        [UIView animateWithDuration:1.0
                         animations:^{
                             temp2.transform = CGAffineTransformMakeRotation(deg2rad * 90);
                         }];
        [UIView commitAnimations];
        rad = 90;
    }
}

-(void) leftBackUp
{
    if (x >= -100)
    {
        [UIView animateWithDuration:0.1
                         animations:^{
                             temp.transform = CGAffineTransformMakeTranslation(x, y);
                             
                         }];
        [UIView commitAnimations];
        x--;
        x--;
    }
    else if (rad < 90)
    {
        x = -100;
        [UIView animateWithDuration:1.0
                         animations:^{
                             temp2.transform = CGAffineTransformMakeRotation(deg2rad * -90);
                         }];
        [UIView commitAnimations];
        rad = 90;
    }
}

-(void) slideHorizontallyTo:(float)locX
{
    //x = temp.frame.origin.x;
    //y = temp.frame.origin.y;
    
    //self.helper.text = [[NSString alloc] initWithFormat:@"%i", returnTimer];
    
    self.helper.text = [[NSString alloc] initWithFormat:@"x:%1.0f, y:%1.0f", x, y];
    
    //y = finalYHeight;
    
    if (temp.frame.origin.x > locX)
    {
        x_2 = -1;
    }
    else if (temp.frame.origin.x < locX)
    {
        x_2 = 1;
        //self.helper.text = @"Hello World";
    }
    
    [UIView animateWithDuration:1
                     animations:^{
                         //temp.transform = CGAffineTransformMakeTranslation(x, y);
                         temp.transform = CGAffineTransformTranslate(temp.transform, x_2, 0);
                         
                     }];
    [UIView commitAnimations];
    toMiddle = TRUE;
    
}

-(void) slideVerticlyTo:(float)locY
{
    x = temp.frame.origin.x;
    y = temp.frame.origin.y;

    
    if (temp.frame.origin.y > locY)
    {
        y--;
    }
    else if (temp.frame.origin.y < locY)
    {
        y++;
    }
    [UIView animateWithDuration:0.1
                     animations:^{
                         temp.transform = CGAffineTransformMakeTranslation(x, y);
                         
                     }];
    [UIView commitAnimations];
}

-(void) rotateDegrees:(float)degrees
{
    
}

-(void) returnCar:(NSTimer *)timer
{
    returnTimer++;
    //self.helper.text = [[NSString alloc] initWithFormat:@"%i", returnTimer];
    [self slideBackToMiddle];
    //[self slideDown];
    //[self rotateToParkSpot];
    //[self slideIntoParkSpot];
    
}

-(void) slideBackToMiddle
{
    if (!toMiddle)
    {
        if (temp.frame.origin.x != ABS(100.0))
        {
            // drive to middle
            [self slideHorizontallyTo:100.0];
        }
        
        // made it to middle
        else
        {
            toMiddle = TRUE;
        }
    }
}

-(void) slideDown
{
    if (toMiddle && !toBottom)
    {
        if (temp.frame.origin.y != initialY)
        {
            // go down
            [self slideVerticlyTo:initialY];
        }
        else if (temp.frame.origin.y == initialY)
        {
            toBottom = TRUE;
        }
    }
}

-(void) rotateToParkSpot
{
    if (toBottom && !toRotated)
    {
        // rotate
    }
}

-(void) slideIntoParkSpot
{
    if (toRotated && !toParked)
    {
        if (temp.frame.origin.x != initialX)
        {
            [self slideHorizontallyTo:initialX];
        }
        else
        {
            toParked = TRUE;
        }
    }
}

-(void) startReturn
{
    if (_timerReturn == nil) {
        ///x = temp.frame.origin.x;
        //y = temp.frame.origin.y;
        _timerReturn = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(returnCar:) userInfo:nil repeats:YES];
    }

}

-(void) stopReturn
{
    toParked = FALSE;
    toMiddle = FALSE;
    toRotated = FALSE;
    toBottom = FALSE;
    returnTimer = 0;
    [_timerReturn invalidate];
    _timerReturn = nil;
}

-(void) animateStart
{
    if (_timerAnimation == nil) {
        _timerAnimation = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(animate:) userInfo:nil repeats:YES];
    }
}

-(void) animateStop
{
    animationTimer = 0;
    [_timerAnimation invalidate];
    _timerAnimation = nil;
}

-(void)ButtonPressed:(NSInteger)location: (NSInteger)button
{
    /////// Car Button Pressed ////////////
    if (location == 1)
    {
        correctButton = button;
    }
    
    ////////////// Parking Lot button Pressed //////////
    else
    {
        ///////////// question answered correctly ///////////
        if (correctButton == button)
        {
            helperLabel.text = @"Yes";
            ///x = temp.frame.origin.x;
            //y = temp.frame.origin.y;
            x = finalXLocation;
            y = finalYHeight;
            [self animateStop];
            [self startReturn];
        }
        
        /////////////// question answered incorrectly ////////
        else
        {
            helperLabel.text = @"Oops";
        }
    }
}

-(void) clearViews
{
    innerCar1.backgroundColor = [UIColor clearColor];
    innerCar2.backgroundColor = [UIColor clearColor];
    innerCar3.backgroundColor = [UIColor clearColor];
    innerCar4.backgroundColor = [UIColor clearColor];
    innerCar5.backgroundColor = [UIColor clearColor];
    innerCar6.backgroundColor = [UIColor clearColor];
    innerCar7.backgroundColor = [UIColor clearColor];
    innerCar8.backgroundColor = [UIColor clearColor];
    innerCar9.backgroundColor = [UIColor clearColor];
    innerCar10.backgroundColor = [UIColor clearColor];
}

-(IBAction) Car1:(id)sender
{
    [self ButtonPressed:1 :1];
}

-(IBAction) Car2:(id)sender
{
    [self ButtonPressed:1 :2];
}

-(IBAction) Car3:(id)sender
{
    [self ButtonPressed:1 :3];
}

-(IBAction) Car4:(id)sender
{
    [self ButtonPressed:1 :4];
}

-(IBAction) Car5:(id)sender
{
    [self ButtonPressed:1 :5];
}

-(IBAction) Car6:(id)sender
{
    [self ButtonPressed:1 :6];
}

-(IBAction) Car7:(id)sender
{
    [self ButtonPressed:1 :7];
}

-(IBAction) Car8:(id)sender
{
    [self ButtonPressed:1 :8];
}

-(IBAction) Car9:(id)sender
{
    [self ButtonPressed:1 :9];
}

-(IBAction) Car10:(id)sender
{
    [self ButtonPressed:1 :10];
}

-(IBAction) Car1Park:(id)sender
{
    [self ButtonPressed:2 :1];
}

-(IBAction) Car2Park:(id)sender
{
    [self ButtonPressed:2 :2];
}

-(IBAction) Car3Park:(id)sender
{
    [self ButtonPressed:2 :3];
}

-(IBAction) Car4Park:(id)sender
{
    [self ButtonPressed:2 :4];
}

-(IBAction) Car5Park:(id)sender
{
    [self ButtonPressed:2 :5];
}

-(IBAction) Car6Park:(id)sender
{
    [self ButtonPressed:2 :6];
}

-(IBAction) Car7Park:(id)sender
{
    [self ButtonPressed:2 :7];
}

-(IBAction) Car8Park:(id)sender
{
    [self ButtonPressed:2 :8];
}

-(IBAction) Car9Park:(id)sender
{
    [self ButtonPressed:2 :9];
}

-(IBAction) Car10Park:(id)sender
{
    [self ButtonPressed:2 :10];
}

-(void) setBackGround
{
    if (randomNumb == 0)
    {
        innerCar1.backgroundColor = [UIColor redColor];
        initialX = innerCar1.frame.origin.x;
        initialY = innerCar1.frame.origin.y;
    }
    else if (randomNumb == 1)
    {
        innerCar2.backgroundColor = [UIColor redColor];
        initialX = innerCar2.frame.origin.x;
        initialY = innerCar2.frame.origin.y;
    }
    else if (randomNumb == 2)
    {
        innerCar3.backgroundColor = [UIColor redColor];
        initialX = innerCar3.frame.origin.x;
        initialY = innerCar3.frame.origin.y;
    }
    else if (randomNumb == 3)
    {
        innerCar4.backgroundColor = [UIColor redColor];
        initialX = innerCar4.frame.origin.x;
        initialY = innerCar4.frame.origin.y;
    }
    else if (randomNumb == 4)
    {
        innerCar5.backgroundColor = [UIColor redColor];
        initialX = innerCar5.frame.origin.x;
        initialY = innerCar5.frame.origin.y;
    }
    else if (randomNumb == 5)
    {
        innerCar6.backgroundColor = [UIColor redColor];
        initialX = innerCar6.frame.origin.x;
        initialY = innerCar6.frame.origin.y;
    }
    else if (randomNumb == 6)
    {
        innerCar7.backgroundColor = [UIColor redColor];
        initialX = innerCar7.frame.origin.x;
        initialY = innerCar7.frame.origin.y;
    }
    else if (randomNumb == 7)
    {
        innerCar8.backgroundColor = [UIColor redColor];
        initialX = innerCar8.frame.origin.x;
        initialY = innerCar8.frame.origin.y;
    }
    else if (randomNumb == 8)
    {
        innerCar9.backgroundColor = [UIColor redColor];
        initialX = innerCar9.frame.origin.x;
        initialY = innerCar9.frame.origin.y;
    }
    else if (randomNumb == 9)
    {
        innerCar10.backgroundColor = [UIColor redColor];
        initialX = innerCar10.frame.origin.x;
        initialY = innerCar10.frame.origin.y;
    }
    
    
    
}

- (void)viewDidLoad
{
    rad = 1;
    assist = -2.0;
    y = -1;
    x = 0.0;
    //[self startTimer];
    //[self animateStart];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void) viewWillAppear:(BOOL)animated
{
    randomNumb = arc4random()%10;
    randomNumb2 = arc4random()%15;
    backUp = secondTurn = moveVerticle = moveHorizontal = TRUE;
    [self animateStart];
    //[self stopReturn];
    [self clearViews];
    [self setBackGround];
    [super viewWillAppear:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
