//
//  UIViewExtensions.swift
//  iOSViperExample
//
//  Created by jcruzsa on 20/10/21.
//

import UIKit

extension UIView {
    func addShadow() {
        self.layer.shadowOffset = CGSize.zero
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowRadius = 10
        self.layer.shadowOpacity = 0.3
        self.layer.cornerRadius = 20
    }
}
