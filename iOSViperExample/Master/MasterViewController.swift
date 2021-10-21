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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
    }
    
    func addGradient(topColor: UIColor? = nil, bottomColor: UIColor? = nil, percentage: NSNumber = 0.70) {
        if let topColor = topColor {
            self.topColor = topColor
        }
        if let bottomColor = bottomColor {
            self.bottomColor = bottomColor
        }

        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = UIScreen.main.bounds
        gradientLayer.colors = [self.topColor.cgColor, self.bottomColor.cgColor]
        gradientLayer.locations = [0.0, percentage]
        
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    func showAlert(title: String = "Error", message: String? = nil, style: UIAlertController.Style = .alert, handler: ((UIAlertAction) -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: style)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: handler))
        self.navigationController?.present(alert, animated: true, completion: nil)
    }
}
