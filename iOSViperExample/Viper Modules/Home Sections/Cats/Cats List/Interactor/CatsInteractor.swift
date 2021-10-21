//
//  CatsInteractor.swift
//  iOSViperExample
//
//  Created by jcruzsa on 08/10/21.
//

import Foundation

class CatsInteractor {
    weak var output: CatsOutputProtocol?
}

//MARK: - DogsProviderProtocol Management
extension CatsInteractor: CatsProviderProtocol {
    
}
