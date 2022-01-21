//
//  MovieLabel.swift
//  MovieConstraints
//
//  Created by carlos pava on 21/01/22.
//

import UIKit

class MovieLabel: UILabel {
    
    var fontType: MovieFont = .regular(14)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setFont()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
