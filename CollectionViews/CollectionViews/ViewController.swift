//
//  ViewController.swift
//  CollectionViews
//
//  Created by Seham الشطنان on 11/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var fullimageName: UIImageView!
    
    
    
    var selectedImage: UIImage? = nil
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        fullimageName.image = selectedImage
        
        
        
    }


}

