//
//  ImageView.swift
//  CollectionViews
//
//  Created by Majed Alshammari on 11/04/1443 AH.
//

import UIKit

class ImageView: UIViewController {

    @IBOutlet weak public var fullImageView: UIImageView!
    var selectedImage : UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()

        fullImageView.image = selectedImage
    }
    

   
}
