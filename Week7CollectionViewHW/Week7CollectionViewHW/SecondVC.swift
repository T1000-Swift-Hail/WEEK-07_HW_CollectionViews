//
//  SecondVC.swift
//  Week7CollectionViewHW
//
//  Created by mona aleid on 12/04/1443 AH.
//

import UIKit

class SecondVC: UIViewController {

    
    @IBOutlet weak var natureFullView: UIImageView!
    var fullimg : UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        natureFullView.image = fullimg
    
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
