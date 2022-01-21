//
//  UIImage+Resources.swift
//  MovieConstraints
//
//  Created by carlos pava on 21/01/22.
//

import Foundation
import UIKit

extension UIImage {
    convenience init(resource: ImageResources) {
        self.init(named:resource.rawValue)!
    }
}


enum ImageResources: String {
    case notifiactionicon
    case logoicon
}
