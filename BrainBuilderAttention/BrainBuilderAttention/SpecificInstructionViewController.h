//
//  SpecificInstructionViewController.h
//  BrainBuilderAttention
//
//  Created by Fred Kneeland on 9/2/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SpecificInstructionViewController : UIViewController
{
    IBOutlet UILabel *test;
}

@property (nonatomic, strong) IBOutlet UILabel *numberTitle;
@property (nonatomic, strong) IBOutlet UILabel *touchSpot1;
@property (nonatomic, strong) IBOutlet UILabel *touchSpot2;
@property (retain, nonatomic) IBOutlet UITextView *texts;
@property (nonatomic, strong) IBOutlet UIImageView *firstImage;
@property (nonatomic, strong) IBOutlet UIImageView *secondImage;
@property (nonatomic, strong) IBOutlet UIImageView *thirdImage;
@property (nonatomic, strong) IBOutlet UIImageView *fourthImage;
@property (retain, nonatomic) UILabel *test;
@property (nonatomic, strong) IBOutlet UILabel *pageNumb;

- (id)initWithPageNumber:(NSUInteger)page;

@end
