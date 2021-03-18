//
//  DetailsViewController.swift
//  W1-Project-Gumi
//
//  Created by Muoi Pham on 3/16/21.
//  Copyright © 2021 Khanh Vuong. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var fruitImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var qualityLabel: UILabel!
    @IBOutlet weak var buyButton: UIButton!

    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    var fruit: Fruit?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let data = fruit else { return }
        fruitImageView.image = data.image
        nameLabel.text = data.name
        qualityLabel.text = data.quality
        buyButton.setTitle("\(data.price)", for: .normal)
    }
}
