//
//  SplashViewController.swift
//  YsGallery
//
//  Created by yoon on 2021/12/16.
//

import UIKit

class SplashViewController: UIViewController {

    private let indicator: UIActivityIndicatorView = {
        let indicatorView = UIActivityIndicatorView()
        indicatorView.translatesAutoresizingMaskIntoConstraints = false
        return indicatorView
    }()

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 35)
        label.text = "UnSpalsh"
        
        return label
    }()

    var coordinator: SplashCoordinator!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()

    }

    func setupViews() {
        view.backgroundColor = .systemYellow
        view.addSubview(indicator)
        view.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            indicator.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            indicator.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])

        indicator.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) { [weak self] in
            self?.indicator.stopAnimating()
            self?.coordinator.moveToMain(with: nil)
        }
    }



}
