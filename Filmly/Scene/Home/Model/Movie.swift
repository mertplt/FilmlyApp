//
//  Movie.swift
//  Filmly
//
//  Created by mert polat on 23.02.2023.
//

import Foundation

// MARK: - Movie
struct Movie: Codable {
    let page: Int?
    let results: [MovieResult]?
    let totalPages, totalResults: Int?

    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

// MARK: - MovieResult
struct MovieResult: Identifiable, Codable,MovieCellProtocol {
     let id: Int
     let adult, video: Bool
     let genreIDS: [Int]
     let originalLanguage, originalTitle, overview: String
     let posterPath, releaseDate, title, backdropPath: String
     let popularity, voteAverage: Double?
     let voteCount: Int
    
    var posterImage: String{
        "https://image.tmdb.org/t/p/original/\(posterPath ?? "")"
    }
    var titleText: String{
        originalTitle ?? ""
    }
    var ratingText: String{
        if let voteAverage = voteAverage{
         return "\(voteAverage) / 10 IMDB"
        }
         return ""
    }

     enum CodingKeys: String, CodingKey {
         case adult, id, title, video, overview, popularity
         case backdropPath = "backdrop_path"
         case genreIDS = "genre_ids"
         case originalLanguage = "original_language"
         case originalTitle = "original_title"
         case posterPath = "poster_path"
         case releaseDate = "release_date"
         case voteAverage = "vote_average"
         case voteCount = "vote_count"
     }
 }
