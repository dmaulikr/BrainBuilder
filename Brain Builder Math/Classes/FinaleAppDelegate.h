//
//  FinaleAppDelegate.h
//  Finale
//
//  Created by Fred Kneeland on 8/11/11.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FinaleAppDelegate : UIResponder <UIApplicationDelegate, UINavigationControllerDelegate> {
    UIWindow *window;
	UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end

