//
//  SecondViewController.swift
//  WEEK-07_HW_CollectionView
//
//  Created by Ahmed Alenazi on 12/04/1443 AH.
//

import UIKit

class SecondViewController: UIViewController {
   
    @IBOutlet weak var imegView: UIImageView!
    
    var fullScreenImage : UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        imegView.image = fullScreenImage
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
