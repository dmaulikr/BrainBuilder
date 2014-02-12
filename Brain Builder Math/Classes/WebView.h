//
//  WebView.h
//  BrainBuilderMath
//
//  Created by Fred Kneeland on 9/23/12.
//  Copyright (c) 2012 BLADE Enterprises LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

NSURL *assistant;

@interface WebView : UIViewController
{
    IBOutlet UIWebView *loader;
}

@property (retain, nonatomic) UIWebView *loader;

@end
