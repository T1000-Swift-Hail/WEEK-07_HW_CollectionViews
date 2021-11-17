//
//  HomeVC.swift
//  Fruits
//
//  Created by noyer altamimi on 12/04/1443 AH.
//

import UIKit



class HomeVC: UIViewController {

    @IBOutlet weak var viewImage : UIImageView!
    
    var setSelectImage = UIImage (named: "" )
 //   var setSelectImage : UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewImage.image = setSelectImage
        
    }
        
}
