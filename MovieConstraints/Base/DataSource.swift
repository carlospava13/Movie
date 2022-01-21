//
//  DataSource.swift
//  MovieConstraints
//
//  Created by carlos pava on 21/01/22.
//

import UIKit

class DataSource<Data, Cell: GenericTableViewCell<Data>>: NSObject, UITableViewDataSource {

    private var data: [Data] = []
    
    func set(data: [Data]) {
        self.data = data
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: Cell = tableView.dequeueReusableCell(for: indexPath)
        cell.set(data: data[indexPath.row])
        return cell
    }
 }
