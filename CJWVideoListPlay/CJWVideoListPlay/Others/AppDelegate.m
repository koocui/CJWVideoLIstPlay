//
//  AppDelegate.m
//  CJWVideoListPlay
//
//  Created by 小崔 on 2018/4/18.
//  Copyright © 2018年 CJW. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"
#import "VideoInfoModel.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor clearColor];
    [self.window makeKeyAndVisible];
    
    MainViewController * mainVC =  [[MainViewController alloc]init];

    NSMutableArray * mutableArr = [NSMutableArray array];
    
    NSArray* videoAry = [NSArray arrayWithObjects:
                         @"http://ksy.fffffive.com/mda-hinp1ik37b0rt1mj/mda-hinp1ik37b0rt1mj.mp4",
                         @"http://ksy.fffffive.com/mda-himtqzs2un1u8x2v/mda-himtqzs2un1u8x2v.mp4",
                         @"http://ksy.fffffive.com/mda-hiw5zixc1ghpgrhn/mda-hiw5zixc1ghpgrhn.mp4",
                         @"http://ksy.fffffive.com/mda-hiw61ic7i4qkcvmx/mda-hiw61ic7i4qkcvmx.mp4",
                         @"http://ksy.fffffive.com/mda-hihvysind8etz7ga/mda-hihvysind8etz7ga.mp4",
                         @"http://ksy.fffffive.com/mda-hiw60i3kczgum0av/mda-hiw60i3kczgum0av.mp4",
                         @"http://ksy.fffffive.com/mda-hidnzn5r61qwhxp4/mda-hidnzn5r61qwhxp4.mp4",
                         @"http://ksy.fffffive.com/mda-he1zy3rky0rwrf60/mda-he1zy3rky0rwrf60.mp4",
                         @"http://ksy.fffffive.com/mda-hh6cxd0dqjqcszcj/mda-hh6cxd0dqjqcszcj.mp4",
                         @"http://ksy.fffffive.com/mda-hifsrhtqjn8jxeha/mda-hifsrhtqjn8jxeha.mp4",
                         @"http://ksy.fffffive.com/mda-hics799vjrg0w5az/mda-hics799vjrg0w5az.mp4",
                         @"http://ksy.fffffive.com/mda-hfshah045smezhtf/mda-hfshah045smezhtf.mp4",
                         @"http://ksy.fffffive.com/mda-hh4mbturm902j7wi/mda-hh4mbturm902j7wi.mp4",
                         @"http://ksy.fffffive.com/mda-hiwxzficjivwmsch/mda-hiwxzficjivwmsch.mp4",
                         @"http://ksy.fffffive.com/mda-hhug2p7hfbhnv40r/mda-hhug2p7hfbhnv40r.mp4",
                         @"http://ksy.fffffive.com/mda-hieuuaei6cufye2c/mda-hieuuaei6cufye2c.mp4",
                         @"http://ksy.fffffive.com/mda-hibhufepe5m1tfw1/mda-hibhufepe5m1tfw1.mp4",
                         @"http://ksy.fffffive.com/mda-hhzeh4c05ivmtiv7/mda-hhzeh4c05ivmtiv7.mp4",
                         @"http://ksy.fffffive.com/mda-hfrigfn2y9jvzm72/mda-hfrigfn2y9jvzm72.mp4",
                         @"http://ksy.fffffive.com/mda-himek207gvvqg3wq/mda-himek207gvvqg3wq.mp4",
                         nil];
    
    
    NSArray* imageAry = [NSArray arrayWithObjects:
                         @"http://ksy.fffffive.com/mda-hinp1ik37b0rt1mj/mda-hinp1ik37b0rt1mj.jpg",
                         @"http://ksy.fffffive.com/mda-himtqzs2un1u8x2v/mda-himtqzs2un1u8x2v.jpg",
                         @"http://ksy.fffffive.com/mda-hiw5zixc1ghpgrhn/mda-hiw5zixc1ghpgrhn.jpg",
                         @"http://ksy.fffffive.com/mda-hiw61ic7i4qkcvmx/mda-hiw61ic7i4qkcvmx.jpg",
                         @"http://ksy.fffffive.com/mda-hihvysind8etz7ga/mda-hihvysind8etz7ga.jpg",
                         @"http://ksy.fffffive.com/mda-hiw60i3kczgum0av/mda-hiw60i3kczgum0av.jpg",
                         @"http://ksy.fffffive.com/mda-hidnzn5r61qwhxp4/mda-hidnzn5r61qwhxp4.jpg",
                         @"http://ksy.fffffive.com/mda-he1zy3rky0rwrf60/mda-he1zy3rky0rwrf60.jpg",
                         @"http://ksy.fffffive.com/mda-hh6cxd0dqjqcszcj/mda-hh6cxd0dqjqcszcj.jpg",
                         @"http://ksy.fffffive.com/mda-hifsrhtqjn8jxeha/mda-hifsrhtqjn8jxeha.jpg",
                         @"http://ksy.fffffive.com/mda-hics799vjrg0w5az/mda-hics799vjrg0w5az.jpg",
                         @"http://ksy.fffffive.com/mda-hfshah045smezhtf/mda-hfshah045smezhtf.jpg",
                         @"http://ksy.fffffive.com/mda-hh4mbturm902j7wi/mda-hh4mbturm902j7wi.jpg",
                         @"http://ksy.fffffive.com/mda-hiwxzficjivwmsch/mda-hiwxzficjivwmsch.jpg",
                         @"http://ksy.fffffive.com/mda-hhug2p7hfbhnv40r/mda-hhug2p7hfbhnv40r.jpg",
                         @"http://ksy.fffffive.com/mda-hieuuaei6cufye2c/mda-hieuuaei6cufye2c.jpg",
                         @"http://ksy.fffffive.com/mda-hibhufepe5m1tfw1/mda-hibhufepe5m1tfw1.jpg",
                         @"http://ksy.fffffive.com/mda-hhzeh4c05ivmtiv7/mda-hhzeh4c05ivmtiv7.jpg",
                         @"http://ksy.fffffive.com/mda-hfrigfn2y9jvzm72/mda-hfrigfn2y9jvzm72.jpg",
                         @"http://ksy.fffffive.com/mda-himek207gvvqg3wq/mda-himek207gvvqg3wq.jpg",
                         nil];
    
    for (int i = 0; i<20; i++) {
        VideoInfoModel * item = [[VideoInfoModel alloc]init];
        item.VideoAddress = videoAry[i];
        item.coverImageAddress = imageAry[i];
        [mutableArr addObject:item];
    }
    
    
    
    
    self.window.rootViewController = mainVC;
    
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
