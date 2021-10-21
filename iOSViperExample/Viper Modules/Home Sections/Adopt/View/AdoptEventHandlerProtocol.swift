//
//  AdoptEventHandlerProtocol.swift
//  iOSViperExample
//
//  Created by jcruzsa on 21/10/21.
//

import Foundation

protocol AdoptEventHandlerProtocol: AnyObject {
    func didTouchAdoptButton(for pet: PetEntity)
    func didTouchCancelButton()
}
