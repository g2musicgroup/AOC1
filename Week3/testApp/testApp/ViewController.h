//
//  ViewController.h
//  testApp
//
//  Created by Gawain Bracy II on 3/21/13.
//  Copyright (c) 2013 Gawain Bracy II. All rights reserved.
//

/*
 
 Week 3 Assignment
 
 The project is broken down into sections:
 - Create a function called Add. This function will take two NSInteger or int types and return the result of an addition between these two.
 - Create a BOOL function called Compare that takes two NSInteger values. Return YES or NO based on whether the values are equal.
 - Create a function called Append. This function will take two NSStrings and return a new NSString containing the appended strings using an NSMutableString and the Append method.
 - Call the Append function with two NSStrings. Capture the result and display a UIAlertView with the appended string using displayAlertWithString.
 - Create a function called DisplayAlertWithString. This function will take as a parameter an NSString.
 - Call the Add function passing in two integer values. Capture the return of this function into a variable.
 - Bundle the returned integer into an NSNumber and then convert it to a NSString and pass it to the DisplayAlertWithString function.
 - Give it some text for the title. The message will read, "The number is 00". Replace the 00 with the integer passed into the function.
 - Call the Compare function with two integer values. If Compare returns YES, display an UIAlertView both with the input values and the result using the DisplayAlertWithString function
 DisplayAlertWithString Function
 - Take the passed in NSString and display it in the alert view
 - Create an UIAlertView
 
 Rubric:
 - All required variables are present, with descriptive names and are declared correctly.
 - All required data types are represented and used correctly.
 - All required outputs are present.
 - Casting from float to int correctly and output both values to console.
 - Single and nest loops are present and outputting correctly.
 - While Loop is present and incrementing int variable correctly and outputting to the console.
 - AND, OR comparisons are present using float, int and BOOL types.
 - If, Else If, Else checks are present.
 
 */

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    
}
// Function to add one integer to another
- (NSInteger)Add:(NSInteger)x addTo:(NSInteger)y;

// Function to check if integers are the same answers YES or NO
- (BOOL)Compare:(NSInteger)x compareTo:(NSInteger)y;

// Function to append a string to another string
- (NSString*)Append:(NSString*)originalString addString:(NSString*)addString;

// function to take NSString argument param
- (void)DisplayAlertWithString:(NSString*)alertMessage titleString:(NSString*)titleString buttonString:(NSString*)buttonString;

@end
