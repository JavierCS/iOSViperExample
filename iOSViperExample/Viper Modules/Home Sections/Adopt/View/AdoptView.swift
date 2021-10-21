//
//  AdoptView.swift
//  iOSViperExample
//
//  Created by jcruzsa on 21/10/21.
//

import UIKit

protocol AdoptViewDelegate: AnyObject {
    func success(entity: AdoptEntity)
    func failure(error: Error)
}

class AdoptView: MasterViewController {
    //MARK: - UIElements
    @IBOutlet weak var petPictureImage: UIImageView!
    @IBOutlet weak var petNameLabel: UILabel!
    @IBOutlet weak var petAgeLabel: UILabel!
    @IBOutlet weak var petSexLabel: UILabel!
    @IBOutlet weak var petBreedLabel: UILabel!
    @IBOutlet weak var petDescriptionLabel: UILabel!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var adoptButton: UIButton!
    
    var petToAdopt: PetEntity!
    
    //MARK: - EventHandler
    weak var eventHandler: AdoptEventHandlerProtocol?
    weak var delegate: AdoptViewDelegate?
    
    //MARK: - Initialization Code
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initialConfiguration()
    }
    
    //MARK: - Configuration Management
    private func initialConfiguration() {
        self.petNameLabel.text = self.petToAdopt.name
        self.petAgeLabel.text = self.petToAdopt.age
        self.petSexLabel.text = self.petToAdopt.sex
        self.petBreedLabel.text = self.petToAdopt.breed
        self.petDescriptionLabel.text = self.petToAdopt.description
    }
    
    //MARK: - UIElements Actions
    @IBAction func didTouchCancelButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    @IBAction func didTouchAdoptButton(_ sender: UIButton) {
        self.showLoader()
        self.callAdoptService { [weak self] result in
            guard let self = self else { return }
            self.hideLoader()
            switch result {
            case .success(let adoptModel):
                self.delegate?.success(entity: adoptModel)
            case .failure(let error):
                self.delegate?.failure(error: error)
            }
        }
    }
    
    //MARK: - Services Managemente
    private func callAdoptService(completion: @escaping (Result<AdoptEntity,Error>) -> ()) {
        guard let url = URL(string: "https://www.dropbox.com/s/sp08ry9yrj7iwup/AdoptResponse.json?dl=1") else { return }
        let urlRequest = URLRequest(url: url)
        URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            guard let data = data,
                  let adoptEntity = try? JSONDecoder().decode(AdoptEntity.self, from: data) else {
                      DispatchQueue.main.async {
                          if let error = error {
                              completion(.failure(error))
                          } else {
                              completion(.failure(AdoptInteractorError.cantResolveAdopt))
                          }
                      }
                      return
                  }
            DispatchQueue.main.async {
                completion(.success(adoptEntity))
            }
        }.resume()
    }
}
