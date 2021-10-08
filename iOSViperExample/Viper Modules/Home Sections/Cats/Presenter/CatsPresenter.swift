//
//  CatsPresenter.swift
//  iOSViperExample
//
//  Created by jcruzsa on 08/10/21.
//

import Foundation

class CatsPresenter {
    var wireframe: CatsWireframe?
    var interactor: CatsProviderProtocol?
    var view: CatsView?
}

//MARK: - //DogsEventHandlerProtocol Management
extension CatsPresenter: CatsEventHandlerProtocol {
    
}

//MARK: - //DogsOutputProtocol Management
extension CatsPresenter: CatsOutputProtocol {
    
}
