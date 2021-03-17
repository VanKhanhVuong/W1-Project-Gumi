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
    static let identifier = "CustomCollectionViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    public func bindData(with fruitName:String, image: UIImage){
        labelFruitName.text = fruitName
        imageViewFruit.image = image
    }
    static func nib() ->UINib{
        return UINib(nibName: "CustomCollectionViewCell", bundle: nil)
    }
}
