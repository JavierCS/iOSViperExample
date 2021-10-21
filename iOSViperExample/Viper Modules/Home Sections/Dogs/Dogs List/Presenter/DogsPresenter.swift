//
//  DogsPresenter.swift
//  iOSViperExample
//
//  Created by jcruzsa on 07/10/21.
//

import Foundation

class DogsPresenter {
    var wireframe: DogsWireframe?
    var interactor: DogsInteractor?
    var view: DogsView?
}

//MARK: - //DogsEventHandlerProtocol Management
extension DogsPresenter: DogsEventHandlerProtocol {
    func fetchDogsList() {
        self.view?.showLoader()
        self.interactor?.fetchDogs()
    }
    
    func didSelect(_ dog: PetEntity) {
        self.wireframe?.showAdoptView(for: dog)
    }
}

//MARK: - //DogsOutputProtocol Management
extension DogsPresenter: DogsOutputProtocol {
    func didFetchDogs(_ result: Result<[PetEntity], Error>) {
        self.view?.hideLoader()
        switch result {
        case .success(let dogs):
            self.view?.showDogs(dogs)
        case .failure(let error):
            self.view?.showAlert(message: error.localizedDescription)
        }
    }
}

//MARK: - AdoptViewDelegate Management
extension DogsPresenter: AdoptViewDelegate {
    func success(entity: AdoptEntity) {
        self.wireframe?.dismissAdoptView(completion: {
            self.view?.showAlert(title: "Listo",
                                 message: "Has adoptado una mascota, tu folio es \(entity.folio ?? "")")
        })
    }
    
    func failure(error: Error) {
        self.wireframe?.dismissAdoptView(completion: {
            self.view?.showAlert(message: error.localizedDescription)
        })
    }
}
