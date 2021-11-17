//
//  ViewController.swift
//  WEEK-07_HW_CollectionViews
//
//  Created by Hesah Alqhtani on 16/11/2021.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
   
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var arrayImage = [UIImage(named: "image1")!,UIImage(named: "image2")!, UIImage (named: "image3")!,UIImage(named: "image4")!,UIImage(named: "image5")!, UIImage(named: "image6")!,UIImage (named: "image7")!,UIImage(named: "image8")!,UIImage(named: "image9")!,UIImage (named: "image10")!,UIImage(named: "image11")!,UIImage (named: "image12")!,]
                
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CollectionCell else {return
            UICollectionViewCell()}
        cell.imageArt.image = arrayImage[indexPath.row]
        return cell
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: (view.frame.size.width) / 2 , height: (view.frame.size.height) / 6 )
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "indetifier", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "indetifier" {
            
            let arts = arrayImage[ self.collectionView.indexPathsForSelectedItems?[0].row ?? 0]
            let origin = segue.destination as! ArtViewController
            origin.artImage = arts

        }
    }}
