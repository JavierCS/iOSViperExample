//
//  MasterViewController.swift
//  iOSViperExample
//
//  Created by jcruzsa on 08/10/21.
//

import Foundation
import UIKit

class MasterViewController: UIViewController {
    var topColor: UIColor = UIColor.systemBlue
    var bottomColor: UIColor = UIColor.systemBackground
    
    func addGradient(topColor: UIColor? = nil, bottomColor: UIColor? = nil) {
        if let topColor = topColor {
            self.topColor = topColor
        }
        if let bottomColor = bottomColor {
            self.bottomColor = bottomColor
        }

        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = UIScreen.main.bounds
        gradientLayer.colors = [self.topColor.cgColor, self.bottomColor.cgColor]
        gradientLayer.locations = [0.0, 0.30]
        
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
