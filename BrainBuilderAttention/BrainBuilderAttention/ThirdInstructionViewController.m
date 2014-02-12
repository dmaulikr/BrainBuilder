//
//  ThirdInstructionViewController.m
//  BrainBuilderAttention
//
//  Created by Fred Kneeland on 9/2/13.
//  Copyright (c) 2013 Fred Kneeland. All rights reserved.
//

#import "ThirdInstructionViewController.h"
#import "SpecificInstructionViewController.h"
#import "GameViewController.h"

//static NSString *kNameKey = @"nameKey";
//static NSString *kImageKey = @"imageKey";

@interface ThirdInstructionViewController ()

@property (nonatomic, strong) IBOutlet UIScrollView *scrollView;
@property (nonatomic, strong) IBOutlet UIPageControl *pageControl;
@property (nonatomic, strong) NSMutableArray *viewControllers;
@property (nonatomic, strong) IBOutlet UILabel *test;

@end

#pragma mark -

@implementation ThirdInstructionViewController

/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
 */

- (void)awakeFromNib
{
	// load our data from a plist file inside our app bundle
    NSString *path = [[NSBundle mainBundle] pathForResource:@"content_iPhone" ofType:@"plist"];
    self.contentList = [NSArray arrayWithContentsOfFile:path];
}

-(IBAction) loadGamePage:(id)sender
{
    GameViewController *gameViewController = [[GameViewController alloc] init];
    self.navigationItem.title = @"Back";
    [self.navigationController pushViewController:gameViewController animated:YES];
}


- (void)viewDidLoad
{
    self.navigationItem.title = @"Instructions";
    UIBarButtonItem *button2 = [[UIBarButtonItem alloc] initWithTitle:@"Play!!"
                                                                style:UIBarButtonItemStyleBordered
															   target:self
															   action:@selector(loadGamePage:)];
    self.navigationItem.rightBarButtonItem = button2;

    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //self.contentList.count = 5;
    numberPages = 7;//self.contentList.count;
    
    // view controllers are created lazily
    // in the meantime, load the array with placeholders which will be replaced on demand
    NSMutableArray *controllers = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < numberPages; i++)
    {
		[controllers addObject:[NSNull null]];
    }
    self.viewControllers = controllers;
    
    // a page is the width of the scroll view
    self.scrollView.pagingEnabled = YES;
    self.scrollView.contentSize =
    CGSizeMake(CGRectGetWidth(self.scrollView.frame) * numberPages, CGRectGetHeight(self.scrollView.frame));
    self.scrollView.showsHorizontalScrollIndicator = NO;
    self.scrollView.showsVerticalScrollIndicator = NO;
    self.scrollView.scrollsToTop = NO;
    //self.scrollView.delegate = self;
    
    self.pageControl.numberOfPages = numberPages;
    self.pageControl.currentPage = 0;
    
    // pages are created on demand
    // load the visible page
    // load the page on either side to avoid flashes when the user starts scrolling
    //
    [self loadScrollViewWithPage:0];
    [self loadScrollViewWithPage:1];
}

- (void)loadScrollViewWithPage:(NSUInteger)page
{

    if (page >= numberPages)//self.contentList.count)
        return;
    
    // replace the placeholder if necessary
    SpecificInstructionViewController *controller = [self.viewControllers objectAtIndex:page];
    if ((NSNull *)controller == [NSNull null])
    {
        controller = [[SpecificInstructionViewController alloc] initWithPageNumber:page];
        [self.viewControllers replaceObjectAtIndex:page withObject:controller];
    }
    
    // add the controller's view to the scroll view
    if (controller.view.superview == nil)
    {
        CGRect frame = self.scrollView.frame;
        frame.origin.x = CGRectGetWidth(frame) * page;
        frame.origin.y = 0;
        controller.view.frame = frame;
        
        [self addChildViewController:controller];
        [self.scrollView addSubview:controller.view];
        [controller didMoveToParentViewController:self];
        
        //NSDictionary *numberItem = [self.contentList objectAtIndex:page];
        //controller.numberImage.image = [UIImage imageNamed:[numberItem valueForKey:kImageKey]];
        //controller.numberTitle.text = [numberItem valueForKey:kNameKey];
        
        if (page == 0)
        {
            controller.texts.text = @"One or more arrows will appear on the screen.";
            controller.touchSpot1.text = @"";
            controller.touchSpot2.text = @"";
            controller.firstImage.image = [UIImage imageNamed:@"Empty2.png"];
            controller.secondImage.image = [UIImage imageNamed:@"Empty2.png"];
            controller.thirdImage.image = [UIImage imageNamed:@"Empty2.png"];
            controller.pageNumb.text = @"1.";
        }
        else if (page == 1)
        {
            controller.texts.text = @"Touch near the edge or corner of the screen in the direction the blue arrow is pointing.";
            controller.touchSpot1.text = @"Touch!";
            controller.touchSpot2.text = @"";
            controller.firstImage.image = [UIImage imageNamed:@"Empty2.png"];
            controller.secondImage.image = [UIImage imageNamed:@"DownBlueArrow.png"];
            controller.thirdImage.image = [UIImage imageNamed:@"Empty2.png"];
            controller.pageNumb.text = @"2.";
        }
        else if (page == 2)
        {
            controller.texts.text = @"Pink Arrows give you bonus time!";
            controller.touchSpot1.text = @"Touch!";
            controller.touchSpot2.text = @"";
            controller.firstImage.image = [UIImage imageNamed:@"Empty2.png"];
            controller.secondImage.image = [UIImage imageNamed:@"downPinkArrow.png"];
            controller.thirdImage.image = [UIImage imageNamed:@"Empty2.png"];
            controller.pageNumb.text = @"2.";
        }
        else if (page == 3)
        {
            controller.texts.text = @"Don't let arrows of a different color distract you!";
            controller.touchSpot1.text = @"Touch!";
            controller.touchSpot2.text = @"";
            controller.firstImage.image = [UIImage imageNamed:@"DownBlueArrow.png"];
            controller.secondImage.image = [UIImage imageNamed:@"rightOrangeArrow.png"];
            controller.thirdImage.image = [UIImage imageNamed:@"LeftGreenArrow.png"];
            controller.pageNumb.text = @"3.";
        }
        else if (page == 4)
        {
            controller.texts.text = @"Arrows will not always be straight, touch in direction they are pointing.";
            controller.touchSpot1.text = @"Touch";
            controller.touchSpot2.text = @"";
            controller.firstImage.image = [UIImage imageNamed:@"Empty2.png"];
            controller.secondImage.image = [UIImage imageNamed:@"TurnedDownBlueArrow.png"];
            controller.thirdImage.image = [UIImage imageNamed:@"Empty2.png"];
            controller.pageNumb.text = @"4.";
        }
        else if (page == 5)
        {
            controller.texts.text = @"If an arrow is pointing at an angle touch the corner it would be pointing towards if it was in the center of the screen.";
            controller.touchSpot1.text = @"";
            controller.touchSpot2.text = @"Touch";
            controller.firstImage.image = [UIImage imageNamed:@"Empty2.png"];
            controller.secondImage.image = [UIImage imageNamed:@"Empty2.png"];
            controller.thirdImage.image = [UIImage imageNamed:@"Empty2.png"];
            controller.fourthImage.image = [UIImage imageNamed:@"SEBlueArrow.png"];
            controller.pageNumb.text = @"5.";
        }
        else if (page == 6)
        {
            controller.texts.text = @"On higher levels there may be multiply blue arrows. Touch in the combined direction of those arrows which will sometimes mean touching the corner.";
            controller.touchSpot1.text = @"";
            controller.touchSpot2.text = @"Touch";
            controller.firstImage.image = [UIImage imageNamed:@"RightBlueArrow.png"];
            controller.secondImage.image = [UIImage imageNamed:@"DownBlueArrow.png"];
            controller.thirdImage.image = [UIImage imageNamed:@"Empty2.png"];
            controller.pageNumb.text = @"5.";
        }
        else if (page == 7)
        {
            controller.texts.text = @"Sometimes blue arrows can cancel each other out.";
            controller.touchSpot1.text = @"Touch!";
            controller.touchSpot2.text = @"";
            controller.firstImage.image = [UIImage imageNamed:@"RightBlueArrow.png"];
            controller.secondImage.image = [UIImage imageNamed:@"DownBlueArrow.png"];
            controller.thirdImage.image = [UIImage imageNamed:@"LeftBlueArrow.png"];
            controller.pageNumb.text = @"6.";
        }
    }
}


// at the end of scroll animation, reset the boolean used when scrolls originate from the UIPageControl
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    // switch the indicator when more than 50% of the previous/next page is visible
    CGFloat pageWidth = CGRectGetWidth(self.scrollView.frame);
    NSUInteger page = floor((self.scrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
    self.pageControl.currentPage = page;
    
    // load the visible page and the page on either side of it (to avoid flashes when the user starts scrolling)
    [self loadScrollViewWithPage:page - 1];
    [self loadScrollViewWithPage:page];
    [self loadScrollViewWithPage:page + 1];
    
    // a possible optimization would be to unload the views+controllers which are no longer visible
}

- (void)gotoPage:(BOOL)animated
{
    NSInteger page = self.pageControl.currentPage;
    
    // load the visible page and the page on either side of it (to avoid flashes when the user starts scrolling)
    [self loadScrollViewWithPage:page - 1];
    [self loadScrollViewWithPage:page];
    [self loadScrollViewWithPage:page + 1];
    
	// update the scroll view to the appropriate page
    CGRect bounds = self.scrollView.bounds;
    bounds.origin.x = CGRectGetWidth(bounds) * page;
    bounds.origin.y = 0;
    [self.scrollView scrollRectToVisible:bounds animated:animated];
}

- (IBAction)changePage:(id)sender
{
    [self gotoPage:YES];    // YES = animate
}


/*
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
 */

@end
