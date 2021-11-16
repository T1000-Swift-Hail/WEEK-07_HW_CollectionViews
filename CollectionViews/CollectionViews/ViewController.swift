//
//  ViewController.swift
//  CollectionViews
//
//  Created by Asma Rasheed on 11/04/1443 AH.
//

import UIKit

class ViewController: UIViewController ,UICollectionViewDelegate , UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var wallpaper = [UIImage (named : "img2")! ,UIImage (named : "img3")! ,UIImage (named : "img4")! ,UIImage (named : "img5")! ,UIImage (named : "img6")! ,UIImage (named : "img7")! ,UIImage (named : "img8")!]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return wallpaper.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "picCell", for: indexPath) as? CollectionViewCell else {return UICollectionViewCell()}
        
        cell.imgWallpaper.image = wallpaper[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.width) - 30, height: (view.frame.height) / 3)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "wallpaperimage", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "wallpaperimage" {
            let imgwall = wallpaper[self.collectionView.indexPathsForSelectedItems? [0].row ?? 0]
            let origin = segue.destination as! PhotoViewController
            origin.secondimg = imgwall
            
    
      
 
    }
    }

}
