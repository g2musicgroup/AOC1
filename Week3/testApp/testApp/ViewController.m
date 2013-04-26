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
    
    //Call the Compare function with two integer values. If Compare returns YES, display an UIAlertView both with the input values and the result using the DisplayAlertWithString function.
    int int1 = 7;
    int int2 = 11;
    BOOL compareNumber = [self compare:int1 with:int2];
    NSString *compareString = [NSString stringWithFormat:@"Numbers %d and %d are equal? %@", int1, int2, compareNumber?@"YES":@"NO"];
    [self displayAlertWithString:compareString];
    [self displayAlertWithString:myNumberAddString];
    
    //Create a function called Add.
    -(int)add:(int)number1 with:(int)number2
    {
        //take two NSInteger or int types
        //return result of an addition between these two.
        return number1 + number2;
    }
    
    //Create a BOOL function called Compare that takes two NSInteger values.
    -(BOOL)compare:(int)number1 with:(int)number2
    {
        //Return YES or NO based on whether the values are equal.
        if (number1 == number2)
        {
            return YES;
        }
        else
        {
            return NO;
        }
    }
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
