//
//  ViewController.swift
//  MovieConstraints
//
//  Created by NECSOFT on 20/01/22.
//

import UIKit

final class HomeView: UIView {
    
    private lazy var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black
        return view
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "NAMAVA"
        label.textColor = .blue
        return label
    }()
    
    private lazy var notificationImagenView: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .white
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        addSubview(containerView)
        setcontainerViewConstrainst()
        settitleLabelConstrainst()
        setnotificationsImageViewConstraints()
    }
    
    private func setcontainerViewConstrainst(){
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: topAnchor, constant: 80),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            containerView.heightAnchor.constraint(equalToConstant: 250)
            
        ])
    }
    
    private func settitleLabelConstrainst() {
        containerView.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 50),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            //titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            titleLabel.heightAnchor.constraint(equalToConstant: 25)
        ])
    }
    
    private func setnotificationsImageViewConstraints() {
        containerView.addSubview(notificationImagenView)
        NSLayoutConstraint.activate([
            notificationImagenView.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            notificationImagenView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            //titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            notificationImagenView.heightAnchor.constraint(equalToConstant: 30),
            notificationImagenView.widthAnchor.constraint(equalToConstant: 30)
        ])
    }
}


class ViewController: UIViewController {
    
    override func loadView() {
        view = HomeView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
    }
    
    


}

