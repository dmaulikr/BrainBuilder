//
//  RootViewController.m
//  Finale
//
//  Created by Fred Kneeland on 8/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "RootViewController.h"
#import "QuickGame.h"
#import "CustomGame.h"
#import "Instructions.h"
#import "HighScore.h"
#import "HighScoreCustom.h"
#import "WebView.h"

@interface RootViewController ()

@property (nonatomic, strong) IBOutlet UIView *contentView;

@end

@implementation RootViewController
{
    ADBannerView *_bannerView;
}

@synthesize highScore;
@synthesize test;

-(IBAction) loadUpDatePage:(id)sender
{
    WebView *webView = [[WebView alloc] initWithNibName:@"WebView" bundle:nil];
	[self.navigationController pushViewController:webView animated:YES];
    self.navigationItem.title = @"Back";
}

-(IBAction) loadNextPage:(id)sender
{
    QuickGame *quickGame = [[QuickGame alloc] init];
	//QuickGame *quickGame = [[QuickGame alloc] initWithNibName:@"QuickGame" bundle:nil];
	[self.navigationController pushViewController:quickGame animated:YES];
    self.navigationItem.title = @"Back";
}

-(IBAction) loadCustomGame:(id)sender
{
    CustomGame *customGame = [[CustomGame alloc] init];
	//CustomGame *customGame = [[CustomGame alloc] initWithNibName:@"CustomGame" bundle:nil];
	[self.navigationController pushViewController:customGame animated:YES];
    self.navigationItem.title = @"Back";
}

-(IBAction) loadInstructionsPage:(id)sender
{
    Instructions *instructions = [[Instructions alloc] init];
	//Instructions *instructions = [[Instructions alloc] initWithNibName:@"Instructions" bundle:nil];
	[self.navigationController pushViewController:instructions animated:YES];
    self.navigationItem.title = @"Back";
}

-(IBAction) loadHighScorePage:(id)sender
{
    HighScore *highScorez = [[HighScore alloc] init];
	[highScore alertOff];
	//HighScore *highScorez = [[HighScore alloc] initWithNibName:@"HighScore" bundle:nil];
	[self.navigationController pushViewController:highScorez animated:YES];
    self.navigationItem.title = @"Back";
}

-(IBAction) loadCustomHighScore:(id)sender
{
    HighScoreCustom *highScorezCustom = [[HighScoreCustom alloc] init];
	//HighScoreCustom *highScorezCustom = [[HighScoreCustom alloc] initWithNibName:@"HighScoreCustom" bundle:nil];
	[highScorezCustom AlertOff];
	[self.navigationController pushViewController:highScorezCustom animated:YES];
    self.navigationItem.title = @"Back";
}

- (instancetype)init
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
        bannerFrame.origin.y = contentFrame.size.height;
    } else {
        bannerFrame.origin.y = contentFrame.size.height;
    }
    
    [UIView animateWithDuration:animated ? 0.25 : 0.0 animations:^{
        //_contentView.frame = contentFrame;
        [_contentView layoutIfNeeded];
        _bannerView.frame = bannerFrame;
    }];
}



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [self.view addSubview:_bannerView];
    [super viewDidLoad];
}

-(void)viewWillAppear:(BOOL)animated
{
    self.navigationItem.title = @"Brain Builder Math";

    [super viewWillAppear:animated];
    [self layoutAnimated:NO];
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

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
    test.text = @"Hello world";
    [self layoutAnimated:YES];
}

- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
    test.text = @"Hello world";
    [self layoutAnimated:YES];
}

- (BOOL)bannerViewActionShouldBegin:(ADBannerView *)banner willLeaveApplication:(BOOL)willLeave
{
    return YES;
}

- (void)bannerViewActionDidFinish:(ADBannerView *)banner
{
}


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    //banner.delegate = nil;
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)dealloc {
    [super dealloc];
}


@end
