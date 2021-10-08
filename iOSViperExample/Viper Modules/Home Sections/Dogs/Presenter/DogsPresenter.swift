//
//  DogsPresenter.swift
//  iOSViperExample
//
//  Created by jcruzsa on 07/10/21.
//

import Foundation

class DogsPresenter {
    var wireframe: DogsWireframe?
    var interactor: DogsProviderProtocol?
    var view: DogsView?
}

//MARK: - //DogsEventHandlerProtocol Management
extension DogsPresenter: DogsEventHandlerProtocol {
    
}

//MARK: - //DogsOutputProtocol Management
extension DogsPresenter: DogsOutputProtocol {
    
}
