//
//  HomeViewController.swift
//  MovieConstraints
//
//  Created by NECSOFT on 20/01/22.
//

import UIKit

final class HomeViewController: BaseViewController {
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .red
        tableView.register(HomeTableViewCell.self)
        return tableView
    }()
    
    private let dataSource = HomeDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()
        setTableViewConstraints()
        setupTableView()
    }
    
    private func setTableViewConstraints() {
        view.addSubview(tableView)
        let guides = view.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: guides.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: guides.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: guides.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: guides.bottomAnchor)
        ])
    }
    
    private func setupTableView() {
        tableView.dataSource = dataSource
        let data = [HomeViewObject(name: "Nicolas"),HomeViewObject(name: "Carlos")]
        dataSource.set(data: data)
        tableView.reloadData()
    }
}
