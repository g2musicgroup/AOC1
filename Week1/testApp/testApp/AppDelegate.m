//
//  AppDelegate.m
//  testApp
//
//  Created by Gawain Bracy II on 4/11/13.
//  Copyright (c) 2013 Gawain Bracy II. All rights reserved.
//

#import "AppDelegate.h"


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
    float foodIsGood = 3.14159265359;
    NSLog(@"%d spaghetti is delicious, but %.2f is best!", (int)foodIsGood,(float)foodIsGood);
    
    
    /* Step 3 */
    NSLog(@"Step 3");
    int plates = 5;
    bool editable = YES;
    
    if ((plates > 0)&&(editable == YES))
    {
        NSLog(@"Please eat until you are full");
    }
    else if ((plates == foodIsGood) || (editable == NO))
    {
        NSLog(@"plates are numbers, you cant eat them, get back to number crunching");
    }
    
    
    
    /* Step 4 */
    NSLog(@"Step 4");
    int kobe = 24;
    if (kobe == 24)
    {
        NSLog(@"%d is the new MVP!", kobe);
    }
    else if (kobe > 24)
    {
        NSLog(@"%d is not the new MVP", kobe);
    }
    else
    {
        int off = (kobe-24);
        NSLog(@"You seem to have %d hopes too many", off);
    };
    
    
    /* step 5 */
    NSLog(@"Step 5");
    for (int x=0;x < 10; x++)
    {
        NSLog(@"%d attempt at performing a single loop", x);
    };
    
    
    /* step 6 */
    NSLog(@"Step 6");
    for (int y=40;y>0;y--)
    {
        NSLog(@"%d is great", y);
        while (y<30) {
            y = y-2;
            NSLog(@"%d is great", y);
            if (y <= 10) { break; };
        };
    };
    
    
    /* step 7 */
    NSLog(@"Step 7");
    int lifePoints = 20;
    bool dead = TRUE;
    do {
        NSLog(@"Are you still in the game?!");
        while ( lifePoints > 10 )
        {
            lifePoints--;
            NSLog(@"::Adam:: Yes");
        }
        NSLog(@"No!");
        dead = FALSE;
    } while (lifePoints > 10);
    
    NSLog(@"Done!");
    
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
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
