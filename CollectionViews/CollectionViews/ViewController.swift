//
//  ViewController.swift
//  CollectionViews
//
//  Created by iAbdullah17 on 11/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    let photos = [UIImage(named: "japan"), UIImage(named: "london"), UIImage(named: "paris"), UIImage(named: "riyadh"), UIImage(named: "Rome"), UIImage(named: "spain"), UIImage(named: "taj"), UIImage(named: "ZELAMS"), UIImage(named: "zeorekh")]

    @IBOutlet weak var CollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        CollectionView.delegate = self
        CollectionView.dataSource = self
        // Do any additional setup after loading the view.
    }


}

