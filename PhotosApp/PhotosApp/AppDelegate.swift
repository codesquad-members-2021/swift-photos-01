//
//  AppDelegate.swift
//  PhotosApp
//
//  Created by 박정하 on 2021/03/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var doodleViewController: DoodleViewController!
    var doodleNavigationController: UINavigationController!


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        doodleViewController = DoodleViewController()
        doodleNavigationController = UINavigationController(rootViewController: doodleViewController)
        return true
    }
}

    
