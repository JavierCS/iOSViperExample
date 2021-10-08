//
//  LoginWireframe.swift
//  iOSViperExample
//
//  Created by jcruzsa on 07/10/21.
//

import Foundation
import UIKit

///Entry point for the VIPER Module
class LoginWireframe: ViperRouter {
    var entry: UIViewController!
    var presenter: LoginPresenter!
    
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
    
    func goToHome() {
        guard let homeTabBarWireframe = HomeTabBarWireframe.obtain() as? HomeTabBarWireframe else { return }
        let dogsWireframe = DogsWireframe.instance()
        homeTabBarWireframe.setTabBarItems([
            dogsWireframe.asHomeTabBarItemEntity()
        ])
        let navigationController = UINavigationController(rootViewController: homeTabBarWireframe.entry)
        navigationController.modalPresentationStyle = .fullScreen
        self.entry.navigationController?.present(navigationController, animated: true)
    }
}
