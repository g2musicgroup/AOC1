//
//  ViewController.h
//  testApp
//
//  Created by Gawain Bracy II on 4/25/13.
//  Copyright (c) 2013 Gawain Bracy II. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

-(int)add:(int)number1 with:(int)number2;
-(BOOL)compare:(int)number1 with:(int)number2;
-(NSString*)append:(NSString*)string1 with:(NSString*)string2;
-(void)displayAlertWithString:(NSString*)string;
-(int)sum;

@end
