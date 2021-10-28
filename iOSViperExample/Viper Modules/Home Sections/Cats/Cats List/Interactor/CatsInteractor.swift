//
//  CatsInteractor.swift
//  iOSViperExample
//
//  Created by jcruzsa on 08/10/21.
//

import Foundation

class CatsInteractor {
    weak var output: CatsOutputProtocol?
//    var catsProvider: CatsProviderProtocol = CatsServiceProvider()
    var catsProvider: CatsProviderProtocol = CatsLocalProvider()
    
    func fetchCats() {
        catsProvider.output = self.output
        catsProvider.fetchCats()
    }
    
    deinit {
        print("DEINIT for CatsInteractor")
    }
}

class CatsServiceProvider: CatsProviderProtocol {
    var output: CatsOutputProtocol?
    
    func fetchCats() {
        guard let url = URL(string: "https://www.dropbox.com/s/m8hd7gxnxv0tzk9/Cats.json?dl=1") else { return }
        let urlRequest = URLRequest(url: url)
        URLSession.shared.dataTask(with: urlRequest) { [weak self] (data, response, error) in
            guard let self = self,
                  let data = data,
                  let cats = try? JSONDecoder().decode([PetEntity].self, from: data) else {
                      DispatchQueue.main.async {
                          if let error = error {
                              self?.output?.didFetchCats(.failure(error))
                          } else {
                              self?.output?.didFetchCats(.failure(PetsProviderError.cantFetchPets))
                          }
                      }
                      return
                  }
            DispatchQueue.main.async {
                self.output?.didFetchCats(.success(cats))
            }
        }
    }
}

class CatsLocalProvider: CatsProviderProtocol {    
    var output: CatsOutputProtocol?
    
    func fetchCats() {
        DispatchQueue.global(qos: .utility).async {
            guard let path = Bundle.main.path(forResource: "Cats", ofType: "json"),
                  let data = try? Data(contentsOf: URL(fileURLWithPath: path)),
                  let cats = try? JSONDecoder().decode([PetEntity].self, from: data) else {
                      DispatchQueue.main.async {
                          self.output?.didFetchCats(.failure(PetsProviderError.cantFetchPets))
                      }
                      return
                  }
            DispatchQueue.main.async {
                self.output?.didFetchCats(.success(cats))
            }
        }
    }
}
