//
//  CatsProviderProtocol.swift
//  iOSViperExample
//
//  Created by jcruzsa on 08/10/21.
//

import Foundation

protocol CatsProviderProtocol: AnyObject {
    var output: CatsOutputProtocol? { get set }
    
    func fetchCats()
    func fetchCats(completion: @escaping (Result<[PetEntity], Error>) -> Void)
}

extension CatsProviderProtocol {
    func fetchCats(completion: @escaping (Result<[PetEntity], Error>) -> Void) {}
}
