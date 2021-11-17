//
//  ViewController+CollectionView.swift
//  CollectionView
//
//  Created by طلال عبيدالله دعيع القلادي on 16/11/2021.
//

import Foundation
import UIKit

extension ViewController : UICollectionViewDataSource ,
UICollectionViewDelegateFlowLayout, UICollectionViewDelegate {
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
        let imageName =  picture.pictureData[indexPath.row].rawValue
        cell.ImagPhone.image = UIImage(named: imageName)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       switch indexPath.row {
        case 0:
           selectedImage = UIImage(named: picture.pictureData[indexPath.row].rawValue)
           performSegue(withIdentifier: "toPicture", sender: nil)
    default:
          print("")
        }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.width) - 12 , height: (view.frame.height))
    }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toPicture" {
            
                let toDestnation = segue.destination as!
                ImageView
                toDestnation.seccondPage = selectedImage
                
            
        }
    }
    
}
