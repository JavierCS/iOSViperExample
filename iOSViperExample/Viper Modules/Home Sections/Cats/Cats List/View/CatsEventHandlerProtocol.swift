//
//  CatsEventHandlerProtocol.swift
//  iOSViperExample
//
//  Created by jcruzsa on 08/10/21.
//

import Foundation

protocol CatsEventHandlerProtocol: AnyObject {
    func fetchCatList()
    func didSelect(_ cat: PetEntity)
}
