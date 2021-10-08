//
//  LoginRequestEntity.swift
//  iOSViperExample
//
//  Created by jcruzsa on 07/10/21.
//

import Foundation

struct LoginRequestEntity: Codable {
    let user: String
    let password: String
    
    init(user: String, password: String) {
        self.user = user
        self.password = password
    }
}
