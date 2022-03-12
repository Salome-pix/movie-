//
//  Movie.swift
//  Movie-
//
//  Created by Mcbook Pro on 07.03.22.
//

import Foundation
import UIKit

struct Movie{
    var image: UIImage
    var name: String
    var Country :String
    var genre: String
    var release: String
    var isFavorite : Bool?
    var id : Int
}


var movies = [Movie(image: #imageLiteral(resourceName: "john-wick"), name: "Avengers", Country: "USA", genre: "Thriller ", release: "2000",id : 0),
              Movie(image: #imageLiteral(resourceName: "bohemian-rhapsody"), name: "Glass", Country: "USA", genre: "Thriller ", release: "2013",id : 1),
              Movie(image: #imageLiteral(resourceName: "replicas-movie"), name: "Enception", Country: "EUR", genre: "Thriller ", release: "2017",id : 2),
              Movie(image: #imageLiteral(resourceName: "john-wick"), name: "Avengers", Country: "USA", genre: "Thriller", release: "2017",id : 3),
              Movie(image: #imageLiteral(resourceName: "replicas-movie"), name: "Avengers", Country: "", genre: "Thriller", release: "2017",id : 4),
              Movie(image: #imageLiteral(resourceName: "john-wick"), name: "Avengers", Country: "", genre: "Thriller", release: "2013",id : 5),
              Movie(image: #imageLiteral(resourceName: "iron-man"), name: "Glass", Country: "USA", genre: "Thriller ", release: "2013",id : 6),
              Movie(image: #imageLiteral(resourceName: "iron-man"), name: "Glass", Country: "USA", genre: "Thriller ", release: "2013",id : 7)
]



