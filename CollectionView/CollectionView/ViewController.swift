//
//  ViewController.swift
//  CollectionView
//
//  Created by طلال عبيدالله دعيع القلادي on 16/11/2021.
//

import UIKit

class ViewController:UIViewController {


    @IBOutlet weak var CollectionView: UICollectionView!
    
    let picture = Picture()
    
    var selectedImage : UIImage? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDelegate()
        
        // Do any additional setup after loading the view.
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let vc = segue.destination as! //
//        vc.
//    }
}

