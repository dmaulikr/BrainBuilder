//
//  Testing.h
//  Finale
//
//  Created by Fred Kneeland on 8/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CustomPlay;

@interface Testing : UIViewController {
	IBOutlet CustomPlay *customPlay;
}

@property (retain, nonatomic) CustomPlay *customPlay;

@end
