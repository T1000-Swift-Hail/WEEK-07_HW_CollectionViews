//
//  ViewController.swift
//  A gallery of Photos
//
//  Created by موضي الحربي on 11/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fullImeg: UIImageView!
   
    var fullImegName : String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        fullImeg.image = UIImage(named:fullImegName)
    
    }


}

