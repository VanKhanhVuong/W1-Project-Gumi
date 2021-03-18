//
//  CustomCollectionViewCell.swift
//  W1-Project-Gumi
//
//  Created by Muoi Pham on 3/17/21.
//  Copyright © 2021 Khanh Vuong. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var labelFruitName: UILabel!
    @IBOutlet weak var imageViewFruit: UIImageView!
    
    override func awakeFromNib() {
        self.imageViewFruit.layer.cornerRadius = self.frame.size.height / 7
        self.imageViewFruit.clipsToBounds = true
        super.awakeFromNib()
    }
    public func bindData(with data: Fruit){
        self.labelFruitName.text = data.name
        self.imageViewFruit.image = data.image
    }

    static var identifier: String {
        return String(describing: self)
    }
    
    static var nib: UINib{
        return UINib(nibName: identifier, bundle: nil)
    }
}
