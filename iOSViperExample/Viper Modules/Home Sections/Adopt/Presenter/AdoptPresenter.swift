//
//  AdoptPresenter.swift
//  iOSViperExample
//
//  Created by jcruzsa on 21/10/21.
//

import Foundation

class AdoptPresenter {
    var wireframe: AdoptWireframe?
    var interactor: AdoptInteractor?
    var view: AdoptView?
}

//MARK: - AdoptEventHandlerProtocol Management
extension AdoptPresenter: AdoptEventHandlerProtocol {
    func didTouchAdoptButton(for pet: PetEntity) {
        
    }
    
    func didTouchCancelButton() {
        
    }
}

//MARK: - AdoptOutputProtocol Management
extension AdoptPresenter: AdoptOutputProtocol {
    
}
