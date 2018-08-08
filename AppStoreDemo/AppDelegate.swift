//
//  AppDelegate.swift
//  AppStoreDemo
//
//  Created by Abhinay on 08/08/18.
//  Copyright © 2018 ONS. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool
    {
        ApplicationAppearance.initialAppearance()
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        let homeVC = HomeVC(collectionViewLayout: UICollectionViewFlowLayout())
        let navVC = UINavigationController(rootViewController: homeVC)
        window?.rootViewController = navVC
        
        return true
    }

}

