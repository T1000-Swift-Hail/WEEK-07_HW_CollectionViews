//
//  SecondPageVC.swift
//  FallCollection
//
//  Created by Hind Alharbi on 11/16/21.
//

import UIKit

class SecondPageVC: UIViewController  {
    
    @IBOutlet weak var secondImage: UIImageView!
    var imageV : UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()
        secondImage.image = imageV
    }

}
