//
//  heritage.swift
//  CollectionViews
//
//  Created by HIND12 on 11/04/1443 AH.
//

import UIKit

class HeritageVC: UIViewController {

    let methods = Methods()

    @IBOutlet weak var collectionViewArt: UICollectionView!
    
    var selectedImage: UIImage? = nil 
    
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
