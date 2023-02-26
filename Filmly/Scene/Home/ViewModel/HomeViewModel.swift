//
//  HomeViewModel.swift
//  Filmly
//
//  Created by mert polat on 23.02.2023.
//

import Foundation


class HomeViewModel{
    let manager = HomeManager.shared
    
    var movie: Movie?
    var errorCallBack: ((String)->())?
    var successCallBack: (()->())?
    
    func getCatagoryItems(){
        manager.getCatagoryMovies { [weak self ]Movie, error in
            if let error = error{
                self?.errorCallBack?(error.localizedDescription)

            }else{
                self?.movie = Movie
                self?.successCallBack?()
            }
        }
    }
    
    func numberOfItems() -> Int{
        movie?.results?.count ?? 0
    }
}
 
