//
//  UIView+Extension.swift
//  W1-Project-Gumi
//
//  Created by Muoi Pham on 3/17/21.
//  Copyright © 2021 Khanh Vuong. All rights reserved.
//

import UIKit

extension UIView {
    func customCornerRadius()  {
        self.clipsToBounds = true
        self.layer.cornerRadius = 10
        self.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMinXMinYCorner]
    }
}

