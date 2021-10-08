//
//  LoginOutputProtocol.swift
//  iOSViperExample
//
//  Created by jcruzsa on 07/10/21.
//

import Foundation

protocol LoginOutput: AnyObject {
    func didFinishLoginService(result: Result<LoginResponseEntity, Error>)
}
