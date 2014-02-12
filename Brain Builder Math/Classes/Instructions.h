//
//  Instructions.h
//  Gr3y Matt3r 2.0
//
//  Created by Fred Kneeland on 6/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@interface Instructions : UIViewController <ADBannerViewDelegate> {
	IBOutlet UIScrollView *scroller;
}

@property (nonatomic, retain) UIScrollView *scroller;

@end
