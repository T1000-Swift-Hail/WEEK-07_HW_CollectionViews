//
//  HomeVC+Extentions.swift
//  Nature Gallery
//
//  Created by Anas Hamad on 11/04/1443 AH.
//

import Foundation
import UIKit





extension HomeVC : UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,UICollectionViewDelegate {
    
    
    func setDelegate() {
        collectionViewImage.delegate = self
        collectionViewImage.dataSource = self
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        images.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? imageCollectionsCell else {return UICollectionViewCell()}
        let imago = images[indexPath.row]
        cell.ImageCollection.image = UIImage(named: imago.image)
        
        
        return cell
    }
    
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (100), height: (view.frame.size.height) / 9)
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        
        performSegue(withIdentifier: "ShowDetail", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ShowDetail" {
            if let indexPaths = collectionViewImage.indexPathsForSelectedItems{
                let destinationVC = segue.destination as! NatureDetailViewController
                destinationVC.nameimage = images[indexPaths[0].row]
                collectionViewImage.deselectItem(at: indexPaths[0], animated: false)
            }
        }
    
    }
    
}





