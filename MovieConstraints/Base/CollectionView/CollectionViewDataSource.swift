//
//  CollectionViewDataSource.swift
//  MovieConstraints
//
//  Created by carlos pava on 22/01/22.
//

import UIKit

class CollectionViewDataSource<Data: ViewObject, Cell: CollectionViewCell<Data>>: NSObject, UICollectionViewDataSource {
    private var data: [Data] = []
    
    func set(data: [Data]) {
        self.data = data
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: Cell = collectionView.dequeueReusableCell(for: indexPath)
        cell.set(data: data[indexPath.row])
        return cell
    }
}
