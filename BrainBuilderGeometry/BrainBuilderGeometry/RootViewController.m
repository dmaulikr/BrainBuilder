//
//  RootViewController.m
//  BrainBuilderGeometry
//
//  Created by Fred Kneeland on 8/11/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import "RootViewController.h"
#import "GameViewController.h"
#import "WebViewController.h"
#import "HighScoreViewController.h"

@interface RootViewController ()

@property (nonatomic, strong) IBOutlet UIView *contentView;
@property (nonatomic, strong) IBOutlet UIView *smallView;

@end

@implementation RootViewController
{
    ADBannerView *_bannerView;
    
}


-(IBAction) loadGamePage:(id)sender
{
    GameViewController *gameViewController = [[GameViewController alloc] init];
    self.navigationItem.title = @"Back";
    [gameViewController gameType:1];
	[self.navigationController pushViewController:gameViewController animated:YES];
}

-(IBAction) loadHighScores:(id)sender
{
    HighScoreViewController *highScoreViewController = [[HighScoreViewController alloc] init];
    self.navigationItem.title = @"Back";
    [highScoreViewController alertOff];
	[self.navigationController pushViewController:highScoreViewController animated:YES];
}

-(IBAction) loadGamePage2:(id)sender
{
    GameViewController *gameViewController = [[GameViewController alloc] init];
    self.navigationItem.title = @"Back";
    [gameViewController gameType:2];
	[self.navigationController pushViewController:gameViewController animated:YES];
}

-(IBAction) loadGamePage3:(id)sender
{
    GameViewController *gameViewController = [[GameViewController alloc] init];
    self.navigationItem.title = @"Back";
    [gameViewController gameType:3];
	[self.navigationController pushViewController:gameViewController animated:YES];
}

-(IBAction) loadGamePage4:(id)sender
{
    GameViewController *gameViewController = [[GameViewController alloc] init];
    self.navigationItem.title = @"Back";
    [gameViewController gameType:4];
	[self.navigationController pushViewController:gameViewController animated:YES];
}

-(IBAction) loadWebPage:(id)sender
{
    WebViewController *webViewController = [[WebViewController alloc] init];
	[self.navigationController pushViewController:webViewController animated:YES];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        if ([ADBannerView instancesRespondToSelector:@selector(initWithAdType:)]) {
            _bannerView = [[ADBannerView alloc] initWithAdType:ADAdTypeBanner];
        } else {
            _bannerView = [[ADBannerView alloc] init];
        }
        _bannerView.delegate = self;
        // Custom initialization
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
        bannerFrame.origin.y = contentFrame.size.height;
    } else {
        bannerFrame.origin.y = contentFrame.size.height;
    }
    
    [UIView animateWithDuration:animated ? 0.25 : 0.0 animations:^{
        _contentView.frame = contentFrame;
        [_contentView layoutIfNeeded];
        _bannerView.frame = bannerFrame;
    }];
}


- (void)viewDidLoad
{
    [self.view addSubview:_bannerView];
    self.navigationItem.title = @"Brain Builder Geometry";
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void)viewWillAppear:(BOOL)animated
{
    self.navigationItem.title = @"Brain Builder Geometry";
    [super viewWillAppear:YES];
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
    //test.text = @"Hello world";
    [self layoutAnimated:YES];
}

- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
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
