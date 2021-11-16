//
//  HomeVC+CollectionView.swift
//  A gallery of Photos
//
//  Created by موضي الحربي on 11/04/1443 AH.
//

import Foundation
import UIKit


extension HomeVC:UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
     
    func setDelegate() {
        collectionV.dataSource = self
        collectionV.delegate = self
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return procedures.ProcedureData.count
    }
   
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell =
                collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CollectionCell  else { return UICollectionViewCell()}
      
        
        cell.imageView.image=UIImage(named: procedures.ProcedureData[indexPath.row].rawValue)
        
        return cell
    }
        
        
    //func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.width) - 12, height: (view.frame.height) / 3)
    }
        

    
}


    
    
    













