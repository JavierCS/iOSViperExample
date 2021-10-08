//
//  HomeTabBarView.swift
//  iOSViperExample
//
//  Created by jcruzsa on 07/10/21.
//

import UIKit

class HomeTabBarView: UITabBarController {
    private var items: [HomeTabBarItemEntity] = []
    
    //MARK: - Lifecycle Management
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.systemBackground
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.initialConfiguration()
    }
    
    //MARK: - Configuration Management
    private func initialConfiguration() {
        
        let viewControllers = items.map { item -> UINavigationController in
            let navigationController = UINavigationController(rootViewController: item.wireframe.entry)
            navigationController.tabBarItem.title = item.name
            navigationController.tabBarItem.image = item.image
            return navigationController
        }
        
        self.viewControllers = viewControllers
    }
    
    func setTabBarItems(_ items: [HomeTabBarItemEntity]) {
        self.items = items
    }
}
