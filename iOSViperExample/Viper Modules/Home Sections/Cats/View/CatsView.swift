//
//  CatsView.swift
//  iOSViperExample
//
//  Created by jcruzsa on 08/10/21.
//

import UIKit

class CatsView: MasterViewController {

    //MARK: - EventHandler
    weak var eventHandler: CatsEventHandlerProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initialConfiguration()
    }
    
    //MARK: - Configuration Management
    private func initialConfiguration() {
        self.addGradient()
    }
}
