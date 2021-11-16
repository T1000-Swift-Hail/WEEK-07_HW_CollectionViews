//
//  detailesImage.swift
//  Nature Gallery
//
//  Created by Anas Hamad on 11/04/1443 AH.
//

import UIKit

class NatureDetailViewController: UIViewController {
    @IBOutlet var detailImages: UIImageView!
    
    var nameimage : Nature?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailImages.image = UIImage(named: nameimage?.image ?? "")
       
    }

    
    
}
