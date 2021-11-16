//
//  ViewController+CollectionView.swift
//  CollectionViews
//
//  Created by iAbdullah17 on 11/04/1443 AH.
//

import Foundation
import UIKit

extension  ViewController :
    UICollectionViewDataSource , UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell =
                collectionView
                .dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CollectionCell else {return
        UICollectionViewCell()}
        
        cell.wonderfullCity.image =
        
        photos[indexPath.row]
        
        cell.backgroundColor = .white
        
        return cell
        
    
    
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "fullPicture", sender: nil)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width / 3  , height: 120)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "fullPicture" {
            if let indexPaths = CollectionView.indexPathsForSelectedItems{
                let nextDestination = segue.destination as! ImageView
                nextDestination.selectedPicture = photos[indexPaths[0].row]
                CollectionView.deselectItem(at: indexPaths[0], animated: false)
                
            
        }
    }
}
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "fullPicture", sender: nil)
    }
    
    


 
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
