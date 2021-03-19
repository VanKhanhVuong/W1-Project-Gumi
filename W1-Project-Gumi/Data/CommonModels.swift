//
//  CommonModels.swift
//  W1-Project-Gumi
//
//  Created by Muoi Pham on 3/17/21.
//  Copyright © 2021 Khanh Vuong. All rights reserved.
//
import UIKit
import Foundation
    
struct Fruit {
    let image : UIImage
    let name: String
    let quality : String
    let price : Float
    let origin: String
    let backgrourd: UIColor
        
    init(image :UIImage, name: String, quality:String, price:Float, origin:String, backgrourd:UIColor) {
        self.image = image;
        self.name = name;
        self.quality = quality;
        self.price = price;
        self.origin = origin
        self.backgrourd = backgrourd
    }
}

