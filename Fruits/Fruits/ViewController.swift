//
//  ViewController.swift
//  Fruits
//
//  Created by noyer altamimi on 12/04/1443 AH.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var selectImage = UIImage(named: "" )
    let photoGallery = [UIImage(named: "Image-1")! ,UIImage(named: "Image-2")! ,UIImage(named: "Image-3")! ,UIImage(named: "Image-4")! ,UIImage(named: "Image-5")! ,UIImage(named: "Image-6")! ,UIImage(named: "Image-7")! ,UIImage(named: "Image-8")! ,UIImage(named: "Image-9")! ,UIImage(named: "Image-10")! ,UIImage(named: "Image-11")! ,UIImage(named: "Image")!]


    
    var imageFull : UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }
 
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoGallery.count

    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoCell" , for: indexPath ) as? CollectionViewCell else { return
            UICollectionViewCell( ) }
        cell.photo.image = photoGallery[indexPath.row]
        return cell
    }
   
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectImage = photoGallery[indexPath.row]
        performSegue(withIdentifier: "move", sender: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize (width: (view.frame.width) / 1 , height: (view.frame.height) / 2 )
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        //    if segue.identifier == "toPhoto" {
 
                guard let viewimage = segue.destination as? HomeVC else { return }
        viewimage.setSelectImage = selectImage
                
    }
    

    }

