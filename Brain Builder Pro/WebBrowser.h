//
//  WebBrowser.h
//  BrainBuilderPro
//
//  Created by Fred Kneeland on 5/21/12.
//  Copyright (c) 2012 BLADE Enterprises LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

NSURL *webSite;

@interface WebBrowser : UIViewController
{
    IBOutlet UIWebView *unitCircle;
}

@property (retain, nonatomic) UIWebView *unitCircle;

@end
