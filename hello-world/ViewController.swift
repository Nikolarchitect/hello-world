//
//  ViewController.swift
//  hello-world
//
//  Created by Nikolay Kiyko on 03.10.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    private let button: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 152/255, green: 103/255, blue: 197/255, alpha: 1)
        button.setTitle("Hello World!", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 20
        button.snp.makeConstraints { make in
            make.width.equalTo(150)
            make.height.equalTo(50)
        }
        
        return button
    }()
    
    @objc private func buttonTapped() {
        button.addAction(
            UIAction(
                handler: { [weak self] _ in
                    let alert = self?.createAlert() ?? UIAlertController()
                    self?.present(
                        alert,
                        animated: true,
                        completion: nil)
                }),
            for: .touchUpInside)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
        button.addTarget(
            self,
            action: #selector(buttonTapped),
            for: .touchUpInside
        )
    }

    private func setupViews() {
        view.backgroundColor = UIColor(red: 206/255, green: 245/255, blue: 244/255, alpha: 1)
        view.addSubview(button)
    }
    
    private func setupConstraints() {
        button.translatesAutoresizingMaskIntoConstraints = false

        button.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
    
    private func createAlert() -> UIAlertController {
        let alert = UIAlertController(
            title: "Hello World!",
            message: "Do you enjoy my first app?",
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(
            title: "Yes",
            style: .cancel,
            handler: nil
        ))
        return alert
    }
}

