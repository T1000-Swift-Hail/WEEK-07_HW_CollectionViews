//
//  ArtViewController.swift
//  WEEK-07_HW_CollectionViews
//
//  Created by Hesah Alqhtani on 17/11/2021.
//

import UIKit

class ArtViewController: UIViewController{

    var artImage : UIImage!
    @IBOutlet weak var imageArt: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageArt.image = artImage
}
}
