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
    let wireframe: ViperRouter
    
    init(name: String, image: UIImage, wireframe: ViperRouter) {
        self.name = name
        self.image = image
        self.wireframe = wireframe
    }
}
