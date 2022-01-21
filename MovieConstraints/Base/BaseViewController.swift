//
//  BaseViewController.swift
//  MovieConstraints
//
//  Created by carlos pava on 21/01/22.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigationBarBackgrounColor()
        setLogoIcon()
        setNotificationBarButton()
    }
    
    private func setNavigationBarBackgrounColor() {
        navigationController?.navigationBar.barTintColor = .black
    }
    
    private func setLogoIcon() {
        let imageView = UIImageView(image: UIImage(resource: .logoicon))
        imageView.contentMode = .scaleAspectFill
        let buttonItem = UIBarButtonItem(customView: imageView)
        navigationItem.leftBarButtonItem = buttonItem
    }
    
    private func setNotificationBarButton() {
        let button = UIButton()
        button.addTarget(self, action: #selector(onTouchNotification), for: .touchUpInside)
        button.setImage(UIImage(resource: .notifiactionicon), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        let barButtonItem = UIBarButtonItem(customView: button)
        navigationItem.rightBarButtonItem = barButtonItem
    }
    
    @objc func onTouchNotification() {
        print("Notification")
    }
}
