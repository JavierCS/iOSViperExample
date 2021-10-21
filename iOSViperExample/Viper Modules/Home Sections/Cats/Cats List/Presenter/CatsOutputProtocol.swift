//
//  CatsOutputProtocol.swift
//  iOSViperExample
//
//  Created by jcruzsa on 08/10/21.
//

import Foundation

protocol CatsOutputProtocol: AnyObject {
    func didFetchCats(_ result: Result<[PetEntity], Error>)
}
