//
//  ImageView.swift
//  CollectionView
//
//  Created by طلال عبيدالله دعيع القلادي on 17/11/2021.
//

import UIKit

class ImageView: UIViewController {

    @IBOutlet weak var Image1: UIImageView!
    var seccondPage : UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Image1.image = seccondPage

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
