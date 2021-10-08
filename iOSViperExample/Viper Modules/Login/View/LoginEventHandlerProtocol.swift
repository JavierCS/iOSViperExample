//
//  LoginEventHandler.swift
//  iOSViperExample
//
//  Created by jcruzsa on 07/10/21.
//

import Foundation

protocol LoginEventHandler: AnyObject {
    func didTouchLoginButton(user: String?, password: String?)
    func didTouchAboutThisAppButton()
}
