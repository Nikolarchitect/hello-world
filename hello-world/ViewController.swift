//
//  ViewController.swift
//  hello-world
//
//  Created by Nikolay Kiyko on 03.10.2022.
//

import UIKit

class ViewController: UIViewController {

    private let button: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 152/255, green: 103/255, blue: 197/255, alpha: 1)
        button.setTitle("Hello World!", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 5
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
    }

    private func setupViews() {
        view.backgroundColor = UIColor(red: 206/255, green: 245/255, blue: 244/255, alpha: 1)
        view.addSubview(button)
    }
    
    private func setupConstraints() {
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
    }
}

