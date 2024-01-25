//
//  MainImageSettings.swift
//  4.2 lesson
//
//  Created by adyl CEO on 25/01/2024.
//

import UIKit

class MainImageSettings: UIViewController {
    
    static func setupMainImage() -> UIImageView {
        let mainImg: UIImageView = {
            let img = UIImageView()
            img.image = UIImage(named: "boy")
            img.contentMode = .scaleAspectFill
            img.translatesAutoresizingMaskIntoConstraints = false
            return img
           }()
        
        return mainImg
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    
        
    }

}
