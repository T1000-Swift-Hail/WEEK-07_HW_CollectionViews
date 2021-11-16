//
//  PhotoCollectionViewCell.swift
//  CollectionViews
//
//  Created by Monafh on 11/04/1443 AH.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var photoView: UIImageView!
    
    
    func setupCell(photo : UIImage) {
        photoView.image = photo
        
    }
}
