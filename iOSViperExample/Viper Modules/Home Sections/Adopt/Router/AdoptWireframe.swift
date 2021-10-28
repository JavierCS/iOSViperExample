//
//  AdoptWireframe.swift
//  iOSViperExample
//
//  Created by jcruzsa on 21/10/21.
//

import Foundation
import UIKit

class AdoptWireframe: ViperRouter {
    var entry: UIViewController!
    var presenter: AdoptPresenter!
    
    static func instance() -> AdoptWireframe {
        let view = AdoptView(nibName: "AdoptView", bundle: .main)
        let interactor = AdoptInteractor()
        let presenter = AdoptPresenter()
        let router = AdoptWireframe()
        
        view.eventHandler = presenter
        
        interactor.output = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.wireframe = router
        
        router.presenter = presenter
        router.entry = view
        
        return router
    }
    
    deinit {
        print("DEINIT for AdoptWireframe")
    }
}
