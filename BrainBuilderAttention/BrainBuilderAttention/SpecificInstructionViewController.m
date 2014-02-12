//
//  SpecificInstructionViewController.m
//  BrainBuilderAttention
//
//  Created by Fred Kneeland on 9/2/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import "SpecificInstructionViewController.h"

@interface SpecificInstructionViewController ()
{
    int pageNumber;
}

@end

@implementation SpecificInstructionViewController
@synthesize test;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id)initWithPageNumber:(NSUInteger)page
{
    if (self = [super initWithNibName:@"SpecificInstructionViewController" bundle:nil])
    {
        pageNumber = page;
      
        if (page == 1)
        {
            //self.texts.text = @"Touch the edge of the screen in the direction that the Blue Arrow is pointing.";
        }
         
         
    }
    return self;
}


- (void)viewDidLoad
{
    test.text = [NSString stringWithFormat:@"Page %d", pageNumber + 1];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
