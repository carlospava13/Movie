//
//  Response.swift
//  MovieConstraints
//
//  Created by carlos pava on 21/01/22.
//

import Foundation

enum JsonFile: String {
    case homeMovies
}

enum ReponseError: Error {
    case notFound
}

final class Reponse {
    func get<T: Codable>(jsonFile: JsonFile) throws -> T {
        if let path = Bundle.main.path(forResource: jsonFile.rawValue, ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                return try JSONDecoder().decode(T.self, from: data)
            } catch {
                throw error
            }
        } else {
            throw ReponseError.notFound
        }
    }
}
