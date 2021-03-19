//
//  UIButton+Extention.swift
//  W1-Project-Gumi
//
//  Created by Muoi Pham on 3/19/21.
//  Copyright © 2021 Khanh Vuong. All rights reserved.
//

import UIKit

extension UIButton {
    func customButtonCornerRadius()  {
        self.clipsToBounds = true
        self.layer.cornerRadius = 12
    }
}
