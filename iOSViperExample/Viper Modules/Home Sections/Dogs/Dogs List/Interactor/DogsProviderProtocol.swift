//
//  DogsProviderProtocol.swift
//  iOSViperExample
//
//  Created by jcruzsa on 07/10/21.
//

import Foundation

protocol DogsProviderProtocol: AnyObject {
    var output: DogsOutputProtocol? { get set }
    
    func fetchDogs()
    func fetchDogs(completion: @escaping (Result<[PetEntity],Error>) -> Void)
}

extension DogsProviderProtocol {
    func fetchDogs(completion: @escaping (Result<[PetEntity],Error>) -> Void) {}
}
