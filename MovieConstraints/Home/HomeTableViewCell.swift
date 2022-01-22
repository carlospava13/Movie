//
//  HomeTableViewCell.swift
//  MovieConstraints
//
//  Created by carlos pava on 21/01/22.
//

import Foundation
import UIKit

final class HomeTableViewCell: GenericTableViewCell<HomeViewObject> {
    
    private lazy var collectionView: CollectionView = {
        let collectionView = CollectionView()
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(HomeCollectionViewCell.self)
        return collectionView
    }()
    
    private lazy var dataSource = HomeCollectionViewDataSource()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setCollectionViewConstraints()
        backgroundColor = .clear
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setCollectionViewConstraints() {
        contentView.addSubview(collectionView)
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            collectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
            collectionView.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    override func set(data: HomeViewObject) {
        collectionView.dataSource = dataSource
        dataSource.set(data: data.movies)
        collectionView.reloadData()
    }
}
