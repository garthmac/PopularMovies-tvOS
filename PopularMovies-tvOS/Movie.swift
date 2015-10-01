//
//  Movie.swift
//  PopularMovies-tvOS
//
//  Created by iMac 27 on 2015-09-30.
//  Copyright © 2015 iMac 27. All rights reserved.
//

import Foundation

class Movie {
    
    let BASE_URL = "http://image.tmdb.org/t/p/w500"
    
    var title: String!
    var overview: String!
    var posterPath: String!
    
    init(movieDict: Dictionary<String, AnyObject>) {
        if let title = movieDict["title"] as? String {
            self.title = title
        }
        if let overview = movieDict["overview"] as? String {
            self.overview = overview
        }
        if let path = movieDict["poster_path"] as? String {
            self.posterPath = "\(BASE_URL)\(path)"
            //print(posterPath)
        }
    }
}
