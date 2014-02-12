//
//  WebViewController.h
//  BrainBuilderCalc
//
//  Created by Fred Kneeland on 7/3/13.
//
//

#import <UIKit/UIKit.h>

NSURL *assistant;

@interface WebViewController : UIViewController
{
    IBOutlet UIWebView *loader;
}

@property (retain, nonatomic) UIWebView *loader;

@end
