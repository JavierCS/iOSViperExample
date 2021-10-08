//
//  DogsView.swift
//  iOSViperExample
//
//  Created by jcruzsa on 07/10/21.
//

import UIKit

class DogsView: MasterViewController {
    //MARK: - UIElements
    
    //MARK: - EventHandler
    weak var eventHandler: DogsEventHandlerProtocol?
    
    //MARK: - Lifecycle Management
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initialConfiguration()
    }
    
    //MARK: - Configuration management
    private func initialConfiguration() {
        self.addGradient(topColor: UIColor.systemRed)
    }
}
