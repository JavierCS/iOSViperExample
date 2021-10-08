//
//  CatsWireframe.swift
//  iOSViperExample
//
//  Created by jcruzsa on 08/10/21.
//

import Foundation
import UIKit

class CatsWireframe: ViperRouter, TabBarRouterItem {
    var entry: UIViewController!
    var presenter: CatsPresenter!
    
    static func instance() -> CatsWireframe {
        let view = CatsView(nibName: "CatsView", bundle: Bundle.main)
        let interactor = CatsInteractor()
        let presenter = CatsPresenter()
        let router = CatsWireframe()
        
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
        return HomeTabBarItemEntity(name: "Gatos",
                                    image: UIImage(named: "catIcon")!,
                                    wireframe: self)
    }
}
