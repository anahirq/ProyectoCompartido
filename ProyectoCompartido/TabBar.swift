//
//  TabBar.swift
//  ProyectoCompartido
//
//  Created by Anahi Rojas on 21/09/21.
//

import UIKit

class TabBar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.tintColor = .systemBlue
        navBarContent()
        tabBarAppearance()
    }
    
    func tabBarAppearance() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .tertiarySystemFill
        tabBar.standardAppearance = appearance
        if #available(iOS 15.0, *) {
            tabBar.scrollEdgeAppearance = tabBar.standardAppearance
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tabBar.frame.size.height = 95
        tabBar.frame.origin.y = view.frame.height - 95
    }
    

    func navBarContent() {
        let anahiNavController = UINavigationController(rootViewController: AnahiVC())
        anahiNavController.tabBarItem.title = "Anahí"
        anahiNavController.tabBarItem.image = #imageLiteral(resourceName: "capybara")
        
        
        let alejandroNavController = UINavigationController(rootViewController: AlejandroVC())
        alejandroNavController.tabBarItem.title = "Alejandro"
        alejandroNavController.tabBarItem.image = #imageLiteral(resourceName: "raven")
        viewControllers = [anahiNavController, alejandroNavController]
    }

}
