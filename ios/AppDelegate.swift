//
//  AppDelegate.swift
//  reactNativeKotlinSwiftBoilerplate
//
//  Created by Pankaj Thakur on 16/08/21.
//

import Foundation
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?
  var bridge: RCTBridge!
  
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    let jsCodeLocation: URL = RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index",
                                                                                fallbackResource:nil)
    
    // moduleName is the same value you will find in index.js in this line:
    // AppRegistry.registerComponent('wdi', () => App);
    let rootView = RCTRootView(bundleURL: jsCodeLocation, moduleName: "reactNativeKotlinSwiftBoilerplate",
                               initialProperties: nil,
                               launchOptions: launchOptions)
 
    let rootViewController = UIViewController()
    rootViewController.view = rootView
    
    self.window = UIWindow(frame: UIScreen.main.bounds)
    self.window?.rootViewController = rootViewController
    self.window?.makeKeyAndVisible()
    
    return true
  }
}
