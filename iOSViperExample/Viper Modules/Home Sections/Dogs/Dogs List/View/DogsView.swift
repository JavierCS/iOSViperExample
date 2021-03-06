//
//  DogsView.swift
//  iOSViperExample
//
//  Created by jcruzsa on 07/10/21.
//

import UIKit

class DogsView: MasterViewController {
    //MARK: - UIElements
    @IBOutlet weak var dogsTable: UITableView!
    
    //MARK: - Pets DataSource
    private var dogs: [PetEntity] = []
    
    //MARK: - EventHandler
    weak var eventHandler: DogsEventHandlerProtocol?
    
    //MARK: - Lifecycle Management
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initialConfiguration()
    }
    
    //MARK: - Configuration management
    private func initialConfiguration() {
        self.addGradient()
        self.title = "Adopta un Perrito"
        
        self.dogsTable.register(UINib(nibName: "DogListTableViewCell", bundle: .main), forCellReuseIdentifier: "DogListTableViewCellId")
        self.dogsTable.dataSource = self
        self.dogsTable.delegate = self
        self.dogsTable.separatorStyle = .none
        
        self.eventHandler?.fetchDogsList()
    }
    
    //MARK: - Data Management
    func showDogs(_ dogs: [PetEntity]) {
        self.dogs = dogs
        self.dogsTable.beginUpdates()
        self.dogsTable.reloadSections(IndexSet(integer: 0), with: .automatic)
        self.dogsTable.endUpdates()
    }
    
    deinit {
        print("DEINIT for DogsView")
    }
}

//MARK: - UITableViewDataSource Management
extension DogsView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dogs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DogListTableViewCellId", for: indexPath) as! DogListTableViewCell
        cell.setPetData(dogs[indexPath.row])
        return cell
    }
}

//MARK: - UITableViewDelegate Management
extension DogsView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedDog = dogs[indexPath.row]
        self.eventHandler?.didSelect(selectedDog)
    }
}
