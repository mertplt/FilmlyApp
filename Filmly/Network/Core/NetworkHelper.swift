//
//  NetworkHelper.swift
//  Filmly
//
//  Created by mert polat on 23.02.2023.
//

import Foundation


enum  HTTPMethods: String{
    case get = "GET"
    case post = "POST"
}
enum    ErrorTypes: String,Error{
    case invalidData = "Invalid data"
    case invalidURL = "Invalid url"
    case generalError = "An error happened"
}


class NetworkHelper{
    static let shared = NetworkHelper()
    
    let baseURL = "https://api.themoviedb.org/3/"
    private let apiKey = ""
    
    func requestUrl(url:String)->String{
        baseURL + url + "?api_key=\(apiKey)"
    }
    
    
}
