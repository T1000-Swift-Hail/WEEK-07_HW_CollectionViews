//
//  PhotoViewController.swift
//  CollectionViews
//
//  Created by AryafAlaqabali on 11/04/1443 AH.
//

import UIKit

class PhotoViewController: UIViewController {

    @IBOutlet weak var photoArt: UIImageView!
    var viewImage :UIImage!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoArt.image = viewImage
       
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
