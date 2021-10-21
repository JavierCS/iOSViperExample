//
//  CatsView.swift
//  iOSViperExample
//
//  Created by jcruzsa on 08/10/21.
//

import UIKit

class CatsView: MasterViewController {
    //MARK: - UIElements
    @IBOutlet weak var catsTable: UITableView!
    
    //MARK: - Pets DataSource
    private var cats: [PetEntity] = []
    
    //MARK: - EventHandler
    weak var eventHandler: CatsEventHandlerProtocol?
    
    //MARK: - Lifecycle Management
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initialConfiguration()
    }
    
    //MARK: - Configuration Management
    private func initialConfiguration() {
        self.addGradient()
        
        self.catsTable.register(UINib(nibName: "CatListTableViewCell", bundle: .main), forCellReuseIdentifier: "CatListTableViewCellId")
        self.catsTable.dataSource = self
        self.catsTable.delegate = self
        self.catsTable.separatorStyle = .none
        
        self.eventHandler?.fetchCatList()
    }
    
    //MARK: - Data Management
    func showCats(_ cats: [PetEntity]) {
        self.cats = cats
        self.catsTable.beginUpdates()
        self.catsTable.reloadSections(IndexSet(integer: 0), with: .automatic)
        self.catsTable.endUpdates()
    }
}

//MARK: - UITableViewDataSource Management
extension CatsView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cats.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CatListTableViewCellId", for: indexPath) as! CatListTableViewCell
        cell.setPetData(cats[indexPath.row])
        return cell
    }
}

//MARK: - UITableViewDelegate Management
extension CatsView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.view.frame.width
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedCat = cats[indexPath.row]
        self.eventHandler?.didSelect(selectedCat)
    }
}
