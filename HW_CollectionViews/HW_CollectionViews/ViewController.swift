//
//  ViewController.swift
//  HW_CollectionViews
//
//  Created by Munira abdullah on 11/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var fullScreenImage: UIImageView!
    
    
    var fullImageName : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        fullScreenImage.image = UIImage(named:fullImageName)
    }


}

