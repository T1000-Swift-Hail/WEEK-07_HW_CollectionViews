//
//  RosesVC.swift
//  CollectionViews
//
//  Created by Seham الشطنان on 11/04/1443 AH.
//

import Foundation
import UIKit

extension RosesVC : UICollectionViewDataSource
,UICollectionViewDelegate
, UICollectionViewDelegateFlowLayout {
    
    
    func setDelegate() {
        
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection
                        section: Int) -> Int {
        return method.mehodsData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RosesCell", for: indexPath) as! CollectionCell
        
        let imageName = method.mehodsData[indexPath.row].rawValue
        
        cell.imageView.image = UIImage(named: imageName)
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.width) / 2 , height: (view.frame.height) / 3)
                      }


    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("selecting item")
        performSegue(withIdentifier: "toDetals", sender: nil)
    }


}
