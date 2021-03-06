//
//  AppDelegate.m
//  testApp
//
//  Created by Gawain Bracy II on 5/9/13.
//  Copyright (c) 2013 Gawain Bracy II. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    // BOOL object
    BOOL isRain = YES;
    
    // float variables
    float clouds = 2.1f;
    float airTemp = 71.8f;
    float xFinland = clouds * 1.3f;
    float xSpain = clouds * 1.1f;
    float xLondon = 1.15f;
    float cold = clouds * airTemp ;
    
    // int variables - I'm not casting any of the floats to int(s) in the wind var this is a rough idea
    int wind = 8;
    int convertCold = (int)cold;
    int countries = (xFinland + xSpain + xLondon)/3 * clouds;
    int yFinland = 7;
    int yLondon = 18;
    int ySpain = 13;
    
    // print out of the vaiables countries, airTemp, cold & Finland the other two variables show the required example of forcasting
    NSLog(@"Countries =%d", countries);
    NSLog(@"air temp =%.2f", airTemp);
    NSLog(@"Cold float = %.2f, Finland int = %d", cold, convertCold);
    NSLog(@"Distance to Finland =%d", yFinland);
    NSLog(@"Distance to London =%d", yLondon);
    NSLog(@"Distance to Spain =%d", ySpain);
    
    //data set up for nested loop in a loop - got some help from; Objective-C programming the big nerd ranch guide and Learning Cocoa with Objective-C
    NSString * string = @"Chris,Steven,Helan,Dave,Stephanie,Mariam";
    NSString * string1 = @"Finland,London,Spain";
    NSString * string2 = @"2in,2.7in,3.2in,5in,7.2in,9.8in,Flood";
    
    
    NSArray * array = [string componentsSeparatedByString:@","];
    NSArray * array1 = [string1 componentsSeparatedByString:@","];
    NSArray * array2 = [string2 componentsSeparatedByString:@","];
    //NSArray * array3 = [string3 componentsSeparatedByString:@","];    ------not used------
    //NSArray * array4 = [string4 componentsSeparatedByString:@","];    ------not used------
    //NSObject * data = [array2,array3,array4];  Trying to fill my placeholders for historical data in the nested loop loop
    //int count = [array1 count];                                       ------not used------
    int count1 = [array2 count];
    
    int historicalData =  3;
    
    
    // Trying to fill my placeholders for historical data in the nested loop loop
    /*char arrrayWaveData[8][3] =                                       ------not used------
     {
     {@"Encuentro,Seahorse,Caberet"},
     {@"2ft",},
     {},
     {},
     {},
     {},
     {},
     {}
     };
     */
}
    


- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
