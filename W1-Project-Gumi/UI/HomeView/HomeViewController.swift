//
//  HomeViewController.swift
//  W1-Project-Gumi
//
//  Created by Muoi Pham on 3/16/21.
//  Copyright © 2021 Khanh Vuong. All rights reserved.
//

import UIKit
import Foundation

class HomeViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let data = [Fruit(image: #imageLiteral(resourceName: "berry"), name: "Strawberry", quality: "Best Quality", price: 4),
                Fruit(image: #imageLiteral(resourceName: "organge"), name: "Organge", quality: "High Quality", price: 5),
                 Fruit(image: #imageLiteral(resourceName: "grapes"), name: "Grapes", quality: "High Quality", price: 5),
                  Fruit(image: #imageLiteral(resourceName: "lemon"), name: "Lemon", quality: "Best Quality", price: 6)]

    @IBOutlet weak var detailsView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailsView.customCornerRadius()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(CustomCollectionViewCell.nib(), forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
    }
}

//MARK: - Extension
extension HomeViewController: UICollectionViewDelegate{
    
}
extension HomeViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as! CustomCollectionViewCell
        cell.bindData(with: data[indexPath.row].name, image:data[indexPath.row].image )
        return cell
    }
    
}


