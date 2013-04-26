//
//  ViewController.m
//  testApp
//
//  Created by Gawain Bracy II on 4/25/13.
//  Copyright (c) 2013 Gawain Bracy II. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Call the Add function passing in two integer values. Capture the return of this function into a variable.
    int sum = [self add:33 with:11];
    
    //Bundle the returned integer into an NSNumber and then convert it to a NSString and pass it to the DisplayAlertWithString function.
    NSNumber *numberSum = [[NSNumber alloc] initWithInt:sum];
    
    //Give it text for the title. The message will read, "The number is 00". Replace the 00 with the integer passed into the function.
    NSString *theNumberText = [NSString stringWithFormat:@"The number is "];
    NSString *numberToString = [numberSum stringValue];
    NSString *myNumberAddString = [self append:theNumberText with:numberToString];
    [self displayAlertWithString:myNumberAddString];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
