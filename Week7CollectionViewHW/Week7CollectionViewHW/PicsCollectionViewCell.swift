//
//  PicsCollectionViewCell.swift
//  Week7CollectionViewHW
//
//  Created by mona aleid on 11/04/1443 AH.
//

import UIKit

class PicsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imgNature: UIImageView!
    

    func setupCell(photo: UIImage){
        imgNature.image = photo
        
    }
}

