//
//  CalcRootViewController.m
//  BrainBuilderCalc
//
//  Created by Fred Kneeland on 5/29/13.
//
//

#import "CalcRootViewController.h"
#import "GamePage.h"
#import "FirstDerivitivePage.h"
#import "SecondDerivitive.h"
#import "IndefiniteIntegral.h"
#import "HighScores.h"
#import "WebViewController.h"

@interface CalcRootViewController ()

@property (nonatomic, strong) IBOutlet UIView *contentView;

@end

@implementation CalcRootViewController
{
    ADBannerView *_bannerView;
    
}

//@synthesize test;

- (instancetype)init
{
    self = [super initWithNibName:@"CalcRootViewController" bundle:nil];
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
        _contentView.frame = contentFrame;
        [_contentView layoutIfNeeded];
        _bannerView.frame = bannerFrame;
    }];
}

-(IBAction) loadLimits:(id)sender
{
    GamePage *gamePage = [[GamePage alloc] init];
    self.navigationItem.title = @"Back";
	[self.navigationController pushViewController:gamePage animated:YES];
}

-(IBAction) loadDerivitive:(id)sender
{
    FirstDerivitivePage *firstDerivitivePage = [[FirstDerivitivePage alloc] init];
    self.navigationItem.title = @"Back";
	[self.navigationController pushViewController:firstDerivitivePage animated:YES];
}

-(IBAction) loadSecondDerivitive:(id)sender
{
    SecondDerivitive *secondDerivitive = [[SecondDerivitive alloc] init];
    self.navigationItem.title = @"Back";
	[self.navigationController pushViewController:secondDerivitive animated:YES];
}

-(IBAction) loadIndefiniteIntegral:(id)sender
{
    IndefiniteIntegral *indefiniteIntegral = [[IndefiniteIntegral alloc] init];
    self.navigationItem.title = @"Back";
    [indefiniteIntegral GameChoice:1];
	[self.navigationController pushViewController:indefiniteIntegral animated:YES];
}

-(IBAction) loadDefiniteIntegral:(id)sender
{
    IndefiniteIntegral *indefiniteIntegral = [[IndefiniteIntegral alloc] init];
    self.navigationItem.title = @"Back";
    [indefiniteIntegral GameChoice:2];
	[self.navigationController pushViewController:indefiniteIntegral animated:YES];
}

-(IBAction) loadHighScores:(id)sender
{
    HighScores *highScores = [[HighScores alloc] init];
    self.navigationItem.title = @"Back";
    [highScores alertOff];
    //HighScores *highScores = [[HighScores alloc] initWithNibName:@"HighScores" bundle:nil];
	[self.navigationController pushViewController:highScores animated:YES];
}

-(IBAction) loadUpGrade:(id)sender
{
    WebViewController *webViewController = [[WebViewController alloc] init];
    self.navigationItem.title = @"Back";
    //HighScores *highScores = [[HighScores alloc] initWithNibName:@"HighScores" bundle:nil];
	[self.navigationController pushViewController:webViewController animated:YES];
}

- (void)viewDidLoad
{
    self.navigationItem.title = @"Brain Builder Calc";


    [super viewDidLoad];
    [self.view addSubview:_bannerView];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidAppear:(BOOL)animated
{
    self.navigationItem.title = @"Brain Builder Calc";
    [super viewDidAppear:animated];
    [self layoutAnimated:NO];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
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
