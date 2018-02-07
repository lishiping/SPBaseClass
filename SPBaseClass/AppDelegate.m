//
//  AppDelegate.m
//  SPBaseClass
//
//  Created by uxin-lishiping on 2017/8/1.
//  Copyright © 2017年 lishiping. All rights reserved.
//

#import "AppDelegate.h"
#import "SPBaseTabBarController.h"
#import "SPBaseNavigationController.h"
#import "SPBaseVC.h"
#import "AVC.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    self.window.rootViewController =[self addTabBarController];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

-(UITabBarController*)addTabBarController
{
    SPBaseTabBarController *tab = [[SPBaseTabBarController alloc] init_didSelectViewControllerBlock:^(UITabBarController *tabBarViewcontroller, UIViewController *viewcontroller) {
        NSLog(@"选中后处理%lu",(unsigned long)tabBarViewcontroller.selectedIndex);
        viewcontroller.tabBarItem.badgeValue = nil;
    }];
    
    [tab addItemController:[AVC new]
          tabBarItem_title:@"微信"
      tabBarItem_titleFont:[UIFont systemFontOfSize:14]
tabBarItem_normalTitleColor:[UIColor colorWithRed:164/255.0 green:164/255.0 blue:164/255.0 alpha:1]
tabBarItem_selectTitleColor:[UIColor colorWithRed:31/255.0 green:185/255.0 blue:37/255.0 alpha:1]
          tabBarItem_image:nil
  tabBarItem_selectedImage:nil
     tabBarItem_badgeValue:@"20"];
    
    [tab addItemController:[SPBaseVC new]
          tabBarItem_title:@"通讯录"
      tabBarItem_titleFont:[UIFont systemFontOfSize:14]
tabBarItem_normalTitleColor:[UIColor colorWithRed:164/255.0 green:164/255.0 blue:164/255.0 alpha:1]
tabBarItem_selectTitleColor:[UIColor colorWithRed:31/255.0 green:185/255.0 blue:37/255.0 alpha:1]
          tabBarItem_image:nil
  tabBarItem_selectedImage:nil
     tabBarItem_badgeValue:nil];
    
    [tab addItemController:[SPBaseVC new]
          tabBarItem_title:@"发现"
      tabBarItem_titleFont:[UIFont systemFontOfSize:14]
tabBarItem_normalTitleColor:[UIColor colorWithRed:164/255.0 green:164/255.0 blue:164/255.0 alpha:1]
tabBarItem_selectTitleColor:[UIColor colorWithRed:31/255.0 green:185/255.0 blue:37/255.0 alpha:1]
          tabBarItem_image:nil
  tabBarItem_selectedImage:nil
     tabBarItem_badgeValue:nil];
    
    [tab addItemController:[SPBaseVC new]
          tabBarItem_title:@"我的"
      tabBarItem_titleFont:[UIFont systemFontOfSize:14]
tabBarItem_normalTitleColor:[UIColor colorWithRed:164/255.0 green:164/255.0 blue:164/255.0 alpha:1]
tabBarItem_selectTitleColor:[UIColor colorWithRed:31/255.0 green:185/255.0 blue:37/255.0 alpha:1]
          tabBarItem_image:nil
  tabBarItem_selectedImage:nil
     tabBarItem_badgeValue:nil];
    
    return tab;
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
