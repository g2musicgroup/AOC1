//
//  AppDelegate.m
//  testApp2
//
//  Created by Gawain Bracy II on 4/14/13.
//  Copyright (c) 2013 Gawain Bracy II. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    /* Step 2 */
    NSLog(@"Step 2");
    float energy = 3.14159265359;
    NSLog(@"%d Natural energy is good, but %.2f is best!", (int)energy,(float)energy);
    
    /* Step 3 */
    NSLog(@"Step 3");
    int cars = 5;
    bool editable = YES;
    
    if ((cars > 0)&&(editable == YES))
    {
        NSLog(@"Please fill up until you are full");
    }
    else if ((cars == energy) || (editable == NO))
    {
        NSLog(@"cars are numbers, you cant use them, get back to number crunching");
    }
    
    /* Step 4 */
    NSLog(@"Step 4");
    int dale = 20;
    if (dale == 20)
    {
        NSLog(@"%d is the new winner!", dale);
    }
    else if (dale > 20)
    {
        NSLog(@"%d is not the new winer", dale);
    }
    else
    {
        int off = (dale-20);
        NSLog(@"You seem to have %d hopes too many", off);
    };
    
    
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.viewController = [[[ViewController alloc] initWithNibName:@"ViewController" bundle:nil] autorelease];
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
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
