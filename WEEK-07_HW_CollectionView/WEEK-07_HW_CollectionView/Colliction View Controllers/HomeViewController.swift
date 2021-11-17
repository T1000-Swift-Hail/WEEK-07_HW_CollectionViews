//
//  HomeViewController.swift
//  WEEK-07_HW_CollectionView
//
//  Created on 11/04/1443 AH.
//

import UIKit

class HomeViewController: UIViewController {
    

    @IBOutlet weak var PhotoCollictionView: UICollectionView!
    
    let method = MethodData()
    let arryphoto = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        setDelegate()
        // Do any additional setup after loading the view.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
