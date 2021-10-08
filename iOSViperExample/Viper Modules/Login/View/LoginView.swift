//
//  LoginView.swift
//  iOSViperExample
//
//  Created by jcruzsa on 07/10/21.
//

import UIKit

class LoginView: UIViewController {
    //MARK: - UIElements
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var enterButton: UIButton!
    @IBOutlet weak var aboutThisAppButton: UIButton!
    
    //MARK: - EventHandler
    ///Reference to Presenter
    weak var eventHandler: LoginEventHandler?
    
    //MARK: - Initialization Code
    static func instance() -> LoginView {
        return LoginView(nibName: "LoginView", bundle: Bundle.main)
    }
    
    //MARK: - Lifecycle Management
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addGradient()
    }
    
    //MARK: - Configuration Management
    private func addGradient() {
        let colorTop = UIColor.systemBlue.cgColor
        let colorBottom = UIColor.white.cgColor

        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.frame
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 0.25]
        
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    //MARK: - IBActions
    @IBAction func didTouchEnterButton(_ sender: UIButton) {
        self.eventHandler?.didTouchLoginButton(user: self.userTextField.text,
                                               password: self.passwordTextField.text)
    }
    
    @IBAction func didTouchAboutThisAppButton(_ sender: UIButton) {
        self.eventHandler?.didTouchAboutThisAppButton()
    }
    
}
