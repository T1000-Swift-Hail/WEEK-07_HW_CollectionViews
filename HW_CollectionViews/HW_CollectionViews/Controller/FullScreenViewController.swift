//
//  FullScreenViewController.swift
//  HW_CollectionViews
//
//  Created by Asma on 16/11/2021.
//

import UIKit

class FullScreenViewController: UIViewController {

    
    @IBOutlet weak var fullScreenImageView: UIImageView!
    var imageFull : UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fullScreenImageView.image = imageFull
        
    }
}
