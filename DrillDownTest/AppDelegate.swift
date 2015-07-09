//
//  AppDelegate.swift
//  DrillDownTest
//
//  Created by 洋一郎 日野 on 2015/07/09.
//  Copyright (c) 2015年 GakkoNet. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UISplitViewControllerDelegate {

    var window: UIWindow?
    
    var glossary : Glossary =
    Glossary(categories: [
        Category( name: "代数",
                                    terms: [Term(name:"因数分解",path:"path_1.html"),
                                            Term(name:"微分積分A",path:"path_1.html"),
                                            Term(name:"微分積分B",path:"path_1.html"),
                                            Term(name:"微分積分C",path:"path_1.html"),
                                            Term(name:"微分積分D",path:"path_1.html")]),
        
        Category( name: "計算",
            terms: [Term(name:"足し算",path:"path_1.html"),
                Term(name:"引き算",path:"path_1.html"),
                Term(name:"かけ残",path:"path_1.html"),
                Term(name:"足し算",path:"path_1.html")]),
        Category( name: "図形",
            terms: [Term(name:"正弦定理",path:"path_1.html"),
                Term(name:"余弦定理",path:"path_1.html"),
                Term(name:"メネラウスの定理",path:"path_1.html")])
                ])
    

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        let splitViewController = self.window!.rootViewController as! UISplitViewController
        let navigationController = splitViewController.viewControllers[splitViewController.viewControllers.count-1] as! UINavigationController
        navigationController.topViewController.navigationItem.leftBarButtonItem = splitViewController.displayModeButtonItem()
        splitViewController.delegate = self
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

    // MARK: - Split view

    func splitViewController(splitViewController: UISplitViewController, collapseSecondaryViewController secondaryViewController:UIViewController!, ontoPrimaryViewController primaryViewController:UIViewController!) -> Bool {
        if let secondaryAsNavController = secondaryViewController as? UINavigationController {
            if let topAsDetailController = secondaryAsNavController.topViewController as? DetailViewController {
                if topAsDetailController.detailItem == nil {
                    // Return true to indicate that we have handled the collapse by doing nothing; the secondary controller will be discarded.
                    return true
                }
            }
        }
        return false
    }

}

