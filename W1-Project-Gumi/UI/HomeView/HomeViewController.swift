//
//  HomeViewController.swift
//  W1-Project-Gumi
//
//  Created by Muoi Pham on 3/16/21.
//  Copyright © 2021 Khanh Vuong. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet var detailsView: [UIView]!
    
    let data = [Fruit(image: #imageLiteral(resourceName: "berry"), name: "Strawberry", quality: "Best Quality", price: 4, origin: "Spain", backgrourd: .red),
                Fruit(image: #imageLiteral(resourceName: "organge"), name: "Organge", quality: "High Quality", price: 5, origin: "Viet Nam", backgrourd: .orange),
                Fruit(image: #imageLiteral(resourceName: "grapes"), name: "Grapes", quality: "High Quality", price: 5, origin: "Korea", backgrourd: .purple),
                Fruit(image: #imageLiteral(resourceName: "lemon"), name: "Lemon", quality: "Best Quality", price: 6, origin: "China", backgrourd: .yellow)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailsView.forEach { view in
            view.customCornerRadius()
        }
        registerCollectionView()
    }
    func registerCollectionView(){
        collectionView.register(CustomCollectionViewCell.nib, forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        collectionView.collectionViewLayout = layout
    }
}

//MARK: - Extension
extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as! CustomCollectionViewCell
        cell.bindData(with: data[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let mainStoryboard = UIStoryboard(name: "Details", bundle: .main)
        guard let detailsViewController = mainStoryboard.instantiateViewController(withIdentifier: "DetailsViewController") as? DetailsViewController else { return }
        detailsViewController.fruit = data[indexPath.item]
        detailsViewController.modalPresentationStyle = .fullScreen
        present(detailsViewController, animated: true, completion: nil)
    }
    
}

extension HomeViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width/3, height: collectionView.frame.height)
    }
}


