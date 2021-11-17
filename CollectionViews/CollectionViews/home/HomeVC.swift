//
//  HomeVC.swift
//  CollectionViews
//
//  Created by Mohammed Abdullah on 11/04/1443 AH.
//

import UIKit

class HomeVC: UIViewController {
    
    
    @IBOutlet weak var PhotoCollictionView: UICollectionView!
    
    
    
    let method = Methods()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDelegate()
       
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! Decoder
        
    }


}
