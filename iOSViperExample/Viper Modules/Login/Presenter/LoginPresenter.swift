//
//  LoginPresenter.swift
//  iOSViperExample
//
//  Created by jcruzsa on 07/10/21.
//

import Foundation

class LoginPresenter {
    ///Reference to Router
    var wireframe: LoginWireframe?
    ///Reference to Interactor
    var interactor: LoginProvider?
    ///Reference to View
    var view: LoginView?
}

//MARK: - LoginEventHandler Management
extension LoginPresenter: LoginEventHandler {
    func didTouchLoginButton(user: String?, password: String?) {
        guard let user = user,
              let password = password else { return }
        let loginRequestEntity = LoginRequestEntity(user: user, password: password)
        self.interactor?.login(request: loginRequestEntity)
    }
    
    func didTouchAboutThisAppButton() {
        
    }
}

//MARK: - LoginOutput Management
extension LoginPresenter: LoginOutput {
    func didFinishLoginService(result: Result<LoginResponseEntity, Error>) {
        
    }
}
