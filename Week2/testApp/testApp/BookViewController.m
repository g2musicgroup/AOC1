//
//  ViewController.m
//  testApp
//
//  Created by Gawain Bracy II on 3/15/13.
//  Copyright (c) 2013 Gawain Bracy II. All rights reserved.
//

#import "BookViewController.h"

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
    NSArray *bookTopicsArray = [[NSArray alloc] initWithObjects:@"Leaders of the pack: Napolean and Tau",
                                @"Teaching Meg to Swim",
                                @"Attacked by Tsavo",
                                @"The Hyena that died in 1 year",
                                @"Hunting in South Africa",
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
        bookTitle.text          = @"Part of the Pride: My Life Among the Big Cats of Africa";        // set title of book
        bookAuthorLabel.text    = @"Author: ";          // set author label
        bookAuthorText.text     = @"Kevin Richardson";   // set author of book
        bookPubLabel.text       = @"Published: ";
        bookPubText.text        = @"2009";
        bookSummaryLabel.text   = @"Summary: ";
        bookSummaryText.text    = @"About a year ago, film started to circulate on YouTube® of a remarkable man named Kevin Richardson, an animal custodian in a South African animal park. The film showed Richardson in his day-to-day work, looking some of the world's most dangerous animals directly in the eye, crouching down at their level, playing with them and, sometimes, even kissing them on the nose--all without ever being attacked or injured. The films’ popularity skyrocketed and Richardson became an international sensation. In “Part of the Pride”, Kevin Richardson tells the story of his life and work, how he grew from a young boy who cared for so many animals that he was called “The Bird Man of Orange Grove” to an adolescent who ran wild and, finally, to a man who is able to cross the divide between humans and predators. As a self-taught animal behaviorist, Richardson has broken every safety rule known to humans when working with these wild animals. Flouting common misconceptions that breaking an animal’s spirit with sticks and chains is the best way to subdue them, he uses love, understanding and trust to develop personal bonds with them. His unique method of getting to know their individual personalities, what makes each of them angry, happy, upset, or irritated—just like a mother understands a child—has caused them to accept him like one of their own into their fold. Like anyone else who truly loves animals, Richardson allows their own stories to share center stage as he tells readers about Napoleon and Tau, the two male lions he calls his “brothers”; the amazing Meg, a lioness Richardson taught to swim; the fierce Tsavo who savagely attacked him; and the heartbreaking little hyena called Homer who didn’t live to see his first birthday. Richardson also chronicles his work on the forthcoming feature film “The White Lion” and has a lot to say about the state of lion farming and hunting in South Africa today. In “Part of the Pride”, Richardson, with novelist Tony Park, delves into the mind of the big cats and their world to show readers a different way of understanding the dangerous big cats of Africa.";
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
