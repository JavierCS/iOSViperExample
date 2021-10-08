//
//  LoginWireframe.swift
//  iOSViperExample
//
//  Created by jcruzsa on 07/10/21.
//

import Foundation

///Entry point for the VIPER Module
class LoginWireframe {
    var entry: LoginView!
    weak var presenter: LoginPresenter!
    
    static func instance() -> LoginWireframe {
        let view = LoginView.instance()
        let interactor = LoginInteractor()
        let presenter = LoginPresenter()
        let router = LoginWireframe()
        
        view.eventHandler = presenter
        
        interactor.output = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.wireframe = router
        
        router.presenter = presenter
        router.entry = view
        
        return router
    }
}
