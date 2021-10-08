//
//  HomeTabBarWireframe.swift
//  iOSViperExample
//
//  Created by jcruzsa on 07/10/21.
//

import Foundation
import UIKit

class HomeTabBarWireframe: ViperRouter {
    var entry: UIViewController!
    
    static func obtain() -> ViperRouter {
        let view = HomeTabBarView()
        let router = HomeTabBarWireframe()
        
        router.entry = view
        
        return router
    }
    
    func setTabBarItems(_ items: [HomeTabBarItemEntity]) {
        guard let homeTabBarView = self.entry as? HomeTabBarView else { return }
        homeTabBarView.setTabBarItems(items)
    }
    
}
