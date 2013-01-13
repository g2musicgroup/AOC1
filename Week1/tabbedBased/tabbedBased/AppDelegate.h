//
//  AppDelegate.h
//  tabbedBased
//
//  Created by Gawain Bracy II on 11/22/12.
//  Copyright (c) 2012 Gawain Bracy II. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UITabBarController *tabBarController;

@end
