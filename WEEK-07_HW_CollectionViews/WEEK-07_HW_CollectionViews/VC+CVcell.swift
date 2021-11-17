//
//  VC+CVcell.swift
//  WEEK-07_HW_CollectionViews
//
//  Created by mac on 11/04/1443 AH.
//


import Foundation
import UIKit

extension ViewController : UICollectionViewDataSource ,
                           UICollectionViewDelegateFlowLayout   {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return picture.pictureData.count
    }
    func setDelegate() {
        CollectionView.delegate = self
        CollectionView.dataSource = self
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell =
                collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as?
                CollectionViewCell else {return UICollectionViewCell()}
        let imageName = picture.pictureData[indexPath.row].rawValue
        cell.ImagPhone.image = UIImage(named: imageName)
        cell.backgroundColor = .yellow
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width * 0.493 , height: self.view.frame.width * 0.45)
    }
    // override func size(forChildContentContainer container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize {
    //
    // }
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        print("hiii")
        selectedImage = UIImage(named: picture.pictureData[indexPath.row].rawValue)
        performSegue(withIdentifier: "second", sender: nil)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout , minimumLineSpacingForSectionAt section: Int)-> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout , minimumInteritemSpacingForSectionAt section: Int)-> CGFloat {
        return 0
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "second" {
            let vc = segue.destination as! ImagViewController
            vc.imageee = selectedImage
        }
    }
    
    
}
