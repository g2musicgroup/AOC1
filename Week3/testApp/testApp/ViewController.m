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
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Call the Add function passing in two integer values. Capture the return of this function into a variable.
    NSInteger addedNumbers = [self Add:33 addTo:11];
    
    //Bundle the returned integer into an NSNumber and then convert it to a NSString and pass it to the DisplayAlertWithString function.
    NSNumber *nsAddedNumbers = [NSNumber numberWithInt:addedNumbers];
    
    //Give it text for the title. The message will read, "The number is 00". Replace the 00 with the integer passed into the function.
    NSString *nsAddedNumbersAlertMessage = [[NSString alloc] initWithFormat:@"The number is %d", [nsAddedNumbers integerValue]];
    [self DisplayAlertWithString:nsAddedNumbersAlertMessage titleString:@"Alert!" buttonString:@"Ok"];
    
    // Call the Compare function with two integer values.
    // making variable for the values
    NSInteger numOne = 13;
    NSInteger numTwo = 13;
    BOOL numCompare = [self Compare:(NSInteger)numOne compareTo:(NSInteger)numTwo];
    //If Compare returns YES,
    if ( numCompare == YES)
    {
        //display an UIAlertView both with the input values and the result using the DisplayAlertWithString function
        NSString *bothValuesAnswer = [[NSString alloc] initWithFormat:@"%d and %d are the same: %@", numOne, numTwo, @"YES"];
        [self DisplayAlertWithString:bothValuesAnswer titleString:@"Hey!" buttonString:@"Great!"];
    }
    
    // Call the Append function with two NSStrings. Capture the result and display a UIAlertView with the appended string using displayAlertWithString.
    // Capture and append strings from function append
    NSString *appendStringAlertMessage = [self Append:@"Gawain " addString:@"Bracy"];
    
    // Function to add one integer to another
    -(NSInteger)Add:(NSInteger)x addTo:(NSInteger)y
    {
        // add x and y together
        NSInteger answer = x + y;
        // return answer
        return answer;
    }
    
    // Function to check if integers are the same answers YES or NO
    -(BOOL)Compare:(NSInteger)x compareTo:(NSInteger)y
    {
        // init answer variable to default no
        BOOL answer = NO;
        if (x == y)
        {
            // if x and y are the same, change answer to yes
            answer = YES;
        };
        // return the answer
        return answer;
    }
    //Create a function called Append take two NSStrings.
    -(NSString *)append:(NSString *)string1 with:(NSString *)string2
    {
        //return a new NSString containing the appended strings using an NSMutableString and the Append method.
        NSMutableString *appendedString = [NSMutableString stringWithString:string1];
        NSString *string = [appendedString stringByAppendingString:string2];
        return string;
    }
    
    //DisplayAlertWithString Function
    -(void)displayAlertWithString:(NSString *)string
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:string delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        //Take the passed in NSString and display it in the alert view.
        [alert show];
    }

    
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
