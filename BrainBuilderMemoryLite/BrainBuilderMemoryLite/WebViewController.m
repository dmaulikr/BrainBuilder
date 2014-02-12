//
//  WebViewController.m
//  BrainBuilderMemoryLite
//
//  Created by Fred Kneeland on 8/25/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController
@synthesize loader;

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
    assistant = [[NSURL alloc] initWithString:@"itms-apps://itunes.com/apps/BrainBuilderMemory"];
    [loader loadRequest:[NSURLRequest requestWithURL:assistant]];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
