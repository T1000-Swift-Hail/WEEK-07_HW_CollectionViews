//
//  ViewController.swift
//  HW_CollectionViews
//
//  Created by Dalal AlSaidi on 11/04/1443 AH.
//

import UIKit

class GalleryVC : UIViewController {
    
    @IBOutlet weak var collectionViewGallery: UICollectionView!
    
    var selectedImage = UIImage(named: "")
    var galleryPhotos:[UIImage] = [
        UIImage(named: "A")!,
        UIImage(named: "B")!,
        UIImage(named: "C")!,
        UIImage(named: "D")!,
        UIImage(named: "F")!,
        UIImage(named: "G")!,
        UIImage(named: "H")!,
        UIImage(named: "I")!,
        UIImage(named: "J")!,
        UIImage(named: "K")!
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDelegate()
        
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? singleViewPhoto else {return}
        vc.setSelectedImage = selectedImage
    }
    
}

extension GalleryVC : UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    func setDelegate() {
        collectionViewGallery.dataSource = self
        collectionViewGallery.delegate = self
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return galleryPhotos.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CollectionViewCell else {return UICollectionViewCell()}
        
        cell.imageOfGallery.image = galleryPhotos[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        selectedImage = galleryPhotos[indexPath.row]
        performSegue(withIdentifier: "goTosingleViewPhoto", sender: nil)
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.width) / 2 - 20, height: (view.frame.height) / 3 )
        
        
        //        return CGSize(width: (self.view.frame.width) * 0.49 , height: (self.view.frame.height) * 0.4)
        
    }
   
    
}

