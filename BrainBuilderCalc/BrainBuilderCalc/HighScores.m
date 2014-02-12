//
//  HighScores.m
//  BrainBuilderCalc
//
//  Created by Fred Kneeland on 11/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "HighScores.h"

@interface HighScores ()

@property (nonatomic, strong) IBOutlet UIView *contentView;

@end

@implementation HighScores
{
    ADBannerView *_bannerView;
    
}

@synthesize name1;
@synthesize name2;
@synthesize name3;
@synthesize name4;
@synthesize name5;
@synthesize name6;
@synthesize name7;
@synthesize name8;
@synthesize score1;
@synthesize score2;
@synthesize score3;
@synthesize score4;
@synthesize score5;
@synthesize score6;
@synthesize score7;
@synthesize score8;
@synthesize type1, type2, type3, type4, type5, type6, type7, type8;
@synthesize theName;

- (instancetype)init
{
    self = [super initWithNibName:@"HighScores" bundle:nil];
    if (self) {
        // On iOS 6 ADBannerView introduces a new initializer, use it when available.
        if ([ADBannerView instancesRespondToSelector:@selector(initWithAdType:)]) {
            _bannerView = [[ADBannerView alloc] initWithAdType:ADAdTypeBanner];
        } else {
            _bannerView = [[ADBannerView alloc] init];
        }
        _bannerView.delegate = self;
    }
    return self;
}

- (void)layoutAnimated:(BOOL)animated
{
    // As of iOS 6.0, the banner will automatically resize itself based on its width.
    // To support iOS 5.0 however, we continue to set the currentContentSizeIdentifier appropriately.
    CGRect contentFrame = self.view.bounds;
    if (contentFrame.size.width < contentFrame.size.height) {
        _bannerView.currentContentSizeIdentifier = ADBannerContentSizeIdentifierPortrait;
    } else {
        _bannerView.currentContentSizeIdentifier = ADBannerContentSizeIdentifierLandscape;
    }
    
    CGRect bannerFrame = _bannerView.frame;
    if (_bannerView.bannerLoaded) {
        contentFrame.size.height -= _bannerView.frame.size.height;
        bannerFrame.origin.y = contentFrame.size.height;
    } else {
        bannerFrame.origin.y = contentFrame.size.height;
    }
    
    [UIView animateWithDuration:animated ? 0.25 : 0.0 animations:^{
        _contentView.frame = contentFrame;
        [_contentView layoutIfNeeded];
        _bannerView.frame = bannerFrame;
    }];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

-(void) highScoreQuick
{
	highScore = 1;
}
-(void) highScoreCustom
{
	highScore = 2;
}
-(void) alertOn
{
	Know = 1;
}
-(void) alertOff
{
	Know = 2;
}

-(void) alertView:(UIAlertView *) alertView
clickedButtonAtIndex:(NSInteger)buttonIndex
{
	NSString *buttonTitle = [alertView buttonTitleAtIndex:buttonIndex];
	
	if ([buttonTitle isEqualToString:@"Ok"])
	{
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        if (Know == 1)
        {
            if (Score < Score2 || Score2 == 0)
            {
                name1.text = theName.text;
                [userDefaults setFloat:Score forKey:CALCSCORE2];
                [userDefaults setFloat:Score2 forKey:CALCSCORE3];
                [userDefaults setFloat:Score3 forKey:CALCSCORE4];
                [userDefaults setFloat:Score4 forKey:CALCSCORE5];
                [userDefaults setFloat:Score5 forKey:CALCSCORE6];
                [userDefaults setFloat:Score6 forKey:CALCSCORE7];
                [userDefaults setFloat:Score7 forKey:CALCSCORE8];
                [userDefaults setFloat:Score8 forKey:CALCSCORE9];
                
                [userDefaults setObject:name1.text forKey:CALCNAME1];
                [userDefaults setObject:name2.text forKey:CALCNAME2];
                [userDefaults setObject:name3.text forKey:CALCNAME3];
                [userDefaults setObject:name4.text forKey:CALCNAME4];
                [userDefaults setObject:name5.text forKey:CALCNAME5];
                [userDefaults setObject:name6.text forKey:CALCNAME6];
                [userDefaults setObject:name7.text forKey:CALCNAME7];
                [userDefaults setObject:name8.text forKey:CALCNAME8];
                
                [userDefaults setObject:Type1 forKey:CALCTYPE2];
                [userDefaults setObject:Type2 forKey:CALCTYPE3];
                [userDefaults setObject:Type3 forKey:CALCTYPE4];
                [userDefaults setObject:Type4 forKey:CALCTYPE5];
                [userDefaults setObject:Type5 forKey:CALCTYPE6];
                [userDefaults setObject:Type6 forKey:CALCTYPE7];
                [userDefaults setObject:Type7 forKey:CALCTYPE8];
                [userDefaults setObject:Type8 forKey:CALCTYPE9];
                
            }
            else if (Score < Score3 || Score3 == 0)
            {
                name2.text = theName.text;
                [userDefaults setFloat:Score forKey:CALCSCORE3];
                [userDefaults setFloat:Score2 forKey:CALCSCORE2];
                [userDefaults setFloat:Score3 forKey:CALCSCORE4];
                [userDefaults setFloat:Score4 forKey:CALCSCORE5];
                [userDefaults setFloat:Score5 forKey:CALCSCORE6];
                [userDefaults setFloat:Score6 forKey:CALCSCORE7];
                [userDefaults setFloat:Score7 forKey:CALCSCORE8];
                [userDefaults setFloat:Score8 forKey:CALCSCORE9];
                
                [userDefaults setObject:name1.text forKey:CALCNAME1];
                [userDefaults setObject:name2.text forKey:CALCNAME2];
                [userDefaults setObject:name3.text forKey:CALCNAME3];
                [userDefaults setObject:name4.text forKey:CALCNAME4];
                [userDefaults setObject:name5.text forKey:CALCNAME5];
                [userDefaults setObject:name6.text forKey:CALCNAME6];
                [userDefaults setObject:name7.text forKey:CALCNAME7];
                [userDefaults setObject:name8.text forKey:CALCNAME8];
                
                [userDefaults setObject:Type1 forKey:CALCTYPE3];
                [userDefaults setObject:Type2 forKey:CALCTYPE2];
                [userDefaults setObject:Type3 forKey:CALCTYPE4];
                [userDefaults setObject:Type4 forKey:CALCTYPE5];
                [userDefaults setObject:Type5 forKey:CALCTYPE6];
                [userDefaults setObject:Type6 forKey:CALCTYPE7];
                [userDefaults setObject:Type7 forKey:CALCTYPE8];
                [userDefaults setObject:Type8 forKey:CALCTYPE9];
                
            }
            else if (Score < Score4 || Score4 == 0)
            {
                name3.text = theName.text;
                [userDefaults setFloat:Score forKey:CALCSCORE4];
                [userDefaults setFloat:Score2 forKey:CALCSCORE2];
                [userDefaults setFloat:Score3 forKey:CALCSCORE3];
                [userDefaults setFloat:Score4 forKey:CALCSCORE5];
                [userDefaults setFloat:Score5 forKey:CALCSCORE6];
                [userDefaults setFloat:Score6 forKey:CALCSCORE7];
                [userDefaults setFloat:Score7 forKey:CALCSCORE8];
                [userDefaults setFloat:Score8 forKey:CALCSCORE9];
                
                [userDefaults setObject:name1.text forKey:CALCNAME1];
                [userDefaults setObject:name2.text forKey:CALCNAME2];
                [userDefaults setObject:name3.text forKey:CALCNAME3];
                [userDefaults setObject:name4.text forKey:CALCNAME4];
                [userDefaults setObject:name5.text forKey:CALCNAME5];
                [userDefaults setObject:name6.text forKey:CALCNAME6];
                [userDefaults setObject:name7.text forKey:CALCNAME7];
                [userDefaults setObject:name8.text forKey:CALCNAME8];
                
                [userDefaults setObject:Type1 forKey:CALCTYPE4];
                [userDefaults setObject:Type2 forKey:CALCTYPE2];
                [userDefaults setObject:Type3 forKey:CALCTYPE3];
                [userDefaults setObject:Type4 forKey:CALCTYPE5];
                [userDefaults setObject:Type5 forKey:CALCTYPE6];
                [userDefaults setObject:Type6 forKey:CALCTYPE7];
                [userDefaults setObject:Type7 forKey:CALCTYPE8];
                [userDefaults setObject:Type8 forKey:CALCTYPE9];
                
            }
            else if (Score < Score5 || Score5 == 0)
            {
                name4.text = theName.text;
                [userDefaults setFloat:Score forKey:CALCSCORE5];
                [userDefaults setFloat:Score2 forKey:CALCSCORE2];
                [userDefaults setFloat:Score3 forKey:CALCSCORE3];
                [userDefaults setFloat:Score4 forKey:CALCSCORE4];
                [userDefaults setFloat:Score5 forKey:CALCSCORE6];
                [userDefaults setFloat:Score6 forKey:CALCSCORE7];
                [userDefaults setFloat:Score7 forKey:CALCSCORE8];
                [userDefaults setFloat:Score8 forKey:CALCSCORE9];
                
                [userDefaults setObject:name1.text forKey:CALCNAME1];
                [userDefaults setObject:name2.text forKey:CALCNAME2];
                [userDefaults setObject:name3.text forKey:CALCNAME3];
                [userDefaults setObject:name4.text forKey:CALCNAME4];
                [userDefaults setObject:name5.text forKey:CALCNAME5];
                [userDefaults setObject:name6.text forKey:CALCNAME6];
                [userDefaults setObject:name7.text forKey:CALCNAME7];
                [userDefaults setObject:name8.text forKey:CALCNAME8];
                
                [userDefaults setObject:Type1 forKey:CALCTYPE5];
                [userDefaults setObject:Type2 forKey:CALCTYPE2];
                [userDefaults setObject:Type3 forKey:CALCTYPE3];
                [userDefaults setObject:Type4 forKey:CALCTYPE4];
                [userDefaults setObject:Type5 forKey:CALCTYPE6];
                [userDefaults setObject:Type6 forKey:CALCTYPE7];
                [userDefaults setObject:Type7 forKey:CALCTYPE8];
                [userDefaults setObject:Type8 forKey:CALCTYPE9];
                
            }
            else if (Score < Score6 || Score6 == 0)
            {
                name5.text = theName.text;
                [userDefaults setFloat:Score forKey:CALCSCORE6];
                [userDefaults setFloat:Score2 forKey:CALCSCORE2];
                [userDefaults setFloat:Score3 forKey:CALCSCORE3];
                [userDefaults setFloat:Score4 forKey:CALCSCORE4];
                [userDefaults setFloat:Score5 forKey:CALCSCORE5];
                [userDefaults setFloat:Score6 forKey:CALCSCORE7];
                [userDefaults setFloat:Score7 forKey:CALCSCORE8];
                [userDefaults setFloat:Score8 forKey:CALCSCORE9];
                
                [userDefaults setObject:name1.text forKey:CALCNAME1];
                [userDefaults setObject:name2.text forKey:CALCNAME2];
                [userDefaults setObject:name3.text forKey:CALCNAME3];
                [userDefaults setObject:name4.text forKey:CALCNAME4];
                [userDefaults setObject:name5.text forKey:CALCNAME5];
                [userDefaults setObject:name6.text forKey:CALCNAME6];
                [userDefaults setObject:name7.text forKey:CALCNAME7];
                [userDefaults setObject:name8.text forKey:CALCNAME8];
                
                [userDefaults setObject:Type1 forKey:CALCTYPE6];
                [userDefaults setObject:Type2 forKey:CALCTYPE2];
                [userDefaults setObject:Type3 forKey:CALCTYPE3];
                [userDefaults setObject:Type4 forKey:CALCTYPE4];
                [userDefaults setObject:Type5 forKey:CALCTYPE5];
                [userDefaults setObject:Type6 forKey:CALCTYPE7];
                [userDefaults setObject:Type7 forKey:CALCTYPE8];
                [userDefaults setObject:Type8 forKey:CALCTYPE9];
                
            }
            else if (Score < Score7 || Score7 == 0)
            {
                name6.text = theName.text;
                [userDefaults setFloat:Score forKey:CALCSCORE7];
                [userDefaults setFloat:Score2 forKey:CALCSCORE2];
                [userDefaults setFloat:Score3 forKey:CALCSCORE3];
                [userDefaults setFloat:Score4 forKey:CALCSCORE4];
                [userDefaults setFloat:Score5 forKey:CALCSCORE5];
                [userDefaults setFloat:Score6 forKey:CALCSCORE6];
                [userDefaults setFloat:Score7 forKey:CALCSCORE8];
                [userDefaults setFloat:Score8 forKey:CALCSCORE9];
                
                [userDefaults setObject:name1.text forKey:CALCNAME1];
                [userDefaults setObject:name2.text forKey:CALCNAME2];
                [userDefaults setObject:name3.text forKey:CALCNAME3];
                [userDefaults setObject:name4.text forKey:CALCNAME4];
                [userDefaults setObject:name5.text forKey:CALCNAME5];
                [userDefaults setObject:name6.text forKey:CALCNAME6];
                [userDefaults setObject:name7.text forKey:CALCNAME7];
                [userDefaults setObject:name8.text forKey:CALCNAME8];
                
                [userDefaults setObject:Type1 forKey:CALCTYPE7];
                [userDefaults setObject:Type2 forKey:CALCTYPE2];
                [userDefaults setObject:Type3 forKey:CALCTYPE3];
                [userDefaults setObject:Type4 forKey:CALCTYPE4];
                [userDefaults setObject:Type5 forKey:CALCTYPE5];
                [userDefaults setObject:Type6 forKey:CALCTYPE6];
                [userDefaults setObject:Type7 forKey:CALCTYPE8];
                [userDefaults setObject:Type8 forKey:CALCTYPE9];
                
            }
            else if (Score < Score8 || Score8 == 0)
            {
                name7.text = theName.text;
                [userDefaults setFloat:Score forKey:CALCSCORE8];
                [userDefaults setFloat:Score2 forKey:CALCSCORE2];
                [userDefaults setFloat:Score3 forKey:CALCSCORE3];
                [userDefaults setFloat:Score4 forKey:CALCSCORE4];
                [userDefaults setFloat:Score5 forKey:CALCSCORE5];
                [userDefaults setFloat:Score6 forKey:CALCSCORE6];
                [userDefaults setFloat:Score7 forKey:CALCSCORE7];
                [userDefaults setFloat:Score8 forKey:CALCSCORE9];
                
                [userDefaults setObject:name1.text forKey:CALCNAME1];
                [userDefaults setObject:name2.text forKey:CALCNAME2];
                [userDefaults setObject:name3.text forKey:CALCNAME3];
                [userDefaults setObject:name4.text forKey:CALCNAME4];
                [userDefaults setObject:name5.text forKey:CALCNAME5];
                [userDefaults setObject:name6.text forKey:CALCNAME6];
                [userDefaults setObject:name7.text forKey:CALCNAME7];
                [userDefaults setObject:name8.text forKey:CALCNAME8];
                
                [userDefaults setObject:Type1 forKey:CALCTYPE8];
                [userDefaults setObject:Type2 forKey:CALCTYPE2];
                [userDefaults setObject:Type3 forKey:CALCTYPE3];
                [userDefaults setObject:Type4 forKey:CALCTYPE4];
                [userDefaults setObject:Type5 forKey:CALCTYPE5];
                [userDefaults setObject:Type6 forKey:CALCTYPE6];
                [userDefaults setObject:Type7 forKey:CALCTYPE7];
                [userDefaults setObject:Type8 forKey:CALCTYPE9];
                
            }
            else
            {
                name8.text = theName.text;
                [userDefaults setFloat:Score forKey:CALCSCORE9];
                [userDefaults setFloat:Score2 forKey:CALCSCORE2];
                [userDefaults setFloat:Score3 forKey:CALCSCORE3];
                [userDefaults setFloat:Score4 forKey:CALCSCORE4];
                [userDefaults setFloat:Score5 forKey:CALCSCORE5];
                [userDefaults setFloat:Score6 forKey:CALCSCORE6];
                [userDefaults setFloat:Score7 forKey:CALCSCORE7];
                [userDefaults setFloat:Score8 forKey:CALCSCORE8];
                
                [userDefaults setObject:name1.text forKey:CALCNAME1];
                [userDefaults setObject:name2.text forKey:CALCNAME2];
                [userDefaults setObject:name3.text forKey:CALCNAME3];
                [userDefaults setObject:name4.text forKey:CALCNAME4];
                [userDefaults setObject:name5.text forKey:CALCNAME5];
                [userDefaults setObject:name6.text forKey:CALCNAME6];
                [userDefaults setObject:name7.text forKey:CALCNAME7];
                [userDefaults setObject:name8.text forKey:CALCNAME8];
                
                [userDefaults setObject:Type1 forKey:CALCTYPE9];
                [userDefaults setObject:Type2 forKey:CALCTYPE2];
                [userDefaults setObject:Type3 forKey:CALCTYPE3];
                [userDefaults setObject:Type4 forKey:CALCTYPE4];
                [userDefaults setObject:Type5 forKey:CALCTYPE5];
                [userDefaults setObject:Type6 forKey:CALCTYPE6];
                [userDefaults setObject:Type7 forKey:CALCTYPE7];
                [userDefaults setObject:Type8 forKey:CALCTYPE8];
            }
		}
	}
	else
    {
		alertChoice = 0;
	}
    
}


#pragma mark - View lifecycle

- (void)viewDidLoad
{
    self.navigationItem.title = @"High Scores!!";
	NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
	Score = [userDefaults floatForKey:CALCSCORE];
	Score2 = [userDefaults floatForKey:CALCSCORE2];
	Score3 = [userDefaults floatForKey:CALCSCORE3];
	Score4 = [userDefaults floatForKey:CALCSCORE4];
	Score5 = [userDefaults floatForKey:CALCSCORE5];
	Score6 = [userDefaults floatForKey:CALCSCORE6];
	Score7 = [userDefaults floatForKey:CALCSCORE7];
	Score8 = [userDefaults floatForKey:CALCSCORE8];
	Score9 = [userDefaults floatForKey:CALCSCORE9];
	Names1 = [userDefaults stringForKey:CALCNAME1];
	Names2 = [userDefaults stringForKey:CALCNAME2];
	Names3 = [userDefaults stringForKey:CALCNAME3];
	Names4 = [userDefaults stringForKey:CALCNAME4];
	Names5 = [userDefaults stringForKey:CALCNAME5];
	Names6 = [userDefaults stringForKey:CALCNAME6];
	Names7 = [userDefaults stringForKey:CALCNAME7];
	Names8 = [userDefaults stringForKey:CALCNAME8];
    Type1 = [userDefaults stringForKey:CALCTYPE];
    Type2 = [userDefaults stringForKey:CALCTYPE2];
    Type3 = [userDefaults stringForKey:CALCTYPE3];
    Type4 = [userDefaults stringForKey:CALCTYPE4];
    Type5 = [userDefaults stringForKey:CALCTYPE5];
    Type6 = [userDefaults stringForKey:CALCTYPE6];
    Type7 = [userDefaults stringForKey:CALCTYPE7];
    Type8 = [userDefaults stringForKey:CALCTYPE8];
    Type9 = [userDefaults stringForKey:CALCTYPE9];
	TheScore1 = [[NSString alloc] initWithFormat:@"%1.2f", Score];
	TheScore2 = [[NSString alloc] initWithFormat:@"%1.2f", Score2];
	TheScore3 = [[NSString alloc] initWithFormat:@"%1.2f", Score3];
	TheScore4 = [[NSString alloc] initWithFormat:@"%1.2f", Score4];
	TheScore5 = [[NSString alloc] initWithFormat:@"%1.2f", Score5];
	TheScore6 = [[NSString alloc] initWithFormat:@"%1.2f", Score6];
	TheScore7 = [[NSString alloc] initWithFormat:@"%1.2f", Score7];
	TheScore8 = [[NSString alloc] initWithFormat:@"%1.2f", Score8];
	TheScore9 = [[NSString alloc] initWithFormat:@"%1.2f", Score9];
	if (Know == 1)
	{
		NSString *alertMessage;
		NSString *name;
		UIAlertView *setHighScore;
		
		name = [[NSString alloc] initWithFormat:@"Tom"];
		
		alertMessage = [[NSString alloc] initWithFormat:@"Name:																							"];
		setHighScore = [[UIAlertView alloc]
						initWithTitle:@"Set Score"
						message:alertMessage
						delegate:self
						cancelButtonTitle:@"Ok"
						otherButtonTitles:nil];
		theName = [[UITextField alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 150.0f, 30.0f)];
		theName.borderStyle = UITextBorderStyleRoundedRect;
		theName.tag = 1;
		theName.placeholder = @"Name";
		theName.clearButtonMode = UITextFieldViewModeWhileEditing;
		theName.keyboardType = UIKeyboardTypeAlphabet;
		theName.keyboardAppearance = UIKeyboardAppearanceAlert;
		theName.autocapitalizationType = UITextAutocapitalizationTypeWords;
		theName.autocorrectionType = UITextAutocorrectionTypeNo;
		theName.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
		[setHighScore show];
		
		if (CGRectEqualToRect(setHighScore.bounds, CGRectZero))
        {
            
        }
		
		CGRect bounds = setHighScore.bounds;
		theName.center = CGPointMake(bounds.size.width + 200.0f, bounds.size.height + 55.0f);
		
		[setHighScore addSubview:theName];
		
		
		
		if ((Score < Score2) || (Score2 == 0))
		{
			score1.text = TheScore1;
			score2.text = TheScore2;
			score3.text = TheScore3;
			score4.text = TheScore4;
			score5.text = TheScore5;
			score6.text = TheScore6;
			score7.text = TheScore7;
			score8.text = TheScore8;
			
			name2.text = Names1;
			name3.text = Names2;
			name4.text = Names3;
			name5.text = Names4;
			name6.text = Names5;
			name7.text = Names6;
			name8.text = Names7;
            
            type1.text = Type1;
            type2.text = Type2;
            type3.text = Type3;
            type4.text = Type4;
            type5.text = Type5;
            type6.text = Type6;
            type7.text = Type7;
            type8.text = Type8;
		}
		else if ((Score < Score3) || (Score3 == 0))
		{
			score1.text = TheScore2;
			score2.text = TheScore1;
			score3.text = TheScore3;
			score4.text = TheScore4;
			score5.text = TheScore5;
			score6.text = TheScore6;
			score7.text = TheScore7;
			score8.text = TheScore8;
            
			name1.text = Names1;
			name3.text = Names2;
			name4.text = Names3;
			name5.text = Names4;
			name6.text = Names5;
			name7.text = Names6;
			name8.text = Names7;
            
            type1.text = Type2;
            type2.text = Type1;
            type3.text = Type3;
            type4.text = Type4;
            type5.text = Type5;
            type6.text = Type6;
            type7.text = Type7;
            type8.text = Type8;
			
		}
		else if ((Score < Score4) || (Score4 == 0))
		{
			score1.text = TheScore2;
			score2.text = TheScore3;
			score3.text = TheScore1;
			score4.text = TheScore4;
			score5.text = TheScore5;
			score6.text = TheScore6;
			score7.text = TheScore7;
			score8.text = TheScore8;
			
			name1.text = Names1;
			name2.text = Names2;
			name4.text = Names3;
			name5.text = Names4;
			name6.text = Names5;
			name7.text = Names6;
			name8.text = Names7;
            
            type1.text = Type2;
            type2.text = Type3;
            type3.text = Type1;
            type4.text = Type4;
            type5.text = Type5;
            type6.text = Type6;
            type7.text = Type7;
            type8.text = Type8;
			
		}
		else if ((Score < Score5) || (Score5 == 0))
		{
			score1.text = TheScore2;
			score2.text = TheScore3;
			score3.text = TheScore4;
			score4.text = TheScore1;
			score5.text = TheScore5;
			score6.text = TheScore6;
			score7.text = TheScore7;
			score8.text = TheScore8;
			
			name1.text = Names1;
			name2.text = Names2;
			name3.text = Names3;
			name5.text = Names4;
			name6.text = Names5;
			name7.text = Names6;
			name8.text = Names7;
            
            type1.text = Type2;
            type2.text = Type3;
            type3.text = Type4;
            type4.text = Type1;
            type5.text = Type5;
            type6.text = Type6;
            type7.text = Type7;
            type8.text = Type8;
		}
		else if ((Score < Score6) || (Score6 == 0))
		{
			score1.text = TheScore2;
			score2.text = TheScore3;
			score3.text = TheScore4;
			score4.text = TheScore5;
			score5.text = TheScore1;
			score6.text = TheScore6;
			score7.text = TheScore7;
			score8.text = TheScore8;
            
			name1.text = Names1;
			name2.text = Names2;
			name3.text = Names3;
			name4.text = Names4;
			name6.text = Names5;
			name7.text = Names6;
			name8.text = Names7;
            
            type1.text = Type2;
            type2.text = Type3;
            type3.text = Type4;
            type4.text = Type5;
            type5.text = Type1;
            type6.text = Type6;
            type7.text = Type7;
            type8.text = Type8;
		}
		else if ((Score < Score7) || (Score7 == 0))
		{
			score1.text = TheScore2;
			score2.text = TheScore3;
			score3.text = TheScore4;
			score4.text = TheScore5;
			score5.text = TheScore6;
			score6.text = TheScore1;
			score7.text = TheScore7;
			score8.text = TheScore8;
			
			name1.text = Names1;
			name2.text = Names2;
			name3.text = Names3;
			name4.text = Names4;
			name5.text = Names5;
			name7.text = Names6;
			name8.text = Names7;
			
            type1.text = Type2;
            type2.text = Type3;
            type3.text = Type4;
            type4.text = Type5;
            type5.text = Type6;
            type6.text = Type1;
            type7.text = Type7;
            type8.text = Type8;
		}
		else if ((Score < Score8) || (Score8 == 0))
		{
			score1.text = TheScore2;
			score2.text = TheScore3;
			score3.text = TheScore4;
			score4.text = TheScore5;
			score5.text = TheScore6;
			score6.text = TheScore7;
			score7.text = TheScore1;
			score8.text = TheScore8;
			
			name1.text = Names1;
			name2.text = Names2;
			name3.text = Names3;
			name4.text = Names4;
			name5.text = Names5;
			name6.text = Names6;
			name8.text = Names7;
            
            type1.text = Type2;
            type2.text = Type3;
            type3.text = Type4;
            type4.text = Type5;
            type5.text = Type6;
            type6.text = Type7;
            type7.text = Type1;
            type8.text = Type8;
		}
		else
		{
			score1.text = TheScore2;
			score2.text = TheScore3;
			score3.text = TheScore4;
			score4.text = TheScore5;
			score5.text = TheScore6;
			score6.text = TheScore7;
			score7.text = TheScore8;
			score8.text = TheScore1;
			
			name1.text = Names1;
			name2.text = Names2;
			name3.text = Names3;
			name4.text = Names4;
			name5.text = Names5;
			name6.text = Names6;
			name7.text = Names7;
            
            type1.text = Type2;
            type2.text = Type3;
            type3.text = Type4;
            type4.text = Type5;
            type5.text = Type6;
            type6.text = Type7;
            type7.text = Type8;
            type8.text = Type1;
		}
	}
	else
	{
		score1.text = TheScore2;
		score2.text = TheScore3;
		score3.text = TheScore4;
		score4.text = TheScore5;
		score5.text = TheScore6;
		score6.text = TheScore7;
		score7.text = TheScore8;
		score8.text = TheScore9;
		name1.text = Names1;
		name2.text = Names2;
		name3.text = Names3;
		name4.text = Names4;
		name5.text = Names5;
		name6.text = Names6;
		name7.text = Names7;
		name8.text = Names8;
        type1.text = Type2;
        type2.text = Type3;
        type3.text = Type4;
        type4.text = Type5;
        type5.text = Type6;
        type6.text = Type7;
        type7.text = Type8;
        type8.text = Type9;
	}
	
	if ([score8.text isEqualToString:@"0.00"])
	{
		score8.text = @"";
	}
	if ([score1.text isEqualToString:@"0.00"])
	{
		score1.text = @"";
	}
	if ([score2.text isEqualToString:@"0.00"])
	{
		score2.text = @"";
	}
	if ([score3.text isEqualToString:@"0.00"])
	{
		score3.text = @"";
	}
	if ([score4.text isEqualToString:@"0.00"])
	{
		score4.text = @"";
	}
	if ([score5.text isEqualToString:@"0.00"])
	{
		score5.text = @"";
	}
	if ([score6.text isEqualToString:@"0.00"])
	{
		score6.text = @"";
	}
	if ([score7.text isEqualToString:@"0.00"])
	{
		score7.text = @"";
	}

    [self.view addSubview:_bannerView];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self layoutAnimated:NO];
}

- (void)viewDidDisappear:(BOOL)animated
{
    Know = 2;
    [super viewDidDisappear:animated];
}

#if __IPHONE_OS_VERSION_MIN_REQUIRED < __IPHONE_6_0
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}
#endif

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskAll;
}

- (void)viewDidLayoutSubviews
{
    [self layoutAnimated:[UIView areAnimationsEnabled]];
}

- (void)bannerViewDidLoadAd:(ADBannerView *)banner
{
    //test.text = @"Hello world";
    [self layoutAnimated:YES];
}

- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
    //test.text = @"Hello world";
    [self layoutAnimated:YES];
}

- (BOOL)bannerViewActionShouldBegin:(ADBannerView *)banner willLeaveApplication:(BOOL)willLeave
{
    return YES;
}

- (void)bannerViewActionDidFinish:(ADBannerView *)banner
{
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
