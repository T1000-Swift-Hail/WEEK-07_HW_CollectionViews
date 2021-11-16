//
//  PhotoViewController.swift
//  CollectionViews
//
//  Created by Asma Rasheed on 11/04/1443 AH.
//

import UIKit

class PhotoViewController: UIViewController {

    @IBOutlet weak var photo: UIImageView!
    var  secondimg : UIImage!

    override func viewDidLoad() {
        super.viewDidLoad()
        photo.image = secondimg

    }
    

  

}
