//
//  PhotoGalleryCollectionVC.swift
//  CollectionViews
//
//  Created by Monafh on 11/04/1443 AH.
//

import UIKit


class PhotoGalleryCollectionVC: UIViewController , UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    
    @IBOutlet weak var photoCollectionView: UICollectionView!
    
    var selectImage = UIImage(named: "")
//    var photoArr = [Photo]()
    let photoArr = [UIImage(named: "A"),UIImage(named: "B"),UIImage(named: "C"),UIImage(named: "D"),UIImage(named: "E"),UIImage(named: "F"),UIImage(named: "G"),UIImage(named: "H"),UIImage(named: "I")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoCollectionView.dataSource = self
        photoCollectionView.delegate = self
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        photoArr.count
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as! PhotoCollectionViewCell
        cell.photoView.image = photoArr[indexPath.row]
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.width) / 3, height: (view.frame.height) / 3.6)
        
//        (self.view.frame.width * 0.3)
//        (width: photoCollectionView.frame.width, height: photoCollectionView.frame.height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let viewImage = segue.destination as? ViewController else {return}
        viewImage.setSelectImage = selectImage
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        selectImage = photoArr[indexPath.row]
        performSegue(withIdentifier: "viewImage", sender: nil)
      
    }
}

