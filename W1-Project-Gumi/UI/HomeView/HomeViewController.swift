//
//  HomeViewController.swift
//  W1-Project-Gumi
//
//  Created by Muoi Pham on 3/16/21.
//  Copyright © 2021 Khanh Vuong. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var detailsView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailsView.roundCorners(corners: [.topLeft, .bottomLeft], radius: 20)
        
    }

}

//MARK: - Extension
extension UIView {
   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}
