//
//  RosesViewController.swift
//  CollectionViews
//
//  Created by Seham الشطنان on 11/04/1443 AH.
//

import UIKit

class RosesVC: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
        
    let method = Methods()
    
    var selectedImage: UIImage? = nil
    
        override func viewDidLoad() {
            super.viewDidLoad()
            setDelegate()
            // Do any additional setup after loading the view.
        }

}
