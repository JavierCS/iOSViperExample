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
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
