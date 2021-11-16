//
//  ImageViewController.swift
//  HW_CollectionViews
//
//  Created by Njoud Alrshidi on 11/04/1443 AH.
//

import UIKit

class ImageViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    var viewImage :UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = viewImage

    
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
