//
//  HomeVC.swift
//  A gallery of Photos
//
//  Created by موضي الحربي on 11/04/1443 AH.
//

import UIKit

class HomeVC: UIViewController  {

    
    @IBOutlet weak var collectionV: UICollectionView!
    
    
    let procedures = Procedure ()
    
       
    override func viewDidLoad() {
        super.viewDidLoad()

        setDelegate()
        
        // Do any additional setup after loading the view.
    }
}


