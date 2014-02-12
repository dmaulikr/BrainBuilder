//
//  WebViewController.h
//  BrainBuilderGeometry
//
//  Created by Fred Kneeland on 8/13/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import <UIKit/UIKit.h>

NSURL *assistant;

@interface WebViewController : UIViewController
{
    IBOutlet UIWebView *loader;
}

@property (retain, nonatomic) UIWebView *loader;

@end
