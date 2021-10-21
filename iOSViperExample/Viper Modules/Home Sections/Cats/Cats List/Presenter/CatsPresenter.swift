//
//  CatsPresenter.swift
//  iOSViperExample
//
//  Created by jcruzsa on 08/10/21.
//

import Foundation

class CatsPresenter {
    var wireframe: CatsWireframe?
    var interactor: CatsInteractor?
    var view: CatsView?
}

//MARK: - //DogsEventHandlerProtocol Management
extension CatsPresenter: CatsEventHandlerProtocol {
    func fetchCatList() {
        self.view?.showLoader()
        self.interactor?.fetchCats()
    }
    
    func didSelect(_ cat: PetEntity) {
        
    }
}

//MARK: - //DogsOutputProtocol Management
extension CatsPresenter: CatsOutputProtocol {
    func didFetchCats(_ result: Result<[PetEntity], Error>) {
        self.view?.hideLoader()
        switch result {
        case .success(let cats):
            self.view?.showCats(cats)
        case .failure(let error):
            self.view?.showAlert(message: error.localizedDescription)
        }
    }
}
