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
