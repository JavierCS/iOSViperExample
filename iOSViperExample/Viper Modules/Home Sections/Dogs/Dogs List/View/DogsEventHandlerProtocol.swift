//
//  DogsEventHandlerProtocol.swift
//  iOSViperExample
//
//  Created by jcruzsa on 07/10/21.
//

import Foundation

protocol DogsEventHandlerProtocol: AnyObject {
    func fetchDogsList()
    func didSelect(_ dog: PetEntity)
}
