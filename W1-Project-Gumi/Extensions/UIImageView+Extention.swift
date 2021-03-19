//
//  UIImageView+Extention.swift
//  W1-Project-Gumi
//
//  Created by Muoi Pham on 3/19/21.
//  Copyright © 2021 Khanh Vuong. All rights reserved.
//

import UIKit

extension UIImageView {

    func customImageCornerRadius()  {
        self.layer.cornerRadius = self.frame.size.height / 7
        self.clipsToBounds = true
    }

}
