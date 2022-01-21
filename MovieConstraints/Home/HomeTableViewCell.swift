//
//  HomeTableViewCell.swift
//  MovieConstraints
//
//  Created by carlos pava on 21/01/22.
//

import Foundation
import UIKit

final class HomeTableViewCell: GenericTableViewCell<HomeViewObject> {
    
    private lazy var titleLabel: MovieLabel = {
        let label = MovieLabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.fontType = .regular(15)
        return label
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setTitleConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setTitleConstraints() {
        contentView.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            titleLabel.heightAnchor.constraint(equalToConstant: 25),
            titleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16)
        ])
    }
    
    override func set(data: HomeViewObject) {
        titleLabel.text = data.name
    }
}
