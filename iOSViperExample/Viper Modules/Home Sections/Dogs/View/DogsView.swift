//
//  DogsView.swift
//  iOSViperExample
//
//  Created by jcruzsa on 07/10/21.
//

import UIKit

class DogsView: UIViewController {
    //MARK: - UIElements
    
    //MARK: - EventHandler
    weak var eventHandler: DogsEventHandlerProtocol?
    
    //MARK: - Lifecycle Management
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.systemBackground
        // Do any additional setup after loading the view.
    }
}
