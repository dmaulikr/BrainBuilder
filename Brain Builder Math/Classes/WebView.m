//
//  WebView.m
//  BrainBuilderMath
//
//  Created by Fred Kneeland on 9/23/12.
//  Copyright (c) 2012 BLADE Enterprises LLC. All rights reserved.
//

#import "WebView.h"

@implementation WebView
@synthesize loader;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    assistant = [[NSURL alloc] initWithString:@"itms-apps://itunes.com/apps/BrainBuilderPro"];
    [loader loadRequest:[NSURLRequest requestWithURL:assistant]];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end