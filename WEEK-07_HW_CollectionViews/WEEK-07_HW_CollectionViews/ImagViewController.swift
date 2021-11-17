//
//  ImagViewController.swift
//  WEEK-07_HW_CollectionViews
//
//  Created by mac on 11/04/1443 AH.
//

import UIKit

class ImagViewController: UIViewController {
    @IBOutlet weak var iamgVC: UIImageView!
     
    var imageee : UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        iamgVC.image = imageee
    }
    

}
