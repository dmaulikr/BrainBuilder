//
//  ThirdInstructionViewController.h
//  BrainBuilderAttention
//
//  Created by Fred Kneeland on 9/2/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThirdInstructionViewController : UIViewController <UIScrollViewDelegate>
{
    NSUInteger numberPages;
}

@property (nonatomic, strong) NSArray *contentList;

- (IBAction)changePage:(id)sender;
-(IBAction) loadGamePage:(id)sender;

@end
