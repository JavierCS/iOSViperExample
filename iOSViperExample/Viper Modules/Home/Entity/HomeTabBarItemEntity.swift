//
//  HomeTabBarItemEntity.swift
//  iOSViperExample
//
//  Created by jcruzsa on 07/10/21.
//

import Foundation
import UIKit

struct HomeTabBarItemEntity {
    let name: String
    let image: UIImage
    let color: UIColor
    let wireframe: ViperRouter
    
    init(name: String, image: UIImage, color: UIColor, wireframe: ViperRouter) {
        self.name = name
        self.image = image
        self.color = color
        self.wireframe = wireframe
        
        guard let masterViewController = self.wireframe.entry as? MasterViewController else { return }
        masterViewController.topColor = self.color
    }
}
