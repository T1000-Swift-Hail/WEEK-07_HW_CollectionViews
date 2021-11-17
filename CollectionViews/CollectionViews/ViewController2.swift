//
//  ViewController.swift
//  CollectionViews
//
//  Created by HIND12 on 11/04/1443 AH.
//

import UIKit

class ViewController2 : UIViewController {

    @IBOutlet weak var fullImage: UIImageView!
    
    var selectedImage: UIImage? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        fullImage.image = selectedImage
        
    }


}

