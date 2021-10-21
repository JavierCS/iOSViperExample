//
//  AdoptView.swift
//  iOSViperExample
//
//  Created by jcruzsa on 21/10/21.
//

import UIKit

class AdoptView: UIViewController {
    //MARK: - UIElements
    @IBOutlet weak var petPictureImage: UIImageView!
    @IBOutlet weak var petNameLabel: UILabel!
    @IBOutlet weak var petAgeLabel: UILabel!
    @IBOutlet weak var petSexLabel: UILabel!
    @IBOutlet weak var petRaceLabel: UILabel!
    @IBOutlet weak var petDescriptionLabel: UILabel!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var adoptButton: UIButton!
    
    var petToAdopt: PetEntity!
    
    //MARK: - EventHandler
    weak var eventHandler: AdoptEventHandlerProtocol?
    
    //MARK: - Initialization Code
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initialConfiguration()
        
        
    }
    
    //MARK: - Configuration Management
    private func initialConfiguration() {
        
    }
    
    //MARK: - UIElements Actions
    @IBAction func didTouchCancelButton(_ sender: UIButton) {
        
    }
    
    @IBAction func didTouchAdoptButton(_ sender: UIButton) {
        
    }
}
