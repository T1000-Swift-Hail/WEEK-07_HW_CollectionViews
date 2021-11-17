//
//  ViewController.swift
//  WEEK-07_HW_CollectionViews
//
//  Created by mac on 11/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var CollectionView: UICollectionView!
    let picture = Picture()
    
    var selectedImage : UIImage!
    
    var image = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        setDelegate()
       
        
    }


}

