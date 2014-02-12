//
//  RootViewController.m
//  BrainBuilder
//
//  Created by Fred Kneeland on 8/19/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import "RootViewController.h"
#import "MemoryViewController.h"
#import "InstructionViewController.h"
#import "HighScoreViewController.h"
#import "WebViewController.h"

@interface RootViewController ()

@property (nonatomic, strong) IBOutlet UIView *contentView;

@end

@implementation RootViewController
{
    ADBannerView *_bannerView;
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:@"RootViewController" bundle:nil];
    if (self) {
        // On iOS 6 ADBannerView introduces a new initializer, use it when available.
        if ([ADBannerView instancesRespondToSelector:@selector(initWithAdType:)]) {
            _bannerView = [[ADBannerView alloc] initWithAdType:ADAdTypeBanner];
        } else {
            _bannerView = [[ADBannerView alloc] init];
        }
        _bannerView.delegate = self;
    }
    return self;
}

- (void)layoutAnimated:(BOOL)animated
{
    // As of iOS 6.0, the banner will automatically resize itself based on its width.
    // To support iOS 5.0 however, we continue to set the currentContentSizeIdentifier appropriately.
    CGRect contentFrame = self.view.bounds;
    if (contentFrame.size.width < contentFrame.size.height) {
        _bannerView.currentContentSizeIdentifier = ADBannerContentSizeIdentifierPortrait;
    } else {
        _bannerView.currentContentSizeIdentifier = ADBannerContentSizeIdentifierLandscape;
    }
    
    CGRect bannerFrame = _bannerView.frame;
    if (_bannerView.bannerLoaded) {
        contentFrame.size.height -= _bannerView.frame.size.height;
        bannerFrame.origin.y = contentFrame.size.height - 40;
    } else {
        bannerFrame.origin.y = contentFrame.size.height;
    }
    
    [UIView animateWithDuration:animated ? 0.25 : 0.0 animations:^{
        _contentView.frame = contentFrame;
        [_contentView layoutIfNeeded];
        _bannerView.frame = bannerFrame;
    }];
}


-(IBAction) loadMemoryPage:(id)sender
{
    /*
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    if ([userDefaults integerForKey:FIRSTLOAD] == 32)
    {
        MemoryViewController *memoryViewController = [[MemoryViewController alloc] init];
        self.navigationItem.title = @"Back";
        [self.navigationController pushViewController:memoryViewController animated:YES];
    }
    else
    {
        InstructionViewController *instructionViewController = [[InstructionViewController alloc] init];
        self.navigationItem.title = @"Back";
        [self.navigationController pushViewController:instructionViewController animated:YES];
        [instructionViewController lastView:1];
        [userDefaults setInteger:32 forKey:FIRSTLOAD];
    }
     */
    MemoryViewController *memoryViewController = [[MemoryViewController alloc] init];
    self.navigationItem.title = @"Back";
    [self.navigationController pushViewController:memoryViewController animated:YES];
}

-(IBAction) loadInstructions:(id)sender
{
    InstructionViewController *instructionViewController = [[InstructionViewController alloc] init];
    self.navigationItem.title = @"Back";
    [self.navigationController pushViewController:instructionViewController animated:YES];
}

-(IBAction) loadWebPage:(id)sender
{
    WebViewController *webViewController = [[WebViewController alloc] init];
    self.navigationItem.title = @"Back";
    [self.navigationController pushViewController:webViewController animated:YES];
}


-(IBAction) loadHighScores:(id)sender
{
    HighScoreViewController *highScoreViewController = [[HighScoreViewController alloc] init];
    self.navigationItem.title = @"Back";
    [highScoreViewController alertOff];
    [self.navigationController pushViewController:highScoreViewController animated:YES];
}

- (void)viewDidLoad
{
    [self.view addSubview:_bannerView];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void) viewDidAppear:(BOOL)animated
{
    self.navigationItem.title = @"Brain Builder Memory";
    [super viewDidAppear:YES];
    [self layoutAnimated:NO];
}

#if __IPHONE_OS_VERSION_MIN_REQUIRED < __IPHONE_6_0
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}
#endif

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskAll;
}

- (void)viewDidLayoutSubviews
{
    [self layoutAnimated:[UIView areAnimationsEnabled]];
}

- (void)bannerViewDidLoadAd:(ADBannerView *)banner
{
    //self.navigationItem.title = @"Hello World";
    //test.text = @"Hello world";
    [self layoutAnimated:YES];
}

- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
    //self.navigationItem.title = @"Failure";
    //test.text = @"Hello world";
    [self layoutAnimated:YES];
}

- (BOOL)bannerViewActionShouldBegin:(ADBannerView *)banner willLeaveApplication:(BOOL)willLeave
{
    return YES;
}

- (void)bannerViewActionDidFinish:(ADBannerView *)banner
{
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
