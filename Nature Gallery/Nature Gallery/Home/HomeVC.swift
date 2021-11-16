//
//  HomeVC.swift
//  Nature Gallery
//
//  Created by Anas Hamad on 11/04/1443 AH.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet var collectionViewImage: UICollectionView!
   
    var selectedImage = UIImage(named: "")
    var images : [Nature] = [Nature(image: "image1"),Nature(image: "image2"),Nature(image: "image3"),Nature(image: "image4"),Nature(image: "image5"),Nature(image: "image6"),Nature(image: "image1"),Nature(image: "image2"),Nature(image: "image3"),Nature(image: "image4"),Nature(image: "image5"),Nature(image: "image6"),Nature(image: "image1"),Nature(image: "image2"),Nature(image: "image3"),Nature(image: "image4"),Nature(image: "image5"),Nature(image: "image6")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDelegate()
        }
   

        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


