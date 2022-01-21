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
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setTableViewConstraints()
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
}
