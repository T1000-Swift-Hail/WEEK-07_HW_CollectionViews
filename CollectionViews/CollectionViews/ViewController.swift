//
//  ViewController.swift
//  CollectionViews
//
//  Created by AryafAlaqabali on 11/04/1443 AH.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
   

    
    
    @IBOutlet weak var collection: UICollectionView!
    
    var arrPhoto = [UIImage(named: "1")!,UIImage(named: "2")!,UIImage(named: "3")!,UIImage(named: "4")!,UIImage(named: "5")!,UIImage(named: "6")!,UIImage(named: "7")!,UIImage(named: "8")!,UIImage(named: "9")!,UIImage(named: "10")!,UIImage(named: "11")!,UIImage(named: "12")!,UIImage(named: "13")!,UIImage(named: "14")!,UIImage(named: "15")!]
  
    override func viewDidLoad() {
        super.viewDidLoad()
        collection.delegate = self
        collection.dataSource = self
           
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrPhoto.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ArtImg", for: indexPath) as? CollectionViewCell else {return UICollectionViewCell()}
        cell.photoArt.image = arrPhoto[indexPath.row]
    
    return cell
}

func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: (view.frame.size.width) / 2 , height: (view.frame.size.width) / 3 )
}

    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

//
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        performSegue(withIdentifier: "Art", sender: nil)
//    }
//       
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//    if segue.identifier == "Art"{
//
//        let gallery = arrPhoto [ self.collectionView.in
//                            [0].row ?? 0]
//            let destination = segue.destination as! PhotoViewController
//            destination.viewImage = gallery
//            }
//
//      }
}
