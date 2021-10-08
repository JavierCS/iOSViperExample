//
//  LoginProviderProtocol.swift
//  iOSViperExample
//
//  Created by jcruzsa on 07/10/21.
//

import Foundation

protocol LoginProvider: AnyObject {
    func login(request: LoginRequestEntity)
    func login(request: LoginRequestEntity, completion: @escaping (Result<LoginResponseEntity, Error>) -> Void)
}

extension LoginProvider {
    func login(request: LoginRequestEntity, completion: @escaping (Result<LoginResponseEntity, Error>) -> Void) {}
}
