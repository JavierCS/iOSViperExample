//
//  AdoptInteractor.swift
//  iOSViperExample
//
//  Created by jcruzsa on 21/10/21.
//

import Foundation

class AdoptInteractor {
    weak var output: AdoptOutputProtocol?
    
    deinit {
        print("DEINIT for AdoptInteractor")
    }
}

extension AdoptInteractor: AdoptProviderProtocol {
    
}

enum AdoptInteractorError: Error {
    case cantResolveAdopt
}
