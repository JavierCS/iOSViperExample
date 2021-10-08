//
//  MasterViewController.swift
//  iOSViperExample
//
//  Created by jcruzsa on 08/10/21.
//

import Foundation
import UIKit

class MasterViewController: UIViewController {
    func addGradient(topColor: UIColor, bottomColor: UIColor = UIColor.systemBackground) {
        let colorTop = topColor.cgColor
        let colorBottom = bottomColor.cgColor

        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = UIScreen.main.bounds
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 0.25]
        
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
