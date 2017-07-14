//
//  UIViewController+CustomizationNav.swift
//  StarWarsTest
//
//  Created by Emmanuel on 13/07/17.
//  Copyright © 2017 Emmanuel. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    func addLogoToNavigationBar () {
        
        let logo = UIImage(named: "star-wars-logo")
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 50, height: 35))
        imageView.contentMode = .scaleAspectFit
        imageView.image = logo
        self.navigationItem.titleView = imageView
        
    }
}
