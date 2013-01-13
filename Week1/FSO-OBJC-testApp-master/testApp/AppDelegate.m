//
//  AppDelegate.m
//  testApp
//
//  Created by Gawain Bracy II on 1/12/13.
//
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    /* Step 2 */
    NSLog(@"Step 2");
    float cakeIsGood = 3.14159265359;
    NSLog(@"%d cake is delicious, but %.2f is dope!", (int)cakeIsGood,(float)cakeIsGood);
    
    
    /* Step 3 */
    NSLog(@"Step 3");
    int cakes = 5;
    bool editable = YES;
    
    if ((cakes > 0)&&(editable == YES))
    {
        NSLog(@"Please eat up until you burst!!!");
    }
    else if ((cakes == cakeIsGood) || (editable == NO))
    {
        NSLog(@"cakes are numbers, you cant eat them, get back to number crunching");
    }
    
    
    
    /* Step 4 */
    NSLog(@"Step 4");
    int answerToLife = 42;
    if (answerToLife == 42)
    {
        NSLog(@"The answer to Life, the Universe, and Everything is %d!", answerToLife);
    }
    else if (answerToLife > 42)
    {
        NSLog(@"You need to rethink the ultimate question, it is not %d", answerToLife);
    }
    else
    {
        int off = (answerToLife-42);
        NSLog(@"You seem to have %d hopes to many", off);
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
    int life = 20;
    bool dead = TRUE;
    do {
        NSLog(@"Are you still alive? I'm going to check!!!");
        while ( life > 10 )
        {
            life--;
            NSLog(@"::Steven:: Yes");
        }
        NSLog(@"Nope!");
        dead = FALSE;
    } while (life > 10);
    
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
