//
//  HomeVC+CollectionView.swift
//  CollectionViewLab
//
//  Created by MACBOOK on 11/04/1443 AH.
//

import Foundation
import UIKit

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout  {
    
    
    
    
    
    func setDelegate(){
    
    PhotoCollectionView.delegate = self
    PhotoCollectionView.dataSource = self
    
}
 
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoImege.dataMethod.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CollectionViewCell else {return UICollectionViewCell()}
        
        cell.CellPhoto.image = UIImage(named: photoImege.dataMethod[indexPath.row].rawValue)
        return cell
        
        
       
        
        
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch indexPath.row {
            
        case 0 : performSegue(withIdentifier:"cr1", sender: nil)
        case 1:performSegue(withIdentifier:"cr2", sender: nil)
        case 2:performSegue(withIdentifier:"cr3", sender: nil)
        case 3:performSegue(withIdentifier:"cr4", sender: nil)
        case 4:performSegue(withIdentifier:"cr5", sender: nil)
        case 5:performSegue(withIdentifier:"cr6", sender: nil)
        case 6:performSegue(withIdentifier:"cr7", sender: nil)
        case 7:performSegue(withIdentifier:"cr8", sender: nil)
        case 8:performSegue(withIdentifier:"cr9", sender: nil)
        case 9:performSegue(withIdentifier:"cr10", sender: nil)
        case 10:performSegue(withIdentifier:"cr11", sender: nil)
        case 11:performSegue(withIdentifier:"cr12", sender: nil)

            
        default:
            print("")
        }
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.width) / 2 , height: (view.frame.height) / 8)
        
       
    }
    
     
    
    
}
