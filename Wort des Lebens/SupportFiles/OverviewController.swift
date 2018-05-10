//
//  CustomTabBarControllerViewController.swift
//  Wort des Lebens
//
//  Created by Henry on 10.05.18.
//  Copyright © 2018 henryMemorize. All rights reserved.
//

import UIKit

class OverviewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let tab1 = setOverview(tabName: "Home", VC: HomeVC())
        let tab2 = setOverview(tabName: "Calendar", VC: CalendarVC())
        let tab3 = setOverview(tabName: "Sermons", VC: SermonsVC())
        
        tabBar.barTintColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        tabBar.unselectedItemTintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.5)
        tabBar.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        viewControllers = [tab1, tab2, tab3]
        
    }
    
    private func setOverview(tabName: String, VC: UIViewController) -> UINavigationController {
        
        let navController = UINavigationController()
        navController.view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        navController.navigationBar.barTintColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        navController.tabBarItem.title = tabName
        navController.tabBarItem.image = UIImage(named: tabName)
        navController.viewControllers = [VC]
        
        return navController
    }

}
