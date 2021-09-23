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
    }
    

    func navBarContent() {
        let anahiNavController = UINavigationController(rootViewController: AnahiVC())
        anahiNavController.tabBarItem.title = "Anahi"
        anahiNavController.tabBarItem.image = #imageLiteral(resourceName: "capybara")
        
        
        let alejandroNavController = UINavigationController(rootViewController: AlejandroVC())
        alejandroNavController.tabBarItem.title = "Alejandro"
        alejandroNavController.tabBarItem.image = #imageLiteral(resourceName: "raven")
        
        viewControllers = [anahiNavController, alejandroNavController]
    }

}
