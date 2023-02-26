//
//  HomeHelper.swift
//  Filmly
//
//  Created by mert polat on 23.02.2023.
//

import Foundation

enum HomeEndpoint: String {
    case popular = "movie/popular"
    
    var path: String {
        switch self{
        case.popular:
            return NetworkHelper.shared.requestUrl(url:HomeEndpoint.popular.rawValue)
            
        }
    }
}
