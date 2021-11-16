//
//  singleViewPhotoViewController.swift
//  HW_CollectionViews
//
//  Created by Dalal AlSaidi on 11/04/1443 AH.
//

import UIKit

class singleViewPhoto: UIViewController {

    @IBOutlet weak var previewOfPhoto: UIImageView!
//    var singlePhoto : galleryPhotos
    var setSelectedImage = UIImage(named: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        previewOfPhoto.image = setSelectedImage
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
