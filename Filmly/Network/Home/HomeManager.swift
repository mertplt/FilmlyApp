//
//  HomeManager.swift
//  Filmly
//
//  Created by mert polat on 23.02.2023.
//

import Foundation

protocol HomeManagerProtocol {
    func getCatagoryMovies(complete:@escaping((Movie?,Error?)->()))
}

class HomeManager{
    static let shared = HomeManager()
    
    func getCatagoryMovies(complete:@escaping((Movie?,Error?)->())){
        NetworkManager.shared.request(type: Movie.self,
                                      url: HomeEndpoint.popular.path,
                                      method:.get) { response in
            switch response{
            case .success(let data):
                complete(data,nil)
            case .failure(let error):
                complete(nil,error)
            }
        }
    }

}

