//
//  ViewController.m
//  testApp
//
//  Created by Gawain Bracy II on 3/15/13.
//  Copyright (c) 2013 Gawain Bracy II. All rights reserved.
//

#import "ViewController.h"

@interface UIViewController ()

@end

@implementation UIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Set BG color of view
    self.view.backgroundColor = [UIColor colorWithRed:0.8 green:0.8 blue:0.8 alpha:1] /*#cccccc*/;
}

// this was not auto created, i created this controller
- (void)viewWillAppear:(BOOL)animated
{
    NSArray *bookTopicsArray = [[NSArray alloc] initWithObjects:@"Sara Dillon moces to New York",
                                @"Meets Brit at a dance club",
                                @"Sara falls for Brit",
                                @"Sara meets Max",
                                @"Max falls for Sara",
                                nil];
    NSMutableString *bookTopics = [NSMutableString stringWithCapacity:1];
    
    for (int i=0; i<[bookTopicsArray count]; i++)
    {
        if (i == [bookTopicsArray count]-1)
        {
            [bookTopics appendString:[bookTopicsArray objectAtIndex:i]];
        } else if ( i < [bookTopicsArray count]-1){
            [bookTopics appendFormat:@"%@, ", [bookTopicsArray objectAtIndex:i]];
        } else {
            break;
        }
    };
    
    [super viewWillAppear:animated];
    
    // alloc and init uilabels with position, w and h
    bookTitle        = [[UILabel alloc] initWithFrame:CGRectMake(10.0f,   10.0f, 300.0f,  20.0f)]; //left, top, width, height
    bookAuthorLabel  = [[UILabel alloc] initWithFrame:CGRectMake(10.0f,   40.0f, 100.0f,  20.0f)];
    bookAuthorText   = [[UILabel alloc] initWithFrame:CGRectMake(120.0f,  40.0f, 190.0f,  20.0f)];
    bookPubLabel     = [[UILabel alloc] initWithFrame:CGRectMake(10.0f,   70.0f, 100.0f,  20.0f)];
    bookPubText      = [[UILabel alloc] initWithFrame:CGRectMake(120.0f,  70.0f, 190.0f,  20.0f)];
    bookSummaryLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f,  100.0f, 300.0f,  20.0f)];
    bookSummaryText  = [[UILabel alloc] initWithFrame:CGRectMake(10.0f,  120.0f, 300.0f, 210.0f)];
    bookTopicsLabel  = [[UILabel alloc] initWithFrame:CGRectMake(10.0f,  340.0f, 300.0f,  20.0f)];
    bookTopicsText   = [[UILabel alloc] initWithFrame:CGRectMake(10.0f,  370.0f, 300.0f,  80.0f)];

    // check to make sure it was set right
    if ((bookTitle != nil) &&
        (bookAuthorLabel != nil) &&
        (bookAuthorText != nil) &&
        (bookPubLabel != nil) &&
        (bookPubText != nil) &&
        (bookSummaryLabel != nil) &&
        (bookSummaryText != nil))
    {
        // Label Text
        bookTitle.text          = @"Beautiful Stanger";        // set title of book
        bookAuthorLabel.text    = @"Author: ";          // set author label
        bookAuthorText.text     = @"Christina Lauren";   // set author of book
        bookPubLabel.text       = @"Published: ";
        bookPubText.text        = @"2013";
        bookSummaryLabel.text   = @"Summary: ";
        bookSummaryText.text    = @"Escaping a cheating ex, finance whiz Sara Dillon's moved to New York City and is looking for excitement without a lot of strings attached. So meeting the irresistible, sexy Brit at a dance club should have meant nothing more than a night's fun. But the manner--and speed--with which he melts her inhibitions turns him from a one-time hookup and into her Beautiful Stranger.The whole city knows Max Stella loves women, not that he's ever found one he particularly wants to keep around. Despite pulling in plenty with his Wall Street bad boy charm, it's not until Sara--and the wild photos she lets him take of her--that he starts wondering if there's someone for him outside of the bedroom.Hooking up in places where anybody could catch them, the only thing scarier for Sara than getting caught in public is having Max get too close in private.";

    
        bookTopicsText.text     = bookTopics;
        
        // Label Background Colors
        bookTitle.backgroundColor           = [UIColor blackColor];
        bookAuthorLabel.backgroundColor     = [UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1] /*#cccccc*/;
        bookAuthorText.backgroundColor      = [UIColor colorWithRed:0.8 green:0.8 blue:0.8 alpha:1] /*#cccccc*/;
        bookPubLabel.backgroundColor        = [UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1] /*#cccccc*/;
        bookPubText.backgroundColor         = [UIColor colorWithRed:0.8 green:0.8 blue:0.8 alpha:1] /*#cccccc*/;
        bookSummaryLabel.backgroundColor    = [UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1] /*#cccccc*/;
        bookSummaryText.backgroundColor     = [UIColor colorWithRed:0.8 green:0.8 blue:0.8 alpha:1] /*#cccccc*/;
        bookTopicsLabel.backgroundColor     = [UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1] /*#cccccc*/;
        bookTopicsText.backgroundColor      = [UIColor colorWithRed:0.8 green:0.8 blue:0.8 alpha:1] /*#cccccc*/;
        
        // Label Text Colors
        bookTitle.textColor         = [UIColor whiteColor];
        bookAuthorLabel.textColor   = [UIColor blackColor];
        bookAuthorText.textColor    = [UIColor blackColor];
        bookPubLabel.textColor      = [UIColor blackColor];
        bookPubText.textColor       = [UIColor blackColor];
        bookSummaryLabel.textColor  = [UIColor blackColor];
        bookSummaryText.textColor   = [UIColor blackColor];
        bookTopicsLabel.textColor   = [UIColor blackColor];
        bookTopicsText.textColor    = [UIColor blackColor];
        
        
        
        // Label Allignments
        bookTitle.textAlignment         = NSTextAlignmentCenter;
        bookAuthorLabel.textAlignment   = NSTextAlignmentRight;
        bookAuthorText.textAlignment    = NSTextAlignmentLeft;
        bookPubLabel.textAlignment      = NSTextAlignmentRight;
        bookPubText.textAlignment       = NSTextAlignmentLeft;
        bookSummaryLabel.textAlignment  = NSTextAlignmentLeft;
        bookSummaryText.textAlignment   = NSTextAlignmentCenter;
        bookTopicsLabel.textAlignment   = NSTextAlignmentLeft;
        bookTopicsText.textAlignment    = NSTextAlignmentCenter;
        
        // Label Line Counts
        bookSummaryText.numberOfLines   = 14;
        bookTopicsText.numberOfLines    = 4;
        
    }
    // add labels to view as subviews
    [self.view addSubview:bookTitle];
    [self.view addSubview:bookAuthorLabel];
    [self.view addSubview:bookAuthorText];
    [self.view addSubview:bookPubLabel];
    [self.view addSubview:bookPubText];
    [self.view addSubview:bookSummaryLabel];
    [self.view addSubview:bookSummaryText];
    [self.view addSubview:bookTopicsLabel];
    [self.view addSubview:bookTopicsText];

}

// this was not auto created, i created this controller

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
