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
