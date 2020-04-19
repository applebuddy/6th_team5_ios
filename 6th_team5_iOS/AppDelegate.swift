//
//  AppDelegate.swift
//  6th_team5_iOS
//
//  Created by 정하민 on 2020/04/10.
//  Copyright © 2020 JHM. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        let rootVC = RootViewController()
        
        // 화면 전환에는 SceneManager를 사용합니다. SceneManager를 control + command + 우클릭합니다.
        SceneManager.rootVC = rootVC
        window?.rootViewController = UINavigationController(rootViewController: rootVC)
        window!.makeKeyAndVisible()
        return true
    }
}

