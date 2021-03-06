//
//  AppDelegate.m
//  Dialer
//
//  Created by William Richardson on 2/16/12.
//  Copyright (c) 2012 CodeSpan Technologies. All rights reserved.
//

#import "AppDelegate.h"

#import "ContactsViewController.h"
#import "UserDefaultsContainer.h"
#import "TestFlight.h"

@implementation AppDelegate

@synthesize window      = _window;
// @synthesize appDefaults = _appDefaults;

- (void)dealloc
{
    // [_appDefaults release];
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    _window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    // TestFlight info
    //                    9889dd1ddd138bcad1babc7b017ca191_ODg4MjIyMDEyLTA1LTA5IDIwOjQyOjE1LjUzMDAxOA
    [TestFlight takeOff:@"9889dd1ddd138bcad1babc7b017ca191_ODg4MjIyMDEyLTA1LTA5IDIwOjQyOjE1LjUzMDAxOA"];
    
#define TESTING 1
#ifdef TESTING
    [TestFlight setDeviceIdentifier:[[UIDevice currentDevice] uniqueIdentifier]];
#endif 
    
    // setup the application defaults the application.
    // _appDefaults = [[UserDefaultsContainer alloc] init];
    // [self.appDefaults registerDefaults];
    [[UserDefaultsContainer current] registerDefaults];
    
    ContactsViewController *contacts = [[ContactsViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:contacts];

    self.window.rootViewController = nav;
    [nav release];
    [contacts release];
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

void onUncaughtException(NSException* exception)
{
    NSLog(@"uncaught exception: %@", exception.description);
}

- (void) displayErrorMessage:(NSString *)title additionalInfo:(NSString *)addInfo withError:(NSError *)error
{
    NSString *titleString = title;
    NSString *messageString = [error localizedDescription];
    NSString *moreString = [error localizedFailureReason] ? [error localizedFailureReason] : addInfo;
    // NSLocalizedString(@"Try typing the URL again.", nil);
    messageString = [NSString stringWithFormat:@"%@. %@", messageString, moreString];
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:titleString
                                                        message:messageString delegate:self
                                              cancelButtonTitle:@"Cancel" otherButtonTitles:nil];
    [alertView show];
    [alertView release];
}

@end
