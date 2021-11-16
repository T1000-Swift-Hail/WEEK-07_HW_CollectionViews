//
//  HomeVC+CollectionView.swift
//  HW_CollectionViews
//
//  Created by Asma on 16/11/2021.
//

import Foundation
import UIKit


extension HomeVC: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func setDeleget(){
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoGallery.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let items = collectionView.dequeueReusableCell(withReuseIdentifier: "items", for: indexPath) as? CollectionCell  else {return UICollectionViewCell()}
        items.imageGallery.image = photoGallery[indexPath.row]
        return items
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.width) - 12 , height: (view.frame.height) / 6)
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toPhoto", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toPhoto" {
            
            let selectedPhoto = photoGallery[self.collectionView.indexPathsForSelectedItems?[0].row ?? 0]
            
            let destination = segue.destination as! FullScreenViewController
            destination.imageFull = selectedPhoto
        }
        
        
    }
    
    
}
