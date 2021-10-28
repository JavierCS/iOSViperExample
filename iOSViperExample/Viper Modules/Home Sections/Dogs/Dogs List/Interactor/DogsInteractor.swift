//
//  DogsInteractor.swift
//  iOSViperExample
//
//  Created by jcruzsa on 07/10/21.
//

import Foundation

class DogsInteractor {
    weak var output: DogsOutputProtocol?
    
    deinit {
        print("DEINIT for DogsInteractor")
    }
}

//MARK: - DogsProviderProtocol Management
enum PetsProviderError: Error {
    case cantFetchPets
}

extension DogsInteractor: DogsProviderProtocol {
    func fetchDogs() {
        guard let url = URL(string: "https://www.dropbox.com/s/m8fk1pj2eb4bgtp/Dogs.json?dl=1") else { return }
        let urlRequest = URLRequest(url: url)
        URLSession.shared.dataTask(with: urlRequest) { [weak self] (data, response, error) in
            guard let self = self,
                  let data = data,
                  let dogs = try? JSONDecoder().decode([PetEntity].self, from: data) else {
                      DispatchQueue.main.async {
                          if let error = error {
                              self?.output?.didFetchDogs(.failure(error))
                          } else {
                              self?.output?.didFetchDogs(.failure(PetsProviderError.cantFetchPets))
                          }
                      }
                      return
                  }
            DispatchQueue.main.async {
                self.output?.didFetchDogs(.success(dogs))
            }
        }.resume()
    }
}
