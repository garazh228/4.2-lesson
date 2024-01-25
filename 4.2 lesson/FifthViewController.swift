//
//  FifthViewController.swift
//  4.2 lesson
//
//  Created by adyl CEO on 25/01/2024.
//

import UIKit

class FifthViewController: UIViewController {
    
    private var fifthPageImg: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "passed")
        img.contentMode = .scaleAspectFill
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupSecondPageImg()
        
        GradientSET.setupGradientBackground(for: view)
        
        
    }
    
    private func setupSecondPageImg() {
        view.addSubview(fifthPageImg)
        
        NSLayoutConstraint.activate([
            fifthPageImg.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            fifthPageImg.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }

}
