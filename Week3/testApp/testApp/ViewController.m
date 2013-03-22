//
//  ViewController.m
//  testApp
//
//  Created by Gawain Bracy II on 3/21/13.
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
    
// Call the Append function with two NSStrings. Capture the result and display a UIAlertView with the appended string using displayAlertWithString.
// Capture and append strings from function append
NSString *appendStringAlertMessage = [self Append:@"Gawain has a grip on this " addString:@"objective-C!"];

// create alert view with appended string
UIAlertView *appendStringAlertView = [[UIAlertView alloc] initWithTitle:@"Hello World!!!" message:appendStringAlertMessage delegate:nil cancelButtonTitle:@"Everyone Agrees!" otherButtonTitles:nil];
// check if alert view was created successfully
if (appendStringAlertView != nil)
{
    // show alert view
    [appendStringAlertView show];
}

// Call the Add function passing in two integer values. Capture the return of this function into a variable.
NSInteger addedNumbers = [self Add:30 addTo:12];

//Bundle the returned integer into an NSNumber and then convert it to a NSString and pass it to the DisplayAlertWithString function.
NSNumber *nsAddedNumbers = [NSNumber numberWithInt:addedNumbers];
// Give it some text for the title. The message will read, "The number is 00". Replace the 00 with the integer passed into the function.
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
    [self DisplayAlertWithString:bothValuesAnswer titleString:@"Hey!" buttonString:@"Continue!"];
}


/*
 random rubric needs
 Casting from float to int correctly and output both values to console.
 Single and nest loops are present and outputting correctly.
 While Loop is present and incrementing int variable correctly and outputting to the console.
 AND, OR comparisons are present using float, int and BOOL types.
 If, Else If, Else checks are present.
 */

// casting ints from floats
float floater = 3.333; // float
int intFloater = floater; // cast to int upon var creation
NSLog(@"Float = %f", floater); // print float
NSLog(@"Float cast as int in var decloration: %d", intFloater); // print int from var
NSLog(@"Float cast as int during log string creation: %d", (int)floater); // cast float to int and print
NSLog(@"Int casted floats ::Bow::"); // take a bow

// single loop
for (int i=0; i<10; i++)
{
    NSLog(@"ZOOM IN: %dx", i);
}

// nested loops
for (int i=0; i<10; i++)
{
    NSLog(@"ZOOM IN: %dx", i);
    for (int n=5; n>0; n--)
    {
        NSLog(@"%d seconds to focus...", n);
    }
    
}

//While Loop is present and incrementing int variable correctly and outputting to the console.
while (numOne < 43)
{
    NSLog(@"numOne is now %d", numOne);
    numOne++;
}


//AND, OR comparisons are present using float, int and BOOL types.
//If, Else If, Else checks are present.
if ((numOne == 42) || (numTwo < 15))
{
    NSLog(@"I will need to use equations");
}
else if ((floater > 3) && (numCompare == YES))
{
    NSLog(@"Test");
}
else
{
    NSLog(@"Scope is here %d", numOne);
}
}

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

// Function to append a string to another string
-(NSString*)Append:(NSString*)originalString addString:(NSString*)addString
{
    // alloc and init mutable string with original string to append to
    NSMutableString *newString = [[NSMutableString alloc] initWithString:originalString];
    // append the additional string
    [newString appendString:addString];
    // return the new string (note: this function does not add the space between the two strings.)
    return newString;
}

// function to take NSString argument param
- (void)DisplayAlertWithString:(NSString*)alertMessage titleString:(NSString*)titleString buttonString:(NSString*)buttonString;
{
    /*
     DisplayAlertWithString Function
     - Take the passed in NSString and display it in the alert view
     - Create an UIAlertView
     */
    
    UIAlertView *newAlertView = [[UIAlertView alloc] initWithTitle:titleString message:alertMessage delegate:nil cancelButtonTitle:buttonString otherButtonTitles:nil];
    // check if alert view was created successfully
    if (newAlertView != nil)
    {
        // show alert view
        [newAlertView show];
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
