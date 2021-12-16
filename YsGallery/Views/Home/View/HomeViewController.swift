//
//  HomeViewController.swift
//  YsGallery
//
//  Created by yoon on 2021/12/16.
//

import UIKit

class HomeViewController: UIViewController {

    var coordinator: HomeCoordinator!

    private let button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("touch", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(didTapIamge), for: .touchUpInside)
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        print("test")
        view.backgroundColor = .white
        title = "Home"
        setupViews()
        
    }
    
    func setupViews(){
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.heightAnchor.constraint(equalToConstant: 100)
        ])
    }

    @objc func didTapIamge(){
        coordinator.didTapImageDetail()
    }
}
