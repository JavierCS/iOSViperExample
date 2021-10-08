//
//  ViperRouter.swift
//  iOSViperExample
//
//  Created by jcruzsa on 07/10/21.
//

import Foundation
import UIKit

protocol ViperRouter {
    var entry: UIViewController! { get set }
}

protocol TabBarRouterItem {
    func asHomeTabBarItemEntity() -> HomeTabBarItemEntity
}
