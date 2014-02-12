//
//  WebBrowser.h
//  BrainBuilderTrig
//
//  Created by Fred Kneeland on 3/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

NSURL *appStore;

@interface WebBrowser : UIViewController
{
    IBOutlet UIWebView *brainBuilderPro;
}

@property (retain, nonatomic) UIWebView *brainBuilderPro;

@end
