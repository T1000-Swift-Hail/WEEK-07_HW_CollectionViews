//
//  HomeVC+CollectionView.swift
//  Fruits
//
//  Created by noyer altamimi on 12/04/1443 AH.
//

import Foundation
import UIKit


extension HomeVC: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func setDeleget(){
      
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoGallery.count

    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

            if segue.identifier == "toPhoto" {

              


        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
                 return CGSize(width: (view.frame.width) - 12 , height: (view.frame.height) / 6)
             }



             func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
                 performSegue(withIdentifier: "toPhoto", sender: nil)
             }


    }

}
