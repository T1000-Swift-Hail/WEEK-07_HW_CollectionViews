//
//  HomeVC+CollectionView.swift
//  CollectionViews
//
//  Created by Mohammed Abdullah on 11/04/1443 AH.
//

import Foundation
import UIKit


extension HomeVC : UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout
 {
    
    func setDelegate() {
        
        PhotoCollictionView.dataSource = self
        PhotoCollictionView.delegate = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return method.methodsData.count
   }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CollectionViewCell else {return UICollectionViewCell()}
            
            cell.PhotoGallrey.image = UIImage(named: method.methodsData[indexPath.row].rawValue)
            
            return cell
    
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        switch indexPath.row {
        case 0:
            performSegue(withIdentifier: "Albrek", sender: nil)
        
        default:
            print("")
        }
    

}
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.width) / 2, height: (view.frame.height) / 6)
    }
    
}
