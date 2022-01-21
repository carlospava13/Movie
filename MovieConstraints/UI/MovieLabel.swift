//
//  MovieLabel.swift
//  MovieConstraints
//
//  Created by carlos pava on 21/01/22.
//

import UIKit

class MovieLabel: UILabel {
    
    var fontType: MovieFont = .regular(14)

    override func layoutSubviews() {
        super.layoutSubviews()
        setFont()
    }
    
    private func setFont() {
        switch fontType {
        case .regular(let value):
            font = UIFont.systemFont(ofSize: value)
        case .bold(let value):
            font = UIFont.boldSystemFont(ofSize: value)
        case .light(let value):
            font = UIFont.italicSystemFont(ofSize: value)
        }
    }
}
