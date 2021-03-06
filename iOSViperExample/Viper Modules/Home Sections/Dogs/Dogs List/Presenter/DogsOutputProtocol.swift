//
//  DogsOutputProtocol.swift
//  iOSViperExample
//
//  Created by jcruzsa on 07/10/21.
//

import Foundation

protocol DogsOutputProtocol: AnyObject {
    func didFetchDogs(_ result: Result<[PetEntity], Error>)
}
