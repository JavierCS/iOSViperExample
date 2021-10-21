//
//  DogsWireframe.swift
//  iOSViperExample
//
//  Created by jcruzsa on 07/10/21.
//

import Foundation
import UIKit

class DogsWireframe: ViperRouter, TabBarRouterItem {
    var entry: UIViewController!
    var presenter: DogsPresenter!
    
    static func instance() -> DogsWireframe {
        let view = DogsView(nibName: "DogsView", bundle: Bundle.main)
        let interactor = DogsInteractor()
        let presenter = DogsPresenter()
        let router = DogsWireframe()
        
        view.eventHandler = presenter
        
        interactor.output = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.wireframe = router
        
        router.presenter = presenter
        router.entry = view
        
        return router
    }
    
    func asHomeTabBarItemEntity() -> HomeTabBarItemEntity {
        return HomeTabBarItemEntity(name: "Perros",
                                    image: UIImage(named: "dogIcon")!,
                                    color: UIColor.cyan,
                                    wireframe: self)
    }
}
