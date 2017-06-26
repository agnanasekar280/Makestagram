//
//  MainTabBarController.swift
//  Makestagram
//
//  Created by Aditi Gnanasekar on 6/26/17.
//  Copyright © 2017 Aditi Gnanasekar. All rights reserved.
//

import Foundation
import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1
        delegate = self
        // 2
        tabBar.unselectedItemTintColor = .black
    }
}

extension MainTabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if viewController.tabBarItem.tag == 1 {
            // present photo taking action sheet
            print("take photo")
            
            return false
        } else {
            return true
        }
    }
}
