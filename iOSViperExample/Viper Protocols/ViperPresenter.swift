//
//  ViperPresenter.swift
//  iOSViperExample
//
//  Created by jcruzsa on 07/10/21.
//

import Foundation

protocol ViperPresenter {
    var wireframe: ViperRouter? { get set }
    var interactor: ViperInteractor? { get set }
    var view: ViperView? { get set }
}
