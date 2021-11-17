//
//  CollectionAndHomeViewController.swift
//  WEEK-07_HW_CollectionView
//
//  Created by on 11/04/1443 AH.
//

import Foundation
import UIKit

extension HomeViewController : UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    
    func setDelegate() {
        
        PhotoCollictionView.dataSource = self
        PhotoCollictionView.delegate = self

    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.dataPhotos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CollectionViewCell else {return UICollectionViewCell()}

        cell.PhotoGalary.image = UIImage(named: photos.dataPhotos[indexPath.row].rawValue)
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let photo = photos.dataPhotos[indexPath.row].rawValue
        imege = UIImage(named: photo )
            performSegue(withIdentifier: "toShowImege", sender: nil)
            
    }

        
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.width) / 1, height: (view.frame.height) / 6)
    }
  
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toShowImege"{
            let SecondImege = segue.destination as!SecondViewController
            SecondImege.fullScreenImage = imege
            
    }
}

}

