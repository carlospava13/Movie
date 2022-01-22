//
//  HomeViewObject.swift
//  MovieConstraints
//
//  Created by carlos pava on 21/01/22.
//

import Foundation

struct HomeViewObject: ViewObject {
    let movies: [MovieViewObject]
}

struct MovieViewObject: ViewObject {
    let imageUrl: String
}
