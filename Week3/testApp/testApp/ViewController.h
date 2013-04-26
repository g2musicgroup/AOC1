//
//  ViewController.h
//  testApp
//
//  Created by Gawain Bracy II on 4/25/13.
//  Copyright (c) 2013 Gawain Bracy II. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

// Function to add one integer to another
- (NSInteger)Add:(NSInteger)x addTo:(NSInteger)y;

// Function to check if integers are the same answers YES or NO
- (BOOL)Compare:(NSInteger)x compareTo:(NSInteger)y;

// Function to append a string to another string
- (NSString*)Append:(NSString*)originalString addString:(NSString*)addString;

// function to take NSString argument param
- (void)DisplayAlertWithString:(NSString*)alertMessage titleString:(NSString*)titleString buttonString:(NSString*)buttonString;

@end
