//
//  LoginInteractor.swift
//  iOSViperExample
//
//  Created by jcruzsa on 07/10/21.
//

import Foundation

class LoginInteractor {
    weak var output: LoginOutput?
    
    deinit {
        print("DEINIT for LoginInteractor")
    }
}

//MARK: - LoginProvider Management
extension LoginInteractor: LoginProvider {
    func login(request: LoginRequestEntity) {
        
    }
}
