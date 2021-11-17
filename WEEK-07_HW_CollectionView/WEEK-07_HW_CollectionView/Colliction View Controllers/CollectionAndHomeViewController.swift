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
        return method.dataMethods.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CollectionViewCell else {return UICollectionViewCell()}

        cell.PhotoGalary.image = UIImage(named: method.dataMethods[indexPath.row].rawValue)
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

        switch indexPath.row {
            
        case 0:
            let alert = UIAlertController(title: "Hi", message: nil, preferredStyle: .actionSheet)
            alert.addAction(UIAlertAction(title: "Ok", style: .destructive, handler: nil))
            present(alert, animated: true, completion: nil)
            performSegue(withIdentifier: "toShowImege", sender: nil)
        default:
            print("")
        }
        
    }
 
        
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.width) / 2 , height: (view.frame.height) / 6)
    }

}

