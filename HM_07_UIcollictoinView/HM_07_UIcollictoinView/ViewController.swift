//
//  ViewController.swift
//  HM_07_UIcollictoinView
//
//  Created by Ahmed Alenazi on 12/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var images : UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        imageView.image = images
        // Do any additional setup after loading the view.
    }


}

