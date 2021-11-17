//
//  ExtintionHome.swift
//  HM_07_UIcollictoinView
//
//  Created by Abdoalaziz Alshammari on 12/04/1443 AH.
//


import Foundation
import UIKit

extension HomeViewController : UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
  
    
    func setDelegate() {
        
        PhotoView.dataSource = self
        PhotoView.delegate = self

    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photo.pictureData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CollectionViewCell else {return UICollectionViewCell()}
        let imageName = photo.pictureData[indexPath.row].rawValue
        cell.PhotoGalary.image = UIImage(named: imageName)
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            
            selectedImege = UIImage(named:  photo.pictureData[indexPath.row].rawValue)
            
            performSegue(withIdentifier: "Imegecell", sender: nil)


    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.width) - 12 , height: (view.frame.height))
    }
    
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "Imegecell"{
            
        let toViewImage = segue.destination as! ViewController
            toViewImage.images = selectedImege
    }

}


}
