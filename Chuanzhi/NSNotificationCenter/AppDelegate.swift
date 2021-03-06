//
//  AppDelegate.swift
//  NSNotificationCenter
//
//  Created by zhyunfe on 16/10/18.
//  Copyright © 2016年 zhyunfe. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    //用来保存共享数据的数组
    var datas = [Int]()


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.


        window = UIWindow()
        window?.frame = UIScreen.mainScreen().bounds
        window?.backgroundColor = UIColor.whiteColor()


        let vc = ViewController()
        vc.title = "VC"

        let vc1 = ViewController1()
        vc1.title = "VC1"
        //让vc1，注册成为观察者
        vc1.becomeObserver()

        let vc2 = ViewController2()
        vc2.title = "VC2"
        //让vc2，注册成为观察者
        vc2.becomeObserver()


        let tvc = UITabBarController()
        tvc.viewControllers = [vc,vc1,vc2]

        window?.rootViewController = tvc
        window?.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

