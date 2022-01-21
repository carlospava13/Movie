//
//  MovieModel.swift
//  MovieConstraints
//
//  Created by carlos pava on 21/01/22.
//

import Foundation

struct MoveResponseModel: Codable {
    let rating: [MovieModel]
    let popular: [MovieModel]
    let new: [MovieModel]
}

struct MovieModel: Codable {
    let title: String
    let urlImage: String
    let rate: Int
}
