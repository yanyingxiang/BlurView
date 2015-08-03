//
//  AppDelegate.m
//  BlurView
//
//  Created by 燕颖祥 on 15/8/3.
//  Copyright (c) 2015年 嗖嗖快跑. All rights reserved.
//

#import "AppDelegate.h"
#import <MapKit/MapKit.h>
#import "ViewController.h"

BMKMapManager *_mapManager;

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.window setBackgroundColor:[UIColor whiteColor]];
    
    //注册地图
    _mapManager = [[BMKMapManager alloc] init];
    BOOL ret = [_mapManager start:@"tdTHS75S0ZnmA4GCGEFMYGG9" generalDelegate:self];
    
    if (!ret)
    {
        NSLog(@"manager start failed!");
    }
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[ViewController new]];
    
    [self.window makeKeyAndVisible];
    // Override point for customization after application launch.
    return YES;
}

- (void)onGetNetworkState:(int)iError
{
    if (0 == iError) {
        NSLog(@"联网成功");
    }
    else{
        NSLog(@"onGetNetworkState %d",iError);
    }
}

- (void)onGetPermissionState:(int)iError
{
    if (0 == iError) {
        NSLog(@"授权成功");
    }
    else {
        NSLog(@"onGetPermissionState %d",iError);
    }
}

@end
